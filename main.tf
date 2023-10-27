locals {
  # Get the zone name from the apex name
  apex_record = [{
      name    = var.zone_apex_name
      type    = "A"
      ttl     = 300
      records = [aws_lightsail_static_ip.lightsail.ip_address]
    }]
  zone_records = concat(local.apex_record, var.zone_records)
}

# DNS for the lightsail instance
module "route53" {
  count          = var.zone_apex_name == "" ? 0 : 1
  source         = "git@github.com:desmith/terraform-aws-route53.git"
  zone_name      = var.zone_name
  zone_apex_name = var.zone_apex_name
  zone_records   = local.zone_records
}

resource "aws_lightsail_instance" "lightsail" {
  name              = var.instance_name
  availability_zone = var.availability_zone
  ip_address_type   = var.ip_address_type
  blueprint_id      = var.blueprint
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_pair_name

  add_on {
    type          = "AutoSnapshot"
    snapshot_time = "06:00"
    status        = "Enabled"
  }
}

resource "aws_lightsail_static_ip" "lightsail" {
  name = var.static_ip_name
}

resource "aws_lightsail_static_ip_attachment" "lightsail" {
  static_ip_name = aws_lightsail_static_ip.lightsail.id
  instance_name  = aws_lightsail_instance.lightsail.id
}

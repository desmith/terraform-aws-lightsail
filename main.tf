# Main module
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

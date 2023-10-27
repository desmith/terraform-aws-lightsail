output "lightsail_instance_id" {
  value = aws_lightsail_instance.lightsail.id
}

output "lightsail_static_public_ip" {
  value = aws_lightsail_static_ip.lightsail.ip_address
}

output "lightsail_instance_public_ip" {
  value = aws_lightsail_instance.lightsail.public_ip_address
}

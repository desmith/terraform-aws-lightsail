variable "instance_name" {
  type        = string
  description = "Name of the lightsail instance"
}

variable "availability_zone" {
  type        = string
  description = "Must be one of [ap-northeast-1{a,c,d}, ap-northeast-2{a,c}, ap-south-1{a,b}, ap-southeast-1{a,b,c}, ap-southeast-2{a,b,c}, ca-central-1{a,b}, eu-central-1{a,b,c}, eu-west-1{a,b,c}, eu-west-2{a,b,c}, eu-west-3{a,b,c}, us-east-1{a,b,c,d,e,f}, us-east-2{a,b,c}, us-west-2{a,b,c}]"
}

variable "ip_address_type" {
  type        = string
  description = "The IP address type of the Lightsail Instance. Valid Values: dualstack | ipv4"
  default = "dualstack"
}

variable "blueprint" {
  type        = string
  description = "One of the blueprints listed by the AWS cli - aws lightsail get-blueprints"
  default = "wordpress"
}

variable "bundle_id" {
  type        = string
  description = "The bundle id of the instance"
  default = "micro_2_0"
}

variable "static_ip_name" {
  type        = string
  description = "Unique name for the lightsail static ip resource"
}


variable "key_pair" {
  type        = string
  description = "Key pair used for ssh access"
}

variable "instance_tags" {
  type        = map(string)
  description = "Set key value tags for lightsail instance"
  default     = {}
}

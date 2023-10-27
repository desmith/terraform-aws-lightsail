<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_route53"></a> [route53](#module\_route53) | git@github.com:desmith/terraform-aws-route53.git | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_lightsail_instance.lightsail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance) | resource |
| [aws_lightsail_static_ip.lightsail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip) | resource |
| [aws_lightsail_static_ip_attachment.lightsail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Must be one of [ap-northeast-1{a,c,d}, ap-northeast-2{a,c}, ap-south-1{a,b}, ap-southeast-1{a,b,c}, ap-southeast-2{a,b,c}, ca-central-1{a,b}, eu-central-1{a,b,c}, eu-west-1{a,b,c}, eu-west-2{a,b,c}, eu-west-3{a,b,c}, us-east-1{a,b,c,d,e,f}, us-east-2{a,b,c}, us-west-2{a,b,c}] | `string` | n/a | yes |
| <a name="input_blueprint"></a> [blueprint](#input\_blueprint) | One of the blueprints listed by the AWS cli - aws lightsail get-blueprints | `string` | n/a | yes |
| <a name="input_bundle_id"></a> [bundle\_id](#input\_bundle\_id) | The bundle id of the instance | `string` | `"nano_2_0"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name of the lightsail instance | `string` | n/a | yes |
| <a name="input_instance_tags"></a> [instance\_tags](#input\_instance\_tags) | Set key value tags for lightsail instance | `map(string)` | `{}` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | The IP address type of the Lightsail Instance. Valid Values: dualstack \| ipv4 | `string` | `"dualstack"` | no |
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | Key pair used for ssh access | `string` | n/a | yes |
| <a name="input_static_ip_name"></a> [static\_ip\_name](#input\_static\_ip\_name) | Unique name for the lightsail static ip resource | `string` | n/a | yes |
| <a name="input_zone_apex_name"></a> [zone\_apex\_name](#input\_zone\_apex\_name) | The name of the zone apex to create the DNS record in | `string` | `""` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The route53 zone name | `string` | n/a | yes |
| <a name="input_zone_records"></a> [zone\_records](#input\_zone\_records) | List of DNS records to create in the zone | <pre>list(object({<br>    name    = string<br>    type    = string<br>    ttl     = number<br>    records = list(string)<br>  }))</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lightsail_instance_id"></a> [lightsail\_instance\_id](#output\_lightsail\_instance\_id) | n/a |
| <a name="output_lightsail_instance_public_ip"></a> [lightsail\_instance\_public\_ip](#output\_lightsail\_instance\_public\_ip) | n/a |
| <a name="output_lightsail_static_public_ip"></a> [lightsail\_static\_public\_ip](#output\_lightsail\_static\_public\_ip) | n/a |
<!-- END_TF_DOCS -->
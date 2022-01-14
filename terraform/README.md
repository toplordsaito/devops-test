## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_firewall_rules"></a> [firewall\_rules](#module\_firewall\_rules) | terraform-google-modules/network/google//modules/firewall-rules | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-google-modules/network/google | ~> 4.0.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/4.5.0/docs/resources/compute_router) | resource |
| [google_compute_router_nat.network](https://registry.terraform.io/providers/hashicorp/google/4.5.0/docs/resources/compute_router_nat) | resource |
| [google_container_cluster.develop](https://registry.terraform.io/providers/hashicorp/google/4.5.0/docs/resources/container_cluster) | resource |
| [google_container_node_pool.primary_preemptible_nodes](https://registry.terraform.io/providers/hashicorp/google/4.5.0/docs/resources/container_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_google_cluster_name"></a> [google\_cluster\_name](#input\_google\_cluster\_name) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_google_network_develop_name"></a> [google\_network\_develop\_name](#input\_google\_network\_develop\_name) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_google_network_develop_subnet"></a> [google\_network\_develop\_subnet](#input\_google\_network\_develop\_subnet) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_google_network_name"></a> [google\_network\_name](#input\_google\_network\_name) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_google_project_id"></a> [google\_project\_id](#input\_google\_project\_id) | google project id | `string` | n/a | yes |
| <a name="input_google_region"></a> [google\_region](#input\_google\_region) | (optional) describe your variable | `string` | `"asia-southeast1"` | no |
| <a name="input_google_zone"></a> [google\_zone](#input\_google\_zone) | (optional) describe your variable | `string` | `"asia-southeast1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_name"></a> [vpc\_name](#output\_vpc\_name) | n/a |

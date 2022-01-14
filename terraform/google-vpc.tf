module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 4.0.0"

  project_id   = var.google_project_id
  network_name = var.google_network_name
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name           = var.google_network_develop_name
      subnet_ip             = var.google_network_develop_subnet
      subnet_region         = var.google_region
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]

}
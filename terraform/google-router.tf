resource "google_compute_router" "router" {
  name    = "${module.vpc.network_name}-routers"
  network = module.vpc.network_name
  region  = var.google_region
}

resource "google_compute_router_nat" "network" {
  name                               = "${module.vpc.network_name}-nat"
  router                             = google_compute_router.router.name
  region                             = var.google_region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}

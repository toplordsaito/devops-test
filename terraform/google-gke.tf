resource "google_container_cluster" "develop" {
  name                     = var.google_cluster_name
  location                 = var.google_region
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = module.vpc.network_name
  subnetwork               = var.google_network_develop_name
  # master_authorized_networks_config {
  #   cidr_blocks {
  #     cidr_block  = "10.1.0.0/28"
  #   }
  # }
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.2.0.0/18"
    services_ipv4_cidr_block = "10.3.0.0/18"
  }
  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = "10.4.0.0/28"
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "node-pool-preemptible"
  location   = var.google_region
  cluster    = google_container_cluster.develop.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "n2-standard-2"
  }
}
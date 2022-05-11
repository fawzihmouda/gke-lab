###---VPC---###
resource "google_compute_network" "vpc" {
  name                    = "vpc-gke"
  description             = "VPC Network For GKE Cluster"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "gke_subnet_A" {
  name          = "gke-subnet"
  ip_cidr_range = "192.168.0.0/16"
  network       = google_compute_network.vpc.id
}
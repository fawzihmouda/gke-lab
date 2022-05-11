###---VPC---###
resource "google_compute_network" "vpc" {
  name = "vpc-gke"
  description = "VPC Network For GKE Cluster"
  auto_create_subnetworks = false
  routing_mode = "REGIONAL"
}
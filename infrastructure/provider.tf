terraform {
  required_providers {
    google = {
      version = "~> 3.90.0"
    }
  backend "gcs" {
    bucket = "terraformstate-fawzihmouda"
    prefix = "state"
  }

}

provider "google" {
  project = "fawzihmouda-dev"
  region  = "australia-southeast1"
}
}

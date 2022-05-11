terraform {
  backend "gcs" {
    bucket  = "terraformstate-fawzihmouda"
    prefix  = "state"
  }
  
}

provider "google" {
  project     = "fawzihmouda-dev"
  region      = "australia-southeast1"
}


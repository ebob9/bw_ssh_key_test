terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "= 0.13.6"
    }
  }
}

# Configure the Bitwarden Provider
provider "bitwarden" {

  master_password = var.BW_MASTER_PASSWORD
  email       = var.BW_EMAIL

  experimental {
    embedded_client = true
  }
}
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "= 0.13.6"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the Bitwarden Provider
# provider "bitwarden" {
#
#   # master_password = var.BW_MASTER_PASSWORD
#   email       = var.BW_EMAIL
#   session_key = var.BW_SESSION
#
#   # experimental {
#   #   embedded_client = true
#   # }
# }

provider "aws" {
  region = var.AWS_REGION
  # use access key / secret for now.
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}
terraform {
  required_providers {
    external = {
      source  = "hashicorp/external"
      version = "~> 2.0.0"
    }
  }
  required_version = ">= 0.13"
}

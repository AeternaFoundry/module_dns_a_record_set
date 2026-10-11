terraform {
  required_version = ">= 1.6.0"
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "~> 3.6.2"
    }
  }
}

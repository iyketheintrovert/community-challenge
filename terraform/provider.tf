terraform {
  cloud {
    organization = "sageiyke"

    workspaces {
      name = "hostober-project"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }
  }
}

provider "aws" {
  region = var.region
}
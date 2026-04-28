provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      CreatedBy = "GitHubActions-Terraform"
      ManagedBy = "Terraform"
      Project   = "Movie Picture Application"
    }
  }
}

terraform {
  required_version = "1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

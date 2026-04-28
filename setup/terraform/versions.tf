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
  backend "s3" {
    bucket          = "ml-movie-picture-state-bucket"
    key             = "movie-picture-pipeline/terraform.tfstate"
    region          = "us-east-1"
    dynamodb_table  = "terraform-locks"
    encrypt         = true
  }
}

terraform {
    required_providers {
      aws = ">=5.38.0"
      local = ">=2.1.0"
    }
    backend "s3" {
      bucket = "mgsantos-terraform-states"
      key = "fullcycle-eks/terraform.tfstate"
      region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
}
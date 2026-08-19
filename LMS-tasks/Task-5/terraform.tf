terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 6.60.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }
  }

  required_version = "~> 1.15.7"
}

provider "aws" {
  region = var.region
  profile = "trainee"
  default_tags {
    tags = {
      Owner = "volha.yurchanka"
    }
  }
}

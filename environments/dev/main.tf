terraform {
  required_version = "~> 0.12.20"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kszarek"

    workspaces {
      name = "dev"
    }
  }
}

provider "aws" {
  version = "2.46.0"
  region  = var.aws_region
}

data "aws_vpc" "default" {
  default = true
}

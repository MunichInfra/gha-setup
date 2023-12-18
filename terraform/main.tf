terraform {
  required_version = ">= 1.0"

  backend "s3" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.1"
    }
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "tw-iac001-1218"
}

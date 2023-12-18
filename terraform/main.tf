terraform {
  required_version = ">= 1.0"

   backend "s3" {
    bucket         = "ia001-labs-statebucket"
    key            = "farid"
    region         = "eu-west-2"
    dynamodb_table = "labs_state_lock"
  }

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

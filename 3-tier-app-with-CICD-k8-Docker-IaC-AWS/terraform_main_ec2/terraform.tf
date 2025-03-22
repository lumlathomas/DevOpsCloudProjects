terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "lumlabucketfor3tier" # create new bucket in s3
    key    = "ec2/terraform.tfstate"
    region = "eu-west-2" # s3 region where you have created
  }

  required_version = ">= 1.6.3"
}
provider "aws" {
  region = "eu-west-2" # change it to your preferred region
}

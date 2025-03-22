terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 5.25.0"
    }
  }

  backend "s3" {
    bucket = "backend3tierlumla" # create another bucket in another region
    key    = "eks/terraform.tfstate"
    region = "ap-south-1" # my first bucket region is eu-west-2
  }

  required_version = ">= 1.6.3"
}

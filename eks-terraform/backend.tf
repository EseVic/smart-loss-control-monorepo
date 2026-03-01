terraform {
  backend "s3" {
    bucket  = "smartloss-tfstate"
    key     = "smartloss/eks/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
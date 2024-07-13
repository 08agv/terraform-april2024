terraform {
  backend "s3" {
    bucket = "zhanyl-kaizen"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}
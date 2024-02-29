terraform {
  backend "s3" {
    bucket="terraformassignment3"
    key="terraform.tfstate"
    region="ap-south-1"
    dynamodb_table = "sameeksha1"
  }
}
terraform {
  backend "s3" {
    bucket = "mybucket-sachin"
    key    = "sachin/terraform.tfstate"
    region = "us-east-1"
  }
}

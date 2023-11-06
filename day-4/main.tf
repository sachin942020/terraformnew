provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "sachin" {
    instance_type = "t2.micro"
    ami = "ami-0fc5d935ebf8bc3bc"
  
}

resource "aws_s3_bucket" "s3_bucket" {

    bucket = "mybucket-sachin"
      
}

resource "aws_dynamodb_table" "terraform_lock" {
  

  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
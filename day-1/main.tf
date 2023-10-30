provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "saple_instance" {
  ami                     = "ami-032346ab877c418af"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-085cfc56c1ce276ac" 
  key_name                = "linuxkp" 
  tenancy                 = "defualt" 
}
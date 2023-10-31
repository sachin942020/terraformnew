provider "aws" {
  alias = "us-east-1"
    region = "us-east-1"
  
}

provider "aws" {
  alias = "us-west-2"
    region = "us-west-2"
  
}

resource "aws_instance" "create_instance_east" {
  ami                     = "ami-0fc5d935ebf8bc3bc"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-085cfc56c1ce276ac" 
  key_name                = "linuxkp" 
  provider                = "aws.us-east-1"
}

resource "aws_instance" "create_instance_west" {

  ami                     = "ami-005f8adf84f8c5057"
  instance_type           = "t2.micro"   
  key_name                = "winkp"
  provider                = "aws.us-west-2"
}
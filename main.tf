resource "aws_instance" "my_instance" {
    ami = var.ami_id
    instance_type = var.instance
    key_name = var.key
    subnet_id = var.subnet
    associate_public_ip_address =true
    tags = {
      Name="developer-1"
    }
  
}

resource "aws_s3_bucket" "bckt" {
  bucket = "gkbcktssssss"
  
}

terraform {
  backend "s3" {
    bucket         = "gkbcktssssss"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}

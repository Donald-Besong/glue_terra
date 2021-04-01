terraform {
 required_version = ">= 0.12.0"
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key 
  region = var.aws_region
 }
 
resource "aws_instance" "base" {
  ami="ami-0fbec3e0504ee1970"
 instance_type="t2.micro"
  }
  
#terraform destroy -target="aws_instance.base"
#or terraform destroy 
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public-ip" {
    value = aws_eip.lb.public_ip
}
output "public-url" {
    value = "https://${aws_eip.lb.public_ip}:8080"
}
output "alloutput" {
    value = aws_eip.lb
}
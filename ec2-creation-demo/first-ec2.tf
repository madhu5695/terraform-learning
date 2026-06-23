provider "aws" {
  region     = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}
resource "aws_instance" "myec2" {
   ami = "ami-08f44e8eca9095668"
   instance_type = "t3.micro"
   tags = {
    Name = "my-first-ec2"
   }
}

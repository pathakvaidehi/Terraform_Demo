## My first Terraform file

provider "aws" {
  secret_key = var.AWS_SECRET_KEY
  access_key = var.AWS_ACCESS_KEY
  region = var.AWS_REGION
}

resource "aws_instance" "terraform_ec2" {
  count         = var.instance_count
  ami           = var.AWS_AMI
  instance_type = var.instance_type
  tags = {
    Name = "my_ec2_instances_${count.index}"
  }
}
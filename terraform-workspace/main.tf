## My first Terraform file

provider "aws" {
  access_key = "AKIASVLKCLJD5ENT37NZ"
  secret_key = "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"
  region     = var.AWS_REGION
}

resource "aws_instance" "terraform_ec2" {
  count         = var.instance_count
  ami           = "ami-05f157b283f1f33b9"
  instance_type = var.instance_type
  tags = {
    Name = "my_ec2_instances_${count.index}"
  }
}
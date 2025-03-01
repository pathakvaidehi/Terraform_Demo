variable "instance_count" {
  default     = 2
  description = "Number of instances we want to deploy"

}

variable "AWS_REGION" {
  type        = string
  default     = "us-west-2"
  description = "aws location where resources will be deployed."
}

variable "instance_type" {
  type        = string
  description = "Type of aws instance"
  default     = "t2.micro"
}

variable "AWS_AMI" {
  type = string
  description = "Define aws ami image."
  default = "ami-05f157b283f1f33b9"
}
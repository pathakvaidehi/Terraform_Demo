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

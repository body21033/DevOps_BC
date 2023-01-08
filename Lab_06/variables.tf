variable "region" {
  description = "region AWS"
  type        = string
  default     = "eu-central-1"
}

variable "ami" {
  description = "aws_image"
  type        = string
  default     = "ami-0b81e95bb0a06ea8c"
}

variable "instance_type" {
  default = "t2-micro"
}

variable "tags" {
  type = map(string)
  default = {
    "Terraform" = "Yes"
    "owner"     = "Bohdan"
  }
}
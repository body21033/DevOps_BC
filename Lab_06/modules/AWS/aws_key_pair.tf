resource "aws_key_pair" "security_aws" {
  key_name = "bodya"
  public_key = file("C:/Terraform/modules/AWS/.ssh/bodya.pub")
  }
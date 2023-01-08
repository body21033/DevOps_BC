resource "aws_instance" "AWS-1" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.security_aws.key_name
  user_data     = file(var.installing)
  }

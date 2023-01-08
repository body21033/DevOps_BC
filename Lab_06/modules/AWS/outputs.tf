# Output IP-Address for AWS 
output "instance_public_ip" {
  value = aws_instance.AWS-1.public_ip
}
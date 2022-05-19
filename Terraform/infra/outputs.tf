output "public_ip_address" {
  description = "public ip address"
  value       = aws_instance.group7-ec2.public_ip
}
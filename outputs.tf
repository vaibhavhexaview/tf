output "EC2 Public IP" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}
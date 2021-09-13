output "EC2_Public_IP" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.tf_EC2.public_ip
}
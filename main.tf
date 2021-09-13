resource "aws_instance" "tf_EC2" {
  ami           = "ami-0d058fe428540cd89"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_name
  }
}

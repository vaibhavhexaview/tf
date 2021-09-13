# resource "aws_s3_bucket" "tfbucket" {
#   bucket = "tfbucket-hexa"
#   acl    = "private"

#  force_destroy = true
#   versioning {
#     enabled = true
#   }
# }


resource "aws_security_group" "tfdemosg" {
  name        = "TerraDemoSG"
  description = "Allow TLS inbound traffic"

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = true
    },

    {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = true
    }
  ]

  egress = [
    {
      description = "Yuhi"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = true
    }
  ]

  tags = {
    Name = "Security Group"
  }
}

resource "aws_instance" "tf_EC2" {
  ami           = "ami-0d058fe428540cd89"
  instance_type = "t2.micro"
  availability_zone = "ap-southeast-1a"
  key_name = "tf-key"
  security_groups = [ "TerraDemoSG" ]
  user_data = <<-EOF
               #!/bin/bash
               sudo su
               apt update
               apt-get install apache2 -y
               systemctl start apache2
               echo 'Finally, Got It WORKING.' > /var/www/html/index.html
                 EOF
tags = {
    Name = var.ec2_name
  }
}

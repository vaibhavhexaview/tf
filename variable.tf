variable "ec2_name" {
  type = string
  default = "myUbuntuServer"
}

variable "credentials_loc" {
    type = string
    default = "/home/vaibhavg/.aws/credentials"
}
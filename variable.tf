variable "credentials_loc" {
    type = string
    default = "/home/vaibhavg/.aws/credentials"
}

#Instance Names
variable "ec2_name" {
  type = string
  default = "myUbuntuServer"
}
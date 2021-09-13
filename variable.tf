variable "credentials_loc" {
    type = string
    default = "/home/vaibhavg/.aws/credentials"
}
variable "region" {
  type = string
  default = "ap-southeast-1"
}

#Instance Names
variable "ec2_name" {
  type = string
  default = "myUbuntuServer"
}
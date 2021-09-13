variable "region" {
  type = string
  default = "ap-southeast-1"
}
variable "credentials_loc" {
    type = string
    default = "/home/vaibhavg/.aws/credentials"
}

#Instance Names
variable "ec2_name" {
  type = string
  default = "myUbuntuServer"
}
variable "s3_name" {
    type = string
    default = "tfbucket-hexa"
}
terraform{
    backend "s3"{
      bucket = "tfbucket-hexa"
      region = "ap-southeast-1"
      key = "/ec2/terraform.tfstate"
  }
}
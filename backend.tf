terraform{
    backend "s3"{
    bucket = "tfbucket-hexa"
    key = "global/s3/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
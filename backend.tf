terraform{
    backend "s3"{
    bucket = "tfbucket-hexa"
    region = "ap-southeast-1"
    key = "global/s3/terraform.tfstate"
     #shared_credentials_file = var.credentials_loc
  }
}
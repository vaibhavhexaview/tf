terraform{
    backend "s3"{
    bucket = var.s3_name
    region = var.region
    key = "global/s3/terraform.tfstate"
  }
}
terraform {
  backend "s3" {
    bucket = "malik-terraform-state-bucket"
    key    = "path/to/my/1.tfstate"
    region = "us-east-1"
  }
}
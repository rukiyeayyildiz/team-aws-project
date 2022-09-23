terraform {
  backend "s3" {
    bucket = "malik-terraform-state-bucket"
    key    = "path/to/my/key.tfstate"
    region = "us-east-1"
  }
}
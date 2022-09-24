terraform {
  backend "s3" {
    bucket = "malik-terraform-state-bucket"
    key    = "path/to/my/2"
    region = "us-east-1"
  }
}
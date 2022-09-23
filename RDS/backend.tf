terraform {
  backend "s3" {
    bucket = "malik-terraform-state-bucket"
    key    = "path/to/my/asg"
    region = "us-east-1"
  }
}
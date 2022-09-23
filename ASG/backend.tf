terraform {
  backend "s3" {
    bucket = "malik-terraform-state-bucket"
    key    = "path/to/my/autoscaling"
    region = "us-east-1"
  }
}
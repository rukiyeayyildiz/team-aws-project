terraform {
  backend "s3" {
    bucket = "aws-team1"
    key    = "path/to/my/3"
    region = "us-east-1"
  }
}
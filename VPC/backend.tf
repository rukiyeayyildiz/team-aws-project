terraform {
  backend "s3" {
    bucket = "aws-team1"
    key    = "path/to/my/1.tfstate"
    region = "us-east-1"
  }
}
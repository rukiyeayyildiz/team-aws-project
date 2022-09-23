data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "malik-terraform-state-bucket"
    key    = "env:/dev/path/to/my/key.tfstate"
    region = "us-east-1"
    }
  }
}


output all {
    value = data.terraform_remote_state.vpc.outputs.*
}
region                    = "us-west-2"
name                      = "wordpress_asg"
min_size                  = "1"
max_size                  = "1"
desired_capacity          = "1"
tags                        = {
    Terraform = "true"
    Environment = "dev"
}
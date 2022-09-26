region                    = "us-east-2"
name                      = "wordpress_asg"
min_size                  = "1"
max_size                  = "99"
desired_capacity          = "3"
tags                        = {
    Terraform = "true"
    Environment = "dev"
}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"



  name                  = var.vpc_name
  cidr               = "${var.cidr_block}"

  azs                   = [
          "${var.region}a", 
          "${var.region}b", 
          "${var.region}c"
    ]
  
  
  private_subnets       = "${var.private_subnets}"
  public_subnets        = "${var.public_subnets}"

  enable_nat_gateway    = false
  enable_vpn_gateway    = false
  enable_dns_hostnames  = true
  enable_dns_support    = true

  tags                  =  var.tags
}
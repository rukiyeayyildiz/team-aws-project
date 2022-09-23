variable "vpc_name" {
  type        = string
  default     = "test"

}

variable "region" {}

variable "cidr_block" {}

variable "tags" {
  type        = map
  default     = {}
  description = "provide a tag for VPC"
}

variable "private_subnets" {
  type        = list(any)
  default     = []
  description = "provide a cidr block for private subnets"
}

variable "public_subnets" {
  type        = list(any)
  default     = []
  description = "provide a cidr block for public subnets"
}
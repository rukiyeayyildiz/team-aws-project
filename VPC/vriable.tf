variable "vpc_name" {
  type        = string
  default     = "test"
  description = "provide a VPC name"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "provide a region"
}

variable "cidr_block" {
  type        = string
  default     = ""
  description = "provide a cidr block"
}

variable "tags" {
  type        = map(any)
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
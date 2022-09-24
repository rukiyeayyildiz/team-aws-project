variable "tags" {
  type = map(any)
}
variable "region" {}
variable "zone_id" {}
variable "domain_name" {}
variable "name" {}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}

min_size                  = 1
max_size                  = 1
desired_capacity          = 1
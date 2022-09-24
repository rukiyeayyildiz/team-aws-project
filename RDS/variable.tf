variable "tags" {
  type = map(any)
}
variable "region" {}
variable "zone_id" {}
variable "domain_name" {}
variable "database_name" {}
variable "master_username" {}
variable "master_password" {}
variable "backup_retention_period" {}
variable "preferred_backup_window" {}
variable "skip_final_snapshot" {}
variable "instance_class" {}

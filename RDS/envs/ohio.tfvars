region                      = "us-east-2"
database_name               = "mydb" 
master_username             = "foo"
master_password             = "12345678"
backup_retention_period     = 5
preferred_backup_window     = "07:00-09:00"
instance_class              = "db.t2.small"
skip_final_snapshot         = true
tags                        = {
    Terraform = "true"
    Environment = "dev"
}
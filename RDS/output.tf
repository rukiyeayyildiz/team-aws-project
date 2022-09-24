output "writer" {
  value = aws_rds_cluster_instance.wordpress_db.endpoint
}

output "reader1" {
  value = aws_rds_cluster_instance.wordpress_db.reader_endpoint
}

output "reader2" {
  value = aws_rds_cluster_instance.wordpress_db.reader_endpoint
}

output "reader3" {
  value = aws_rds_cluster_instance.wordpress_db.reader_endpoint
}
# output "writer_aws_rds_endpoint" {
#   value = "Writer ${aws_rds_cluster.wordpress_db.endpoint}"
# }

# output "Reader_aws_rds_endpoint" {
#   value = "Reader ${aws_rds_cluster.wordpress_db.reader_endpoint}"
# }
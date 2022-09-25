output "writer" {
  value = aws_rds_cluster.wordpress_db.endpoint
}

output "reader1" {
  value = aws_rds_cluster.wordpress_db.reader_endpoint
}

output "reader2" {
  value = aws_rds_cluster.wordpress_db.reader_endpoint
}

output "reader3" {
  value = aws_rds_cluster.wordpress_db.reader_endpoint
}

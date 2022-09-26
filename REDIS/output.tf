output "redis" {
  value = aws_elasticache_cluster.wordpress_redis.cluster_address
}
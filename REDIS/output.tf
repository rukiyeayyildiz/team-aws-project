output "redis" {
  value = aws_elasticache_cluster.redis.configuration_endpoint
}
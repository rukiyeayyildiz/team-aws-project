resource "aws_elasticache_subnet_group" "redis" {
  name       = "redis"
  subnet_ids = data.terraform_remote_state.remote.outputs.private_subnets
  tags = var.tags
}

resource "aws_security_group" "cach" {
  name        = "redis"
  description = "Allow cach inbound traffic"
  vpc_id      = data.terraform_remote_state.remote.outputs.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.tags
}

resource "aws_security_group_rule" "cach" {
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.cach.id
}

resource "aws_elasticache_cluster" "wordpress_redis" {
  security_group_ids            = [aws_security_group.cach.id]
  subnet_group_name             = aws_elasticache_subnet_group.redis.name
  final_snapshot_identifier     = false

  cluster_id                    = "cluster-redis"
  engine                        = "redis"
  node_type                     = "cache.t3.micro"
  num_cache_nodes               = 1
  parameter_group_name          = "default.redis3.2"
  engine_version                = "3.2.10"
  port                          = 6379
}



# resource "aws_route53_record" "redis" {
#   zone_id = var.zone_id
#   name    = "redis.${var.domain_name}"
#   type    = "A"
#   ttl     = 300
#   records = [aws_elasticache_cluster.redis.cluster_address]
# }
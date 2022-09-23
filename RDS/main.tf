resource "aws_db_subnet_group" "default" {
  name       = "wordpress"
  subnet_ids = data.terraform_remote_state.remote.outputs.private_subnets
  tags = var.tags
}

resource "aws_security_group" "mysql" {
  name        = "mysql"
  description = "Allow mysql inbound traffic"
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

resource "aws_security_group_rule" "mysql" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.mysql.id
}


resource "aws_db_instance" "default" {
  vpc_security_group_ids = [aws_security_group.mysql.id]
  allocated_storage      = 10
  db_name                = "mydb"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  username               = "foo"
  password               = "foobarbaz"
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.default.name
  publicly_accessible    = true
}

resource "aws_route53_record" "wordpressdb" {
  zone_id = var.zone_id
  name    = "wordpressdb.${var.domain_name}"
  type    = "CNAME"
  ttl     = 300
  records = [aws_db_instance.default.address]
}
resource "aws_db_instance" "postgres" {
  identifier             = "postgres-demo-db"
  allocated_storage      = 10
  engine                 = "postgres"
  engine_version         = "13.3"
  instance_class         = "db.t3.medium"
  name                   = "demo_db"
  username               = "postgres"
  password               = "$2Pmfowrll"
  parameter_group_name   = "default.postgres13"
  publicly_accessible    = true
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.demo_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.postgres.id]

  depends_on = [
    aws_db_subnet_group.demo_db_subnet_group
  ]

  tags = {
    Name = "PostgresDemoDB"
  }
}

resource "aws_db_subnet_group" "demo_db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [aws_subnet.subnet_1.id, aws_subnet.subnet_2.id, aws_subnet.subnet_3.id]

  tags = {
    Name = "My DB subnet group"
  }
}

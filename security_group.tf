resource "aws_security_group" "postgres" {
  name        = "postgres"
  description = "Allow connection on port 5432"
  vpc_id      = aws_vpc.demo_vpc.id

  ingress {
    description      = "Allow connection on port 5432"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "postgres"
  }
}

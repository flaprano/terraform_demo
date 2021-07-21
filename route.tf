resource "aws_route" "internet_gateway" {
  route_table_id         = aws_vpc.demo_vpc.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.demo_internet_gateway.id

  depends_on = [
    aws_internet_gateway.demo_internet_gateway
  ]
}

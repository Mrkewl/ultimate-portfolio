resource "aws_route_table" "public" {
  vpc_id = aws_vpc.portfolio_vpc.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    Name = "public-route-table"

  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.portfolio_vpc.id
   route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    Name = "private-route-table"

  }
}

resource "aws_route_table_association" "public-nodejs" {
  subnet_id      = aws_subnet.nodejs_subnet.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-django" {
  subnet_id      = aws_subnet.django_subnet.id
  route_table_id = aws_route_table.public.id
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.portfolio_vpc.id
  tags = {
    Name = "igw"
  }
}


resource "aws_subnet" "nodejs_subnet" {
  vpc_id                  = aws_vpc.portfolio_vpc.id
  cidr_block              = "10.0.10.0/24"
  availability_zone       = var.portfolio_subnets["node-subnet"]
  map_public_ip_on_launch = true
  tags = {
    "Name" = "node-subnet"
  }

}
resource "aws_subnet" "django_subnet" {
  vpc_id                  = aws_vpc.portfolio_vpc.id
  cidr_block              = "10.0.20.0/24"
  availability_zone       = var.portfolio_subnets["django-subnet"]
  map_public_ip_on_launch = true
  tags = {
    "Name" = "django-subnet"
  }

}
resource "aws_subnet" "postgresql_subnet" {
  vpc_id                  = aws_vpc.portfolio_vpc.id
  cidr_block              = "10.0.30.0/24"
  availability_zone       = var.portfolio_subnets["postgresql-subnet"]
  map_public_ip_on_launch = false
  tags = {
    "Name" = "postgresql-subnet"
  }

}

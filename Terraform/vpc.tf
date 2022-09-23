resource "aws_vpc" "portfolio_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "Name" = "Ultimate-portfolio-vpc"
  }

}

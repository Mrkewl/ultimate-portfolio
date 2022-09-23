variable "region" {
    type = string
    default = "ap-southeast-1"
  
}
variable "access_key" {
    type = string
}
variable "secret_key" {
    type = string
}

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
    description = "vpc_cidr_block"
  
}

variable "portfolio_subnets" {
  type = map(string)
  default = {
    "node-subnet"       = "ap-southeast-1a"
    "django-subnet"     = "ap-southeast-1b"
    "postgresql-subnet" = "ap-southeast-1c"
  }

}
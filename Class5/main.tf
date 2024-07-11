provider aws {
    region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

    tags = {
    Name = "kaizen"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet [0].cidr 
  availability_zone = "${var.region}a" 
  map_public_ip_on_launch = var.ip_on_launch
 
  tags = {
    Name = var.subnet[0].subnet_name
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet [1].cidr 
  availability_zone = "${var.region}b" 
  map_public_ip_on_launch = var.ip_on_launch

  tags = {
    Name = var.subnet[1].subnet_name
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet [2].cidr 
  availability_zone = "${var.region}c" 
  map_public_ip_on_launch = var.ip_on_launch

  tags = {
    Name = var.subnet[2].subnet_name
  }
}





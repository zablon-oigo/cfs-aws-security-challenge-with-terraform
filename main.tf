provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    token = "${var.token}"
}
resource "aws_vpc" "Test_VPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Test-VPC"
  }
}
resource "aws_subnet" "Public_Subnet_A" {
  vpc_id            = aws_vpc.Test_VPC.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Public-Subnet-A"
  }
}

resource "aws_subnet" "Private_Subnet_A" {
  vpc_id            = aws_vpc.Test_VPC.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "Private-Subnet-A"
  }
}
resource "aws_subnet" "Public_Subnet_B" {
  vpc_id            = aws_vpc.Test_VPC.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Public-Subnet-B"
  }
}

resource "aws_subnet" "Private_Subnet_B" {
  vpc_id            = aws_vpc.Test_VPC.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "Private-Subnet-B"
  }
}
resource "aws_internet_gateway" "Test_VPC_IGW" {
  vpc_id = aws_vpc.Test_VPC.id

  tags = {
    Name = "test-VPC-IGW"
  }
}
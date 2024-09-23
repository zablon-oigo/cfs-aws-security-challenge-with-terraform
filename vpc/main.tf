resource "aws_vpc" "Test_VPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Test-VPC"
  }
}
resource "aws_internet_gateway" "Test_VPC_IGW" {
  vpc_id = aws_vpc.Test_VPC.id

  tags = {
    Name = "test-VPC-IGW"
  }
}
resource "aws_route_table" "Test_VPC_rtb" {
  vpc_id = aws_vpc.Test_VPC.id

  tags = {
    Name = "test-VPC-rtb"
  }
}
resource "aws_eip" "NAT_Gateway_EIP" {}

resource "aws_nat_gateway" "Test_NAT" {
  depends_on    = [aws_eip.NAT_Gateway_EIP]
  allocation_id = aws_eip.NAT_Gateway_EIP.id
  subnet_id     = aws_subnet.Public_Subnet_A.id

  tags = {
    Name = "NAT Gateway"
  }
}
resource "aws_route_table" "NAT_Gateway_rt" {
  vpc_id = aws_vpc.Test_VPC.id

  tags = {
    Name = "Route table for NAT gateway"
  }
}

resource "aws_route" "NAT_Gateway_rt_route" {
  route_table_id         = aws_route_table.NAT_Gateway_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.Test_NAT.id
}

resource "aws_route_table_association" "NAT_Gateway_RT_Association_A" {
  depends_on     = [aws_route_table.NAT_Gateway_rt]
  subnet_id      = aws_subnet.Private_Subnet_A.id
  route_table_id = aws_route_table.NAT_Gateway_rt.id
}

resource "aws_route_table_association" "NAT_Gateway_RT_Association_B" {
  depends_on     = [aws_route_table.NAT_Gateway_rt]
  subnet_id      = aws_subnet.Private_Subnet_B.id
  route_table_id = aws_route_table.NAT_Gateway_rt.id
}
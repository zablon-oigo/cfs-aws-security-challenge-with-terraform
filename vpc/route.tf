resource "aws_route" "Test_rt" {
  route_table_id         = aws_route_table.Test_VPC_rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.Test_VPC_IGW.id
}

resource "aws_route_table_association" "Test_VPC_rtb_assoc1" {
  subnet_id      = aws_subnet.Public_Subnet_A.id
  route_table_id = aws_route_table.Test_VPC_rtb.id
}

resource "aws_route_table_association" "Test_VPC_rtb_assoc2" {
  subnet_id      = aws_subnet.Public_Subnet_B.id
  route_table_id = aws_route_table.Test_VPC_rtb.id
}
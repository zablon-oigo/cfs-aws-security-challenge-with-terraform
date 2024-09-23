resource "aws_eip" "NAT_Gateway_EIP" {}

resource "aws_nat_gateway" "Test_NAT" {
  depends_on    = [aws_eip.NAT_Gateway_EIP]
  allocation_id = aws_eip.NAT_Gateway_EIP.id
  subnet_id     = aws_subnet.Public_Subnet_A.id

  tags = {
    Name = "NAT Gateway"
  }
}
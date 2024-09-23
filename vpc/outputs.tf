output "vpc_id" {
    value = aws_vpc.Test_VPC.id
}
output "security_group_id" {
  value = aws_security_group.Test_SG.id
}
output "public_subnet_ids" {
    value = [
        aws_subnet.Public_Subnet_A.id,
        aws_subnet.Public_Subnet_B.id
    ]
}

output "private_subnet_ids" {
    value = [
        aws_subnet.Private_Subnet_A.id,
        aws_subnet.Private_Subnet_B.id
    ]
}

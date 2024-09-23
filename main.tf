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
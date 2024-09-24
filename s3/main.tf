resource "random_id" "random_hex" {
  byte_length = 8
}
resource "aws_s3_bucket" "test_bucket" {
  bucket = format("%s-%s", var.bucket_name, random_id.random_hex.hex)
  tags = {
    Name = "test bucket"
  }
}
resource "aws_kms_key" "s3_bucket_kms_key" {
  description             = "KMS key for S3 bucket"
  deletion_window_in_days = 7
  tags = {
    Name = "KMS key for S3 bucket"
  }
}

resource "aws_kms_alias" "s3_bucket_kms_key_alias" {
  name          = "alias/s3_bucket_kms_key_alias"
  target_key_id = aws_kms_key.s3_bucket_kms_key.key_id
}

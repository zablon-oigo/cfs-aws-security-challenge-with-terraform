resource "aws_s3_bucket_lifecycle_configuration" "log_lifecycle" {
  bucket = var.bucket_name

  rule {
    id     = "log-config"
    status = "Enabled"

    filter {
      prefix = "log-config/"
    }

    noncurrent_version_expiration {
      noncurrent_days = 90
    }

    noncurrent_version_transition {
      noncurrent_days = 30
      storage_class   = "STANDARD_IA"
    }

    noncurrent_version_transition {
      noncurrent_days = 60
      storage_class   = "GLACIER"
    }
  }
}
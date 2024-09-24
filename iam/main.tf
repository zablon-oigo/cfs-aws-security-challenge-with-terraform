resource "aws_iam_role" "vpc_flow_log_role" {
  name = var.aws_iam_role
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "vpc-flow-logs.amazonaws.com"
        }
      }
    ]
  })
}
resource "aws_iam_role_policy" "vpc_flow_log_policy" {
  name   = "vpc_flow_log_policy"
  role   = aws_iam_role.vpc_flow_log_role.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "s3:PutObject"
        Resource = "arn:aws:s3:::${var.bucket_name}/*"
      }
    ]
  })
}

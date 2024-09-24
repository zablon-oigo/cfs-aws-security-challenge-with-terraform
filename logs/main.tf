resource "aws_flow_log" "vpc_flow_log" {
  vpc_id = var.vpc_id 
  traffic_type = "ALL"
  log_destination_type = "s3"
  log_destination = "arn:aws:s3:::${var.bucket_name}"
  iam_role_arn = var.iam_role
}

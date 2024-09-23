output "cloudfront_distribution_domain_name" {
  description = "cloudFront distribution"
  value       = aws_cloudfront_distribution.frontend_distribution.domain_name
}
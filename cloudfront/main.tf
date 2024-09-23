resource "aws_cloudfront_distribution" "frontend_distribution" {
  origin {
    domain_name = var.load_balancer_dns 
    origin_id   = "ALBOrigin"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"  

      origin_ssl_protocols = ["TLSv1.2"] 
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "Frontend CloudFront Distribution"

  default_cache_behavior {
    target_origin_id       = "ALBOrigin"
    viewer_protocol_policy  = "allow-all"  
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    compress               = true

    forwarded_values {
      query_string = true  
      cookies {
        forward = "none"  
      }
    }
  }

  http_version = "http2" 

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations       = ["KE"] 
    }
  }

  tags = {
    Name = "Frontend CloudFront Distribution"
  }
}
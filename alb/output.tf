output "load_balancer_dns" {
  value = aws_lb.frontend_lb.dns_name
}

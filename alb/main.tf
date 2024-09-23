resource "aws_lb" "frontend_lb" {
  name               = "frontend-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lbsecuritygroupB.id]

  subnets = var.subnet_ids_frontend
}

resource "aws_lb" "backend_lb" {
  name               = "backend-lb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lbsecuritygroupB.id]

  subnets = var.subnet_ids_backend
}

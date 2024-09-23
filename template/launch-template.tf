resource "aws_launch_template" "frontend" {
  name_prefix   = "frontend"
  image_id      = "ami-05134c8ef96964280"
  instance_type = "t2.micro"
  
  network_interfaces {
    security_groups = [var.security_group_id]
    associate_public_ip_address = true
  }

  user_data = base64encode(file("${path.module}/frontenddata.sh"))  
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_template" "backend" {
  name_prefix   = "backend"
  image_id      = "ami-05134c8ef96964280"
  instance_type = "t2.micro"
  
  network_interfaces {
    security_groups = [var.security_group_id]
    associate_public_ip_address = false
  }

  user_data = base64encode(file("${path.module}/backenddata.sh")) 
  lifecycle {
    create_before_destroy = true
  }
}

variable "vpc_id" {
    description = "VPC"
    type        = string
}
variable "subnet_ids_frontend" {
    description = "List of subnet for the frontend load balancer"
    type        = list(string)
}

variable "subnet_ids_backend" {
    description = "List of subnet  for the backend load balancer"
    type        = list(string)
}


variable "aws_launch_templates" {
    description = "List of launch template"
    type        = list(string)
}
variable "launch_template_id_frontend" {
    description = "Launch template  for frontend ASG"
    type        = string
}

variable "launch_template_id_backend" {
    description = "Launch template  for backend ASG"
    type        = string
}
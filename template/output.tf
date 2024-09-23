output "launch_template_id" {
    value = [aws_launch_template.frontend.id, aws_launch_template.backend.id]
}



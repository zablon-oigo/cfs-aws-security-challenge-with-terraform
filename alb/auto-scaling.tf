resource "aws_autoscaling_group" "frontendASG" {
    name     = "frontendASG"
    min_size = 2
    max_size = 6
    health_check_type = "EC2"
    vpc_zone_identifier = var.subnet_ids_frontend
    target_group_arns = [aws_lb_target_group.frontendTG.arn]

    mixed_instances_policy {
        launch_template {
            launch_template_specification {
                launch_template_id = var.launch_template_id_frontend
            }
        }
    }
}

resource "aws_autoscaling_group" "backendASG" {
    name     = "backendASG"
    min_size = 2
    max_size = 6
    health_check_type = "EC2"
    vpc_zone_identifier = var.subnet_ids_backend
    target_group_arns = [aws_lb_target_group.backendTG.arn]

    mixed_instances_policy {
        launch_template {
            launch_template_specification {
                launch_template_id = var.launch_template_id_backend
            }
        }
    }
}

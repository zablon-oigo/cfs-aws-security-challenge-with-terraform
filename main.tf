provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    token = "${var.token}"
}

module "test-vpc" {
    source = "./vpc"
}
module "launch_template" {
    source = "./template"
    security_group_id = module.test-vpc.security_group_id
}
module "alb" {
    source = "./alb"
    vpc_id = module.test-vpc.vpc_id
    aws_launch_templates = module.launch_template.launch_template_id
    subnet_ids_frontend   = module.test-vpc.public_subnet_ids
    subnet_ids_backend    = module.test-vpc.private_subnet_ids
    launch_template_id_frontend = module.launch_template.launch_template_id[0]  
    launch_template_id_backend  = module.launch_template.launch_template_id[1]
}
module "cloudFront" {
    source = "./cloudfront"
    load_balancer_dns = module.alb.load_balancer_dns
    
}
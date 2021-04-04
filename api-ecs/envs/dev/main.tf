
terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}


provider "aws" {
  region  = var.region
  profile = var.aws_profile
}


module "dev" {
  source = "../../"

  region = var.region
  app = var.app
  environment = var.environment
  tags = var.tags
  zone = var.zone
  domain = var.domain
  container_name = var.container_name
  container_port = var.container_port
  replicas = var.replicas
  ecs_autoscale_min_instances = var.ecs_autoscale_min_instances
  ecs_autoscale_max_instances = var.ecs_autoscale_max_instances
  lb_port = var.lb_port
  
}




# environment/application specific local variables
locals {
  environment = "test"
  project     = "JJB Project Modularization"
  app_name    = "crm"
}

module "main" {
  source = "git@github.com:jjbos/modularization3-module.git?ref=v1.0.0"

  environment        = local.environment
  app_name           = local.app_name

  # sizing
  ec2_type_app              = "t3.micro"
  ec2_type_asg_app          = "t3.micro"
  asg_app_min_size          = 1
  asg_app_max_size          = 1
  asg_app_desired_cappacity = 1
  count_app_instances       = 1
}

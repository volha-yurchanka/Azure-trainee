data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source      = "../../modules/vpc"
  name_prefix = "dev-trainee-project"
  vpc_cidr    = "10.0.0.0/16"
  azs         = data.aws_availability_zones.available.names
}
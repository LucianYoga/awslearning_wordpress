provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

module "vpc" {
  source      = "github.com/pk4media/terraform.aws_vpc"

  name        = "${var.name}-vpc"
  environment = "${var.environment}"

  cidr        = "${var.vpc_cidr}"
}

module "public_subnets" {
  source      = "github.com/pk4media/terraform.aws_public_subnet"

  name        = "${var.name}-public"
  environment = "${var.environment}"

  vpc_id      = "${module.vpc.vpc_id}"
  cidrs       = "${var.public_subnets}"
  availability_zones = "${var.availability_zones}"
}


module "nat_gateway" {
  source = "github.com/pk4media/terraform.aws_nat_gateway"

  name        = "${var.name}-nat"
  environment = "${var.environment}"

  vpc_id         = "${module.vpc.vpc_id}"
  public_subnets = "${var.public_subnets}"
  subnet_ids     = "${module.public_subnets.subnet_ids}"
}

module "private_subnets" {
  source      = "github.com/pk4media/terraform.aws_private_subnet"

  name        = "${var.name}-private"
  environment = "${var.environment}"

  vpc_id      = "${module.vpc.vpc_id}"
  cidrs       = "${var.private_subnets}"
  availability_zones = "${var.availability_zones}"

  route_table_ids = "${module.nat_gateway.route_table_ids}"
}

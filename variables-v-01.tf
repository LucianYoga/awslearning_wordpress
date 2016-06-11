variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "name" {
  description = "Project name"
}

variable "environment" {
  default     = "development"
  description = "Environment (development, staging, production)"
}

variable "region" {
  description = "The AWS region to launch in"
  default = "us-west-1"
}

variable "availability_zones" {
  description = "The AWS availability zones to use"
  default = "us-west-1a"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC CIDR block"
}

variable "public_subnets" {
  default     = "10.0.0.0/20,10.0.64.0/20,10.0.128.0/20"
  description = "The public subnet CIDR blocks"
}

variable "private_subnets" {
  default     = "10.0.16.0/20,10.0.80.0/20,10.0.144.0/20"
  description = "The private subnet CIDR blocks"
}

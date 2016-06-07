variable "aws_region" {
type = "string"
description = "AWS Region where Lambda is supposed to be deployed"
}

variable "aws_profile" {
type = "string"
description = "Profile name for the credentials in the shared AWS credentials file"
}

variable "env" {
type = "string"
description = "Environment Name, e.g. Dev, Staging, Prod, etc."
}

variable "vpc_cidr_block" {
type = "string"
description = "CIDR block range for VPC"
}

variable "private_subnet1_az" {
	type = "string"
	description = "Availability Zone for Private Subnet 1"
}

variable "private_subnet2_az" {
	type = "string"
	description = "Availability Zone for Private Subnet 2"
}

variable "public_subnet1_az" {
	type = "string"
	description = "Availability Zone for Public Subnet 1"
}

variable "public_subnet2_az" {
	type = "string"
	description = "Availability Zone for Public Subnet 2"
}

variable "private_subnet1_cidr_block" {
	type = "string"
	description = "CIDR block range for Private Subnet 1"
}

variable "private_subnet2_cidr_block" {
	type = "string"
	description = "CIDR block range for Private Subnet 2"
}

variable "public_subnet1_cidr_block" {
	type = "string"
	description = "CIDR block range for Public Subnet 1"
}

variable "public_subnet2_cidr_block" {
	type = "string"
	description = "CIDR block range for Public Subnet 2"
}

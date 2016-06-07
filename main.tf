provider "aws" {
region = "${var.aws_region}"
profile = "${var.aws_profile}"
}

resource "aws_vpc" "poc_vpc" {
	cidr_block = "${var.vpc_cidr_block}"
	enable_dns_support = true
	enable_dns_hostnames = true
	
	tags {
		Name = "${var.env}_vpc"
		Environment = "{$var.env}"		
	}	
}

resource "aws_subnet" "public_subnet1"
{ 
   map_public_ip_on_launch = false
   vpc_id = "${aws_vpc.poc_vpc.id}"
   availability_zone = "${var.public_subnet1_az}"
   cidr_block = "${var.public_subnet1_cidr_block}"
   tags {
	   Name = "public1"
	   Environment = "{$var.env}"
   }
}

resource "aws_subnet" "public_subnet2"
{ 
   map_public_ip_on_launch = false
   vpc_id = "${aws_vpc.poc_vpc.id}"  
   availability_zone = "${var.public_subnet2_az}"   
   cidr_block = "${var.public_subnet2_cidr_block}"
   
   tags {
	   Name = "public2"
	   Environment = "{$var.env}"
   }
}

resource "aws_subnet" "private_subnet1"
{ 
   map_public_ip_on_launch = false
   vpc_id = "${aws_vpc.poc_vpc.id}"  
   availability_zone = "${var.private_subnet1_az}"   
   cidr_block = "${var.private_subnet1_cidr_block}"
   
   tags {
	   Name = "private1"
	   Environment = "{$var.env}"
   }
}

resource "aws_subnet" "private_subnet2"
{ 
   map_public_ip_on_launch = false
   vpc_id = "${aws_vpc.poc_vpc.id}"  
   availability_zone = "${var.private_subnet2_az}"   
   cidr_block = "${var.private_subnet2_cidr_block}"
   
   tags {
	   Name = "private2"
	   Environment = "{$var.env}"
   }
}

resource "aws_internet_gateway" "igw" {
	vpc_id = "${aws_vpc.poc_vpc.id}"
	tags {
		Name = "${var.env}_igw"
		Environment = "${var.env}"
	}
}

output "vpc_id"
{
   value = "${aws_vpc.poc_vpc.id}"
   value = "${aws_subnet.private_subnet1.id}"
   value = "${aws_subnet.private_subnet2.id}"
   value = "${aws_subnet.public_subnet1.id}"
   value = "${aws_subnet.public_subnet2.id}"   
   value = "${aws_internet_gateway.igw.id}"
}


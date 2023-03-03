resource "aws_vpc" "sachin-vpc" {
  cidr_block = var.cidr-block

  tags = {
    Name = var.tag-name
    Owner = var.owner-name

  }
}
resource "aws_subnet" "sachin-subnet" {
  vpc_id = "${aws_vpc.sachin-vpc.id}"
  # cidr_block = "10.1.0.0/24"
  cidr_block = var.cidr-block-subnet
  availability_zone = var.availability-zone

  tags = {
    Name = var.tag-name
    Owner = var.owner-name

  }
}

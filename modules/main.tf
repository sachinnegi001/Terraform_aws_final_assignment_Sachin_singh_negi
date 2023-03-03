module "module-ec2" {
    count = 2
    source = "D:\\Users\\hp\\Desktop\\CLOUDEQ\\terraform-AWS\\assignment_2\\ec2"
    ami-id = var.ami-id
    instance-type = var.instance-type
    subnet-id = var.subnet-id
    tag-name = var.tags["Name"]
    tag-Owner = var.tags["Owner"]

  
}
module "module-s3" {
    for_each = var.bucket-name
    source = "D:\\Users\\hp\\Desktop\\CLOUDEQ\\terraform-AWS\\assignment_2\\s3"
    bucket-name = each.value
    tag-name = var.tags["Name"]
    Owner-name= var.tags["Owner"]

  
}

module "vpc-test" {
    source = "D:\\Users\\hp\\Desktop\\CLOUDEQ\\terraform-AWS\\assignment_2\\vpc"
    cidr-block =var.cidr-block
    availability-zone = var.availability-zone
    cidr-block-subnet = var.cidr-block-subnet
    tag-name = var.tags["Name"]
    owner-name= var.tags["Owner"]
  
}
# module "subnet-test" {
#     source = "D:\\Users\\hp\\Desktop\\CLOUDEQ\\terraform-AWS\\assignment_2\\subnet"
#     cidr-block-subnet =var.cidr-block-subnet
#     availability-zone  = var.availability-zone
#     vpc-id =  aws_vpc.sachin-vpc.id
#     tag-name = var.tags["Name"]
#     owner-name= var.tags["Owner"]
  
# }

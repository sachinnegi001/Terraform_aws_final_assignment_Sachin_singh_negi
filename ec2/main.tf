resource "aws_instance" "aws-instance" {
    ami = var.ami-id
    instance_type = var.instance-type
    subnet_id = var.subnet-id

    tags = {
      "Name" = var.tag-name
      "Owner" = var.tag-Owner

    }

  volume_tags = {
      "Name" = var.tag-name
      "Owner" = var.tag-Owner

  }
   
  
}
variable "ami-id" {
    type = string
  
}
variable "instance-type" {
    type = string
  
}
variable "tags" {
    type = map(string)
  
}

variable "ec2-names" {
    type = list(string)
    
  
}
variable "bucket-name" {
   type = map(string)
}
variable "subnet-id" {
   type = string
}
variable "cidr-block" {
   type = string
}

variable "cidr-block-subnet" {
   type = string
}
variable "availability-zone" {
   type = string
}

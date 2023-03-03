ami-id = "ami-0e742cca61fb65051"
instance-type = "t2.micro"
subnet-id = "subnet-0962069167a59d185"
tags = {
  "Name" = "Sachin-testing"
  "Owner"  = "sachin.negi@cloudeq.com"
}

ec2-names = [ "sachin-first","sachin-second","sachin-third" ]
bucket-name = {
  "1" = "sachin-bkt1"
  "2" = "sachin-bkt2"
  "3" = "sachin-bkt3"
}
cidr-block = "10.1.0.0/16"

# vpc-id = "${aws_vpc.sachin-vpc.id}"
availability-zone = "us-east-1a"
cidr-block-subnet = "10.1.1.0/24"
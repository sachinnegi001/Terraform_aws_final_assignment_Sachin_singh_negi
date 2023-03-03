output "ami-from-ec2" {
    value = [for i in aws_instance.aws-instance:i["arn"]]
  
}
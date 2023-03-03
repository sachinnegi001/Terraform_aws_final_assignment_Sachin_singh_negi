resource"aws_s3_bucket" "sachinBucket"{ 
    bucket=var.bucket-name
    tags = {
        Name=var.tag-name
        Owner=var.Owner-name
        Purpose="Training"
    }
    
    }
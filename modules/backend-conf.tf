terraform {
  backend "s3" {
    bucket ="sachin-bkt2"
    key    = "sachintffile.tfstate"
  }
}
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "zoo-bucket-earnest-demo"
  acl    = "private"

  tags = {
    Name        = "zooBucket"
    Environment = "Dev"
  }
}
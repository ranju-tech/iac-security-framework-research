provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "public_bucket" {
  bucket = "example-public-bucket-12345"
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.public_bucket.id

  block_public_acls   = false
  block_public_policy = false
}

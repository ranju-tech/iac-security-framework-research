resource "aws_s3_bucket" "private_bucket" {
  bucket = "example-private-bucket-12345"
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.private_bucket.id

  block_public_acls   = true
  block_public_policy = true
}

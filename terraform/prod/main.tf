resource "aws_s3_bucket" "b" {
  bucket = "Travbz-tf-test-bucket1"

  tags = {
    Name        = "My bucket"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
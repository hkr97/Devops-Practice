resource "aws_s3_bucket" "bucket-1" {
  bucket = var.bucket_name
  tags = {
    Name        = "My bucket 1"
    Environment = "Dev"
  }

}
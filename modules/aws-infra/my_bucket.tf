resource "aws_s3_bucket" "bucket-1" {
  bucket = "${var.my_env}-bucket-hulash-1"
  tags = {
    Name        = "${var.my_env}-bucket-hulash-1"
    Environment = "${var.my_env}"
  }
}
resource "aws_s3_bucket_versioning" "bucket-1-versioning" {
  bucket = aws_s3_bucket.bucket-1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_server_side_encryption_configuration" "bucket-1-encryption" {
  bucket = aws_s3_bucket.bucket-1.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "bucket-1-public-access-block" {
  bucket = aws_s3_bucket.bucket-1.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
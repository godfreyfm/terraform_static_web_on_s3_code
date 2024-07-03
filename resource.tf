resource "aws_s3_bucket" "bucket_a" {
  bucket = "gmai-bucket-1"
  
  tags = {
    Name        = "gmai_bucket_1"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_ownership_controls" "ownership_for_bucket_a" {
  bucket = aws_s3_bucket.bucket_a.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_a_public_access" {
  bucket = aws_s3_bucket.bucket_a.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "bucket_a_config" {
  bucket = aws_s3_bucket.bucket_a.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}



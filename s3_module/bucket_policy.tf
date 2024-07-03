resource "aws_s3_bucket_policy" "gmai_bucket_a_public_policy" {
  bucket = aws_s3_bucket.bucket_a.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.bucket_a.arn}/*"
      }
    ]
  })
}
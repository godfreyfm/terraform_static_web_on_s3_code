resource "aws_s3_bucket_policy" "gmai_bucket_a_public_policy" {
  bucket = aws_s3_bucket.s3-hosted-static-site.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "arn:aws:s3:::s3-hosted-static-site/*"
      }
    ]
  })
}
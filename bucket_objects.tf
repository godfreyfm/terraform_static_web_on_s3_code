resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.bucket_a.bucket
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
  etag         = filemd5("./index.html")
}

resource "aws_s3_object" "error_html" {
  bucket       = aws_s3_bucket.bucket_a.bucket
  key          = "error.html"
  source       = "error.html"
  content_type = "text/html"
  etag         = filemd5("./error.html")
}

resource "aws_s3_object" "main_styles_css" {
  bucket       = aws_s3_bucket.bucket_a.bucket
  key          = "main_styles.css"
  source       = "main_styles.css"
  content_type = "text/css"
  etag         = filemd5("./main_styles.css")
}

resource "aws_s3_object" "error_styles_css" {
  bucket       = aws_s3_bucket.bucket_a.bucket
  key          = "error_styles.css"
  source       = "error_styles.css"
  content_type = "text/css"
  etag         = filemd5("./error_styles.css")
}
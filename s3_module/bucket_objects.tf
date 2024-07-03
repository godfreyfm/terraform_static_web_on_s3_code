resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.s3-hosted-static-site.bucket
  key          = "index.html"
  source       = "./static_site/index.html"
  content_type = "text/html"
  etag         = filemd5("./static_site/index.html")
}

resource "aws_s3_object" "error_html" {
  bucket       = aws_s3_bucket.s3-hosted-static-site.bucket
  key          = "error.html"
  source       = "./static_site/error.html"
  content_type = "text/html"
  etag         = filemd5("./static_site/error.html")
}

resource "aws_s3_object" "main_styles_css" {
  bucket       = aws_s3_bucket.s3-hosted-static-site.bucket
  key          = "main_styles.css"
  source       = "./static_site/main_styles.css"
  content_type = "text/css"
  etag         = filemd5("./static_site/main_styles.css")
}

resource "aws_s3_object" "error_styles_css" {
  bucket       = aws_s3_bucket.s3-hosted-static-site.bucket
  key          = "error_styles.css"
  source       = "./static_site/error_styles.css"
  content_type = "text/css"
  etag         = filemd5("./static_site/error_styles.css")
}
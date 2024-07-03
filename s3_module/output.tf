output "website_url" {
  value       = aws_s3_bucket.s3-hosted-static-site.website_endpoint
  description = "The URL of the website hosted on the S3 bucket"
}
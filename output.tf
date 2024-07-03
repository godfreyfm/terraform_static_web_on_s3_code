output "website_url" {
  value       = aws_s3_bucket.bucket_a.website_endpoint
  description = "The URL of the website hosted on the S3 bucket"
}
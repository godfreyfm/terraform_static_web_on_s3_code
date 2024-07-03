output "s3_endpoint" {
  value = module.provide_s3_bucket_for_static_site.website_url
}
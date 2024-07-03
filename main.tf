module "provide_s3_bucket_for_static_site" {
  source = "./s3_module"
  global_tags = var.global_tags
}
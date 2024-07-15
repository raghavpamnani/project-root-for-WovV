resource "aws_s3_bucket" "wordpress_media" {
  bucket = var.s3_bucket_name
  acl    = "private"
}

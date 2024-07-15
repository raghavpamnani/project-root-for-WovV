output "ecs_cluster_id" {
  value = aws_ecs_cluster.wordpress.id
}

output "ecs_service_name" {
  value = aws_ecs_service.wordpress.name
}

output "rds_endpoint" {
  value = aws_db_instance.wordpress.endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.wordpress_media.bucket
}

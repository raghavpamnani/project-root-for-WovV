variable "db_username" {
  description = "The database username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The database password"
  type        = string
}

variable "db_name" {
  description = "The database name"
  type        = string
  default     = "wordpress"
}

variable "s3_bucket_name" {
  description = "The S3 bucket name for storing media files"
  type        = string
  default     = "wordpress-media-bucket"
}

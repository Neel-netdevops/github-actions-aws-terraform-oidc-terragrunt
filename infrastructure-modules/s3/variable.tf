variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-s3-bucket"
}

variable "s3_bucket_tag_name" {
  description = "Tag name for the S3 bucket"
  type        = string
  default     = "MyS3Bucket"
}

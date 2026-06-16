resource "aws_s3_bucket" "test_bucket18041990" {
  bucket = var.s3_bucket_name
  tags = {
    Name = var.s3_bucket_tag_name
  }
}

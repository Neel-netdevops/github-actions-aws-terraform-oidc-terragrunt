include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../infrastructure-modules/s3"
}

inputs = {
    s3_bucket_name = "dev-s3-bucketssss"
    s3_bucket_tag_name = "dev-s3-bucket-tag"
}



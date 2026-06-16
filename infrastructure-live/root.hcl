generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" {
  region = "us-east-1"
}
EOF
}


remote_state {
  backend = "s3"
  config = {
    bucket = "neel-test-buckets"
    key    = "${path_relative_to_include()}/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    use_state_locking = true # Optional: Enable state locking to prevent concurrent modifications
  }
generate = {
  path      = "backend.tf"
  if_exists = "overwrite"
 }
}

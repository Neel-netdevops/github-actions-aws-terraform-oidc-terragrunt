include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../infrastructure-modules/vpc"
}

inputs = {
  vpc_cidr_block = "172.16.0.0/16"
  subnet_cidr_block = "172.16.1.0/24"

    vpc_tag_name = {
        Name = "dev-vpc"
    }
    subnet_tag_name = {
        Name = "dev-subnet"
    }
}



variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  
}   

variable "vpc_tag_name" {
  description = "Tag name for the VPC"
  type        = map(string)
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}   

variable "subnet_tag_name" {
  description = "Tag name for the subnet"
  type        = map(string)
}
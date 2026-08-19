variable "name_prefix" {
  type        = string
  description = "Prefix for resources name"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}
resource "random_string" "suffix" {
  length = 6
  upper  = false
  special = false
}

locals {
    environment_prefix = "olia-dev"
}
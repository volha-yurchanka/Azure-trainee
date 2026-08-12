environment_name = "dev"
instance-count = 7
enabled = false
region = ["us-west-1", "us-east-1"]
region_instance_count = {
  "us-west-1" = 1
  "us-east-1" = 3
}
region_set = ["us-west-1", "us-east-1"]
sku_set = {
    kind = "P"
    tier = "Business"
}
output application_name {
  value = var.application_name
}
output environment_prefix {
  value = local.environment_prefix
}
output "suffix" {
  value = random_string.suffix.result
}
output "api-key" {
  value = "${var.api-key}"
  sensitive = true
}
output "primary_region" {
  value = var.region[0]
}
output "primary_region_instance_count" {
  value = var.region_instance_count["us-west-1"]
}
output "kind" {
  value = var.sku_set.kind
}
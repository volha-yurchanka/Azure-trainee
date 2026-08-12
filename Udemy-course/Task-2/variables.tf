variable "application_name" {
  type = string
}
variable "environment_name" {
  type = string
}
variable "api-key" {
  type = string
  sensitive = true
}
variable "instance-count" {
  type = number
}
variable "region" {
  type = list(string)
}
variable "region_instance_count" {
  type = map(string)
}
variable "region_set" {
  type = set(string)
}
variable "sku_set" {
  type = object({
    kind = string
    tier = string
  })
}
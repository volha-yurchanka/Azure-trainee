variable "application_name" {
  type = string

  validation {
    condition = length(var.application_name) <= 12
    error_message = "Applicatioon name must be less than or equal to 12 characters."
  }  
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

  validation {
    condition = var.instance-count > 1 && var.instance-count < 10 && var.instance-count %2 != 0
    error_message = "Instance count must be an odd number between 2 and 9."
  }
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

variable "enabled" {
  type        = bool
  default     = true
  description = "A boolean variable to enable or disable the resource."
}
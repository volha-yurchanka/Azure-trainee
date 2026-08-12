variable "application_name" {
  type        = string
  description = "Name of the application"
}
variable "environment_name" {
  type        = string
  description = "Environment name (e.g. dev, prod)"
}
variable "primary_location" {
  type        = string
  description = "Primary Azure region"
}
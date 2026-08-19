variable "bucket_name_prefix" {
  description = "The prefix for the S3 bucket name"
  nullable    = false
  type        = string
}

variable "enable_versioning" {
  description = "Flag to enable or disable versioning"
  nullable    = false
  type        = bool
  default     = false
}

variable "enable_access_logs" {
  description = "Flag to enable or disable access logs"
  nullable    = false
  type        = bool
  default     = false
}

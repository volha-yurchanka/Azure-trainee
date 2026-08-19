variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}
variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "trainee-project"
}
variable "env" {
  description = "Environment name"
  type        = string
}
variable "instance_configs" {
  type = map(string) 
  default = {
     "backend": "t3.micro"
     "frontend": "t3.nano"
  } 
}
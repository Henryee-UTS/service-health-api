variable "image_name" {
  description = "Docker image used by the Service Health API"
  type        = string
  default     = "service-health-api:1.1"
}

variable "container_name" {
  description = "Name of the Service Health API container"
  type        = string
  default     = "service-health-api-terraform"
}

variable "host_port" {
  description = "Host port exposed for the API"
  type        = number
  default     = 5052
}

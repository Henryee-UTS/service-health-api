variable "aws_region" {
  description = "AWS region used for Goal 4"
  type        = string
  default     = "ap-southeast-2"
}

variable "instance_type" {
  description = "EC2 instance type for the Service Health API"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "Project name used for AWS resource tags"
  type        = string
  default     = "service-health-api"
}

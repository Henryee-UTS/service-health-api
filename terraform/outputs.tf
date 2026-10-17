output "container_name" {
  description = "Name of the provisioned container"
  value       = docker_container.service_health_api.name
}

output "service_url" {
  description = "Local URL of the provisioned Service Health API"
  value       = "http://127.0.0.1:${var.host_port}"
}

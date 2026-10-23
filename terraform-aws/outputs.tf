output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.api.id
}

output "public_ip" {
  description = "Public IPv4 address of the Service Health API"
  value       = aws_instance.api.public_ip
}

output "health_url" {
  description = "Public health endpoint"
  value       = "http://${aws_instance.api.public_ip}/health"
}

output "service_url" {
  description = "Public Service Health API URL"
  value       = "http://${aws_instance.api.public_ip}"
}

provider "docker" {}

resource "docker_image" "service_health_api" {
  name         = var.image_name
  keep_locally = true
}

resource "docker_container" "service_health_api" {
  name  = var.container_name
  image = docker_image.service_health_api.image_id

  ports {
    internal = 5000
    external = var.host_port
  }
}

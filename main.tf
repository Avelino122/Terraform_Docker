terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "webserver"

  ports {
    internal = 80
    external = 8000
  }
    volumes {
    container_path = "/usr/share/nginx/html/index.html"
    host_path      = "/home/avelino/Terraform_Docker/index.html"
    read_only      = true
  }
}


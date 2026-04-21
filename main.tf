terraform {
    required_providers {
      docker ={
            source = "kreuzwerker/docker"
            version = "~> 3.0.1"
      } 
    }
}

provider "docker" {}

# This is tells Terraform to pull your image from Docker Hub
resource "docker_image" "hello_world" {
  name = "rravi20/hello-devops-project:latest"
  keep_locally = false
}

# This tells Terraform to start a container using that image
resource "docker_container" "hello_world_server" {
  name  = "terraform-managed-server"
  image = docker_image.hello_world.image_id
  ports {
    internal = 80
    external = 8081
  }
}
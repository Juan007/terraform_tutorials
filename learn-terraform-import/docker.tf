resource "docker_image" "nginx" {
  name         = "nginx:latest"
}

resource "docker_container" "web" {
  name  = "hashicorp-learn"
  image = docker_image.nginx.latest

  env  = []
  ports {
    ip = "::"
    external = 8081
    internal = 80
  }
  ports {
    ip = "::"
    external = 8080
    internal = 80
  }
}

# resource "docker_image" "nginx" {
#   name = "nginx:latest"
# }

# # docker_container.web:
# resource "docker_container" "web" {
#   name  = "hashicorp-learn"

#   image = docker_image.nginx.latest

#   ports {
#     external = 8081
#     internal = 80
#   }
# }

provider "docker" {

}

resource "docker_network" "private_network" {
  name = "cluster_network"
}

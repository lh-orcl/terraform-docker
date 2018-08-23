provider "docker" {

}

resource "docker_network" "private_network" {
  name = "cluster_network"
  subnet = "/24"
}

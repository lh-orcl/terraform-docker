module "web_cluster" {
  source = "../services/web/"
}

module "db" {
  source = "../services/db/"
  depends_on = "module.network.docker_network.private_network.cluster_network"
}

module "network" {
  source = "./network/"
}

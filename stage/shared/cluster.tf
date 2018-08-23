module "web_cluster" {
  source = "../services/web/"
}

module "db" {
  source = "../services/db/"
  depends_on = "network"
}

module "network" {
  source = "./network/"
}

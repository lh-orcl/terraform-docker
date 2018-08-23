module "web_cluster" {
  source = "../services/web/"
}

module "db" {
  source = "../services/db/"
}

module "network" {
  source = "./network/"
}

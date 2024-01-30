
resource "digitalocean_database_db" "database" {
  cluster_id = digitalocean_database_cluster.pg.id
  name       = "database"
}

resource "digitalocean_database_cluster" "pg" {
  name                 = "pg"
  engine               = "pg"
  version              = var.database_version
  size                 = "db-s-1vcpu-1gb"
  region               = var.region
  node_count           = 1
  private_network_uuid = digitalocean_vpc.net.id
}

resource "digitalocean_database_user" "database_user" {
  cluster_id = digitalocean_database_cluster.pg.id
  name       = var.database_user
}
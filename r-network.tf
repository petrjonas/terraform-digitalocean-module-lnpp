resource "digitalocean_vpc" "net" {
  name   = "network"
  region = var.region
}
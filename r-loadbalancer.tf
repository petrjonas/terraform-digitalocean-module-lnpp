
# Load balancer service
resource "digitalocean_loadbalancer" "lb" {
  name   = "lb"
  region = var.region

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  # definition of the healthcheck
  healthcheck {
    port     = 80
    protocol = "http"
    path     = "/"
  }

  vpc_uuid = digitalocean_vpc.net.id

  # assigned droplets to the loadbalancer
  droplet_ids = [for droplet in digitalocean_droplet.vm_linux : droplet.id]
}

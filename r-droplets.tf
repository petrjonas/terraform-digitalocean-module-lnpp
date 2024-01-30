resource "digitalocean_droplet" "vm_linux" {
  name   = format("vm-%02d", count.index + 1)
  size   = "s-1vcpu-512mb-10gb"
  image  = "ubuntu-20-04-x64"
  region   = var.region
  vpc_uuid = digitalocean_vpc.net.id
  count = var.vm_count

  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]

  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    agent = true
    timeout = "2m"
  }
}
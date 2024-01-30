

output "lb_ip" {
  value = digitalocean_loadbalancer.lb.ip
  description = "IP if load Balancer"
}

output "vm_ips" {
  value = digitalocean_droplet.vm_linux[*].ipv4_address
  description = "IPs of the droplets"
}


output "db_user" {
  value = digitalocean_database_user.database_user.name
  description = "Username in the database"
}

output "db_pwd" {
  value = digitalocean_database_user.database_user.password
  description = "User passwortd in the database"
   sensitive = true
}
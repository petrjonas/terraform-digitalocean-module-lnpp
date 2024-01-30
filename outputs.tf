

output "wp_lb_ip" {
  value = digitalocean_loadbalancer.lb.ip
  description = "IP do Load Balancer"
}

output "wp_vm_ips" {
  value = digitalocean_droplet.vm_linux[*].ipv4_address
  description = "IPs das máquinas Wordpress"
}


output "wp_db_user" {
  value = digitalocean_database_user.database_user.name
  description = "Usuário do banco de dados"
}

output "wp_db_pwd" {
  value = digitalocean_database_user.database_user.password
  description = "Senha do banco de dados"
   sensitive = true
}
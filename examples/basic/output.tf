output "stack_wp_lb_ip" {
  value       = module.lnpp.wp_lb_ip
  description = "IP do Load Balancer"
}

output "stack_wp_vm_ips" {
  value       = module.lnpp.wp_vm_ips
  description = "IPs das máquinas Wordpress"
}

output "stack_wp_db_user" {
  value       = module.lnpp.wp_db_user
  description = "Usuário do banco de dados"
}

output "stack_wp_db_pwd" {
  value       = module.lnpp.wp_db_pwd
  description = "Senha do banco de dados"
  sensitive   = true
}
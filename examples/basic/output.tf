output "stack_lb_ip" {
  value       = module.lnpp.lb_ip
  description = "IP do Load Balancer"
}

output "stack_vm_ips" {
  value       = module.lnpp.vm_ips
  description = "IPs of the droplets"
}

output "stack_db_user" {
  value       = module.lnpp.db_user
  description = "Username to Database"
}

output "stack_db_pwd" {
  value       = module.lnpp.db_pwd
  description = "User password"
  sensitive   = true
}
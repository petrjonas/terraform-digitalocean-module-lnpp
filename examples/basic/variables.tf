variable "do_token" {
  type = string
}

variable "region" {
  type    = string
  default = "nyc1"
}

variable "vm_count" {
  type        = number
  default     = 2
  description = "Número de máquinas para o wordpress"

  validation {
    condition     = var.vm_count > 1
    error_message = "O número mínimo de máquinas é 2"
  }
}
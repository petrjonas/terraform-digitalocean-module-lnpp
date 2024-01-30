variable "region" {
  type    = string
  default = "fra1"
}

variable "vm_count" {
  type    = number
  default = 2
  description = "NUmber of instance"

  validation {
    condition = var.vm_count > 1
    error_message = "Minimum instances is 2"
  }
}

variable "vms_ssh_name" {
  type = string
  description = "SSH key name from Digital ocean account"
}

variable "database_user" {
  type = string
  default = "database_user"
  description = "Default user name"
}
variable "database_version" {
  type = string
  default = "15"
  description = "Default database version"
}
variable "do_token" {
  type = string
}

variable "region" {
  type    = string
  default = "fra1"
}

variable "vm_count" {
  type        = number
  default     = 2
  description = "Numbr of the instances"

  validation {
    condition     = var.vm_count > 1
    error_message = "number of droplet instances has to be greater than 2"
  }
}
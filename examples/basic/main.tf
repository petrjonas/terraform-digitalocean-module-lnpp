terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~>2.0.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

# example of use
module "lnpp" {
  source       = "../.."
  region       = var.region
  vms_ssh_name = "mpro_local"
  vm_count  = 3
}

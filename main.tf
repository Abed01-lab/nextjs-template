terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = ">= 2.8.0"
    }
  }
}

provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

resource "digitalocean_project" "playground" {
  name        = var.project_name
  description = "A project to represent development resources."
  purpose     = "Web Application"
  environment = "Development"
  resources   = [digitalocean_droplet.server.urn]
}

resource "digitalocean_droplet" "server" {
  # Obtain your ssh_key id number via your account. See Document https://developers.digitalocean.com/documentation/v2/#list-all-keys
  ssh_keys           = [data.digitalocean_ssh_key.personal_pc.fingerprint]
  image              = var.ubuntu
  region             = var.do_ams3
  size               = "s-1vcpu-1gb"
  backups            = true
  ipv6               = true
  name               = var.droplet_name
  user_data          = templatefile("${path.module}/cloudinit.tpl", {
      db_password = var.db_password
  })

  connection {
      host     = self.ipv4_address
      type     = "ssh"
      private_key = file("~/.ssh/id_rsa")
      user     = "root"
      timeout  = "2m"
    }
}

data "digitalocean_ssh_key" "personal_pc" {
  name       = var.ssh_key
}

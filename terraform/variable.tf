# ####

# Current Available Datacenter Regions

# As of 28-05-2017

#

variable "project_name" {
  type        = string
  default     = "project"
  description = "The name of the DigitalOcean project."
}

variable "droplet_name" {
  type        = string
  default     = "server"
  description = "The name of the DigitalOcean droplet."
}

variable "do_ams2" {
  description = "Digital Ocean Amsterdam Data Center 2"
  default     = "ams2"
}

variable "do_ams3" {
  description = "Digital Ocean Amsterdam Data Center 3"
  default     = "ams3"
}

variable "do_blr1" {
  description = "Digital Ocean Bangalore Data Center 1"
  default     = "blr1"
}

variable "do_fra1" {
  description = "Digital Ocean Frankfurt Data Center 1"
  default     = "fra1"
}

variable "do_lon1" {
  description = "Digital Ocean London Data Center 1"
  default     = "lon1"
}

variable "do_nyc1" {
  description = "Digital Ocean New York Data Center 1"
  default     = "nyc1"
}

variable "do_nyc2" {
  description = "Digital Ocean New York Data Center 2"
  default     = "nyc2"
}

variable "do_nyc3" {
  description = "Digital Ocean New York Data Center 3"
  default     = "nyc3"
}

variable "do_sfo1" {
  description = "Digital Ocean San Francisco Data Center 1"
  default     = "sfo1"
}

variable "do_sgp1" {
  description = "Digital Ocean Singapore Data Center 1"
  default     = "sgp1"
}

variable "do_tor1" {
  description = "Digital Ocean Toronto Datacenter 1"
  default     = "tor1"
}

# Default Os

variable "ubuntu" {
  description = "Default LTS"
  default     = "ubuntu-24-04-x64"
}

variable "centos" {
  description = "Default Centos"
  default     = "centos-83-x64"
}

variable "ssh_key" {
  type = string
  default = "personal_pc"
  description = "What is the name of the ssh key"
}

variable "db_password" {
  type = string
  default = "abed123123"
  description = "Choose a strong password for your postgres database"
}

variable "domain" {
  type = string
  default = "taskapm.com"
  description = "The domain you would like your application to have -- example \"example.com\""
}

variable "email" {
  type = string
  default = "abedharirii@gmail.com"
  description = "The email that is bounded to the domain ssl"
}
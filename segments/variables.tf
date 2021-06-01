variable "name" {
  type = string
}

variable "cidr" {
  type = string
}
variable "domain_name" {
  type = string
}

variable "dhcp_ranges" {
  type = list(string)
}

variable "dns_servers" {
  type = list(string)
}

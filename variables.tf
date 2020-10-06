
variable "segment_count" {
  type = number
}

variable "segment_domain_name" {
  type = string
}
variable "segment_name" {
  type = string
}


variable "segment_dhcp_start" {
  type = number
}
variable "segment_dhcp_end" {
  type = number
}


variable "segment_subnet" {
  type = string
}

variable "segment_subnet_mask" {
  type = number
}


variable "vmc_token" {
  type = string
}
variable "nsxt_proxy_host" {
  type = string
}

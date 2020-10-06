provider "nsxt" {
  host                 = var.nsxt_proxy_host
  vmc_token            = var.vmc_token
  allow_unverified_ssl = true
  enforcement_point    = "vmc-enforcementpoint"
}

module "segments" {
  source      = "./segments"
  count       = var.segment_count
  name        = "${var.segment_name}-${count.index}"
  cidr        = "${var.segment_subnet}.${count.index}.1/${var.segment_subnet_mask}"
  dhcp_ranges = ["${var.segment_subnet}.${count.index}.${var.segment_dhcp_start}-${var.segment_subnet}.${count.index}.${var.segment_dhcp_end}"]
  domain_name = var.segment_domain_name
}


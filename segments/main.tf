data "nsxt_policy_transport_zone" "tz" {
  display_name = "vmc-overlay-tz"
}

resource "nsxt_policy_segment" "segments" {
  display_name        = var.name
  domain_name         = var.domain_name
  transport_zone_path = data.nsxt_policy_transport_zone.tz.path
  connectivity_path   = "/infra/tier-1s/cgw"

  subnet {
    cidr        = var.cidr
    dhcp_ranges = var.dhcp_ranges
  }
}



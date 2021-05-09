module "datasources" {
  source       = "./datasources"
  tenancy_ocid = var.tenancy_ocid
}

module "vcn" {
  source       = "./vcn"
  tenancy_ocid = var.tenancy_ocid
  app_tag = var.app_tag
  compartment_ocid = var.compartment_ocid
  environment = var.environment
  fingerprint = var.fingerprint
  home_region = var.home_region
  private_key_password = var.private_key_password
  private_key_path = var.private_key_path
  region = var.region
  user_ocid = var.user_ocid
  vcn_cidr = var.vcn[0].vcn_cidr
  vcn_dns_label = var.vcn[0].vcn_dns_label
  vcn_name = var.vcn[0].vcn_name
  subnet_cidr_block = var.vcn[0].subnet[0].subnet_cidr_block
  oci_core_route_table = var.vcn[0].subnet[0].oci_core_route_table
  subnet_display_name = var.vcn[0].subnet[0].subnet_name
  subnet_dns_label = var.vcn[0].subnet[0].subnet_dns_label
  subnet_prohibit_public_ip_on_vnic = var.vcn[0].subnet[0].subnet_prohibit_public_ip_on_vnic

}

output "show-ads1" {
  value = module.datasources.show-ads-module
}

output "show-json" {
  value = var.vcn
  }
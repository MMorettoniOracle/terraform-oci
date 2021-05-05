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
  vcn_cidr = var.vcn_cidr
  vcn_dns_label = var.vcn_dns_label
  vcn_name = var.vcn_name
}

output "show-ads1" {
  value = module.datasources.show-ads-module
}
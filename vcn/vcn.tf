resource "oci_core_vcn" "tenantVCN" {
  compartment_id = var.compartment_ocid
  display_name = var.vcn_name
  dns_label = var.vcn_dns_label
  freeform_tags = {"Operations" = "42"}
  cidr_block = var.vcn_cidr
}
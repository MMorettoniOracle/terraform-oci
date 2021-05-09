resource "oci_core_vcn" "tenantVCN" {
  compartment_id = var.compartment_ocid
  display_name = var.vcn_name
  dns_label = var.vcn_dns_label
  freeform_tags = {"Operations" = "42"}
  cidr_block = var.vcn_cidr
}

resource "oci_core_subnet" "TestSubnet" {
  #Required
  cidr_block = var.subnet_cidr_block
  compartment_id = var.compartment_ocid
  vcn_id = oci_core_vcn.tenantVCN.id

  #Optional


  display_name = var.subnet_display_name
  dns_label = var.subnet_dns_label

  prohibit_public_ip_on_vnic = var.subnet_prohibit_public_ip_on_vnic

}
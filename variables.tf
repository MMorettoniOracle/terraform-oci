variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "private_key_password" {}
variable "app_tag" {}
variable "environment" {}
variable "home_region" {}
variable "region" {}
variable "vcn" {
  type = list(
  object({
    vcn_name = string
    vcn_dns_label = string
    vcn_cidr = string
    subnet = list(object({
      subnet_name = string
      subnet_cidr_block = string
      subnet_display_name = string
      subnet_dns_label = string
      subnet_prohibit_public_ip_on_vnic = bool
      oci_core_route_table = string
    }))
  })
  )
}
variable "compartment_ocid" {}

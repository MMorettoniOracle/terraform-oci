# Get a list of Availability Domains
data "oci_identity_availability_domains" "ads-module" {
  compartment_id = var.tenancy_ocid
}


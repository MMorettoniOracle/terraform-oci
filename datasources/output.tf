# Output the result
output "show-ads-module" {
  value = data.oci_identity_availability_domains.ads-module.availability_domains
}
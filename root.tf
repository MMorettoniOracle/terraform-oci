module "datasources" {
  source       = "./datasources"
  tenancy_ocid = var.tenancy_ocid
}

output "show-ads1" {
  value = module.datasources.show-ads-module
}
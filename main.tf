locals {
  group = var.cloud_provider == "ibm" ? module.ibm[0].group : (var.cloud_provider == "azure" ? module.azure[0].group : {})
}

module "ibm" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-resource-group"
  count = var.cloud_provider == "ibm" ? 1 : 0

  resource_group_name = var.resource_group_name
  provision           = var.provision
  sync                = var.sync
}

module "azure" {
  source = "github.com/cloud-native-toolkit/terraform-azure-resource-group"
  count = var.cloud_provider == "azure" ? 1 : 0

  resource_group_name = var.resource_group_name
  provision           = var.provision
  region              = var.region
  sync                = var.sync
}


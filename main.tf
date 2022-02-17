locals {
  group = var.cloud_provider == "ibm" ? module.ibm.group : (var.cloud_provider == "azure" ? module.azure.group : {})
}

module "ibm" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-resource-group"

  enabled             = var.cloud_provider == "ibm"
  resource_group_name = var.resource_group_name
  provision           = var.provision
  sync                = var.sync
}

module "azure" {
  source = "github.com/cloud-native-toolkit/terraform-azure-resource-group"

  enabled             = var.cloud_provider == "azure"
  resource_group_name = var.resource_group_name
  provision           = var.provision
  region              = var.region
  sync                = var.sync
}


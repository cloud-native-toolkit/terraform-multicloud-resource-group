output "name" {
  description = "The name of the resource group"
  value       = var.resource_group_name
  depends_on  = [module.azure, module.ibm]
}

output "id" {
  description = "The id of the resource group"
  value       = lookup(local.group, "id", "")
}

output "group" {
  description = "The resource group object"
  value       = local.group
}

output "provision" {
  description = "Flag indicating whether the resource group was provisioned"
  value       = var.provision
}

output "sync" {
  description = "Value used to order the provisioning of the resource group"
  value       = var.resource_group_name
  depends_on  = [module.azure, module.ibm]
}

output "cloud_provider" {
  value = var.cloud_provider
}

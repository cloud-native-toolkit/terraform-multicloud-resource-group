variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "provision" {
  type        = bool
  description = "Flag indicating that the resource group should be created"
  default     = true
}

variable "sync" {
  type        = string
  description = "Value used to order the provisioning of the resource group"
  default     = ""
}

variable "cloud_provider" {
  type        = string
  description = "The cloud provider where the VPC resource should be provisioned. Valid values are 'ibm' and 'aws'"
}

variable "region" {
  type        = string
  description = "The region where the resource group should be provisioned"
  default     = ""
}

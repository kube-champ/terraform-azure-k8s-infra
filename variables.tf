## Required Variables

variable "name" {
  description = "A general name that will be used on the resources"
  type        = string
}

variable "public_dns_zone_enabled" {
  description = "A flag whether the public DNS zone should be created"
  type        = bool

  default = false
}

variable "private_dns_zone_enabled" {
  description = "A flag whether the private DNS zone should be created"
  type        = bool

  default = false
}

variable "public_dns_zone" {
  description = "A public DNS Zone name"
  type        = string

  default = ""
}

variable "private_dns_zone" {
  description = "A private DNS Zone name"
  type        = string

  default = ""
}

variable "environment" {
  description = "The environment name on which these resources are deployed"
  type        = string

  default = "dev"
}

variable "az_location" {
  description = "The azure location on which the resources will be deployed"
  type        = string

  default = "West Europe"
}

variable "vnet_address_space" {
  description = "The vnet address space"
  type        = string

  default = "10.0.0.0/8"
}

variable "subnets" {
  description = "A map of subnets"
  type        = map(string)

  default = {
    main = "10.1.0.0/16"
  }
}

variable "nsgs" {
  description = "A list of NSG names"
  type        = list(string)

  default = []
}

variable "nsg_rules" {
  description = "A map of NSG rules"
  type        = map(map(string))

  default = {}
}


variable "tags" {
  description = "Additional tags to be attached to the resources"
  type        = map(string)

  default = {}
}

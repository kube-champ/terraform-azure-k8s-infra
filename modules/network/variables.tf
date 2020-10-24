variable "name" {
  description = "A general name that will be used on the resources"
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "az_location" {
  type = string
}

variable "environment" {
  type = string
}

variable "address_space" {
  default = "10.0.0.0/8"
}

variable "subnets" {
  type = map(string)
}

variable "nsgs" {
  type = list(string)
}

variable "nsg_rules" {
  type = map(map(string))
}

variable "tags" {
  type = object({})

  default = {}
}

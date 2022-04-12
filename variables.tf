variable "rgName" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Location of all the resources"
}

variable "tags" {
  type = map(any)
  default = {
    "env"   = "test"
    "group" = "terraform"
  }

}
variable "vnetName" {
  type        = string
  description = "This is a Virtual Network name"

}

variable "subnetName" {
  type = string

}

variable "publicIPName" {
  type = string
}

variable "nsgName" {
  type = string

}
variable "nicName" {
  type = string

}

variable "vmName" {
  type = string
}

variable "vmSize" {
  type = string
}
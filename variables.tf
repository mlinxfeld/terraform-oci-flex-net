variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}
variable "private_key_oci" {}
variable "public_key_oci" {}

variable "VCN-CIDRs" {
  type = list(string)
  default = ["10.0.0.0/16","192.168.0.0/16"]
#  default = ["10.0.0.0/24","192.168.0.0/16"]   
}

variable "WebSubnet-CIDR" {
  default = "10.0.0.0/24"
#  default = "10.0.0.0/30"
}

variable "BackendSubnet-CIDR" {
  default = "192.168.0.0/24"
}

variable "VCNname" {
  default = "FoggyKitchenVCN"
}

variable "Shapes" {
 default = ["VM.Standard.E3.Flex"]
}

variable "OsImage" {
  default = "Oracle-Linux-7.8-2020.05.26-0"
}

variable "service_ports" {
  default = [80,443,22]
}


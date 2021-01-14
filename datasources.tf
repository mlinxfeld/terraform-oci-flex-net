data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

data "oci_core_images" "OSImageLocal" {
  compartment_id = var.compartment_ocid
  display_name   = var.OsImage
}


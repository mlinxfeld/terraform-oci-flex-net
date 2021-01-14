resource "oci_core_instance" "FoggyKitchenBackendServer" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.FoggyKitchenCompartment.id
  display_name = "FoggyKitchenBackendServer"
  shape = var.Shapes[0]
  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.OSImageLocal.images[0], "id")
  }
  metadata = {
      ssh_authorized_keys = file(var.public_key_oci)
  }
  create_vnic_details {
     subnet_id = oci_core_subnet.FoggyKitchenBackendSubnet.id
     assign_public_ip = false
  }
  shape_config {
      memory_in_gbs = 1
      ocpus = 1
  }
}

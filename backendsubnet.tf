resource "oci_core_subnet" "FoggyKitchenBackendSubnet" {
  cidr_block = var.BackendSubnet-CIDR 
  display_name = "FoggyKitchenBackendSubnet"
  dns_label = "FoggyKitchenN2"
  compartment_id = oci_identity_compartment.FoggyKitchenCompartment.id
  vcn_id = oci_core_virtual_network.FoggyKitchenVCN.id
  route_table_id = oci_core_route_table.FoggyKitchenRouteTableViaNAT.id
  dhcp_options_id = oci_core_dhcp_options.FoggyKitchenDhcpOptions1.id
  security_list_ids = [oci_core_security_list.FoggyKitchenSecurityList2.id]
  prohibit_public_ip_on_vnic = true
}



resource "oci_core_security_list" "FoggyKitchenSecurityList1" {
    compartment_id = oci_identity_compartment.FoggyKitchenCompartment.id
    display_name = "FoggyKitchenSecurityList"
    vcn_id = oci_core_virtual_network.FoggyKitchenVCN.id
    
    egress_security_rules {
        protocol = "6"
        destination = "0.0.0.0/0"
    }
    
    dynamic "ingress_security_rules" {
    for_each = var.service_ports
    content {
        protocol = "6"
        source = "0.0.0.0/0"
        tcp_options {
            max = ingress_security_rules.value
            min = ingress_security_rules.value
            }
        }
    }

    ingress_security_rules {
        protocol = "6"
        source = var.VCN-CIDRs[0]
    }
}

resource "oci_core_security_list" "FoggyKitchenSecurityList2" {
    compartment_id = oci_identity_compartment.FoggyKitchenCompartment.id
    display_name = "FoggyKitchenSecurityList"
    vcn_id = oci_core_virtual_network.FoggyKitchenVCN.id
    
    egress_security_rules {
        protocol = "6"
        destination = "0.0.0.0/0"
    }
    
    dynamic "ingress_security_rules" {
    for_each = var.service_ports
    content {
        protocol = "6"
        source = "0.0.0.0/0"
        tcp_options {
            max = ingress_security_rules.value
            min = ingress_security_rules.value
            }
        }
    }

    ingress_security_rules {
        protocol = "6"
        source = var.VCN-CIDRs[1]
    }
}
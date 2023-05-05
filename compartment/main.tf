#####################################################
# Terraform
#####################################################
terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

#####################################################
# Locals
#####################################################

#####################################################
# Resources
#####################################################
resource "oci_identity_compartment" "this" {
  compartment_id = var.tenancy_ocid
  description    = "Compartment for Terraform resources."
  name           = "${var.name_prefix}-compartment"
}

#####################################################
# Data
#####################################################

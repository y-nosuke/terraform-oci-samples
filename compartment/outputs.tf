#####################################################
# Outputs
#####################################################
output "compartment-name" {
  value = oci_identity_compartment.this.name
}

output "compartment-OCID" {
  value = oci_identity_compartment.this.id
}

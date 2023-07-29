resource "oci_core_instance" "test_instance" {
  availability_domain = oci_core_subnet.test_web_subnet.availability_domain # 必須
  compartment_id      = var.compartment_ocid                                # 必須
  shape               = var.instance_shape                                  # 必須
  display_name        = var.instance_display_name
  create_vnic_details {
    subnet_id = oci_core_subnet.test_web_subnet.id
  }
  source_details {
    source_id   = var.instance_image_ocid[var.region]
    source_type = "image"
  }
  metadata = {
    # ssh_authorized_keys = var.ssh_public_key
    ssh_authorized_keys = file("~/.ssh/id_rsa.pub")
  }
  # defined_tags = { "${var.defined_tag}" = var.defined_tag_value }
}

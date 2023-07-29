resource "oci_database_db_system" "test_db_system" {
  availability_domain = oci_core_subnet.test_db_subnet.availability_domain # 必須
  compartment_id      = var.compartment_ocid                               # 必須
  database_edition    = var.db_system_database_edition                     # 必須
  db_home {                                                                # 必須
    database {
      admin_password = var.db_system_db_home_database_admin_password
      db_name        = var.db_system_db_home_database_db_name
    }
    db_version   = var.db_system_db_home_db_version
    display_name = var.db_system_db_home_display_name
  }
  hostname                = var.db_system_hostname
  shape                   = var.db_system_shape
  ssh_public_keys         = [file("~/.ssh/id_rsa.pub")]
  subnet_id               = oci_core_subnet.test_db_subnet.id
  cpu_core_count          = var.db_system_cpu_core_count
  display_name            = var.db_system_display_name
  node_count              = var.db_system_node_count
  data_storage_size_in_gb = 4096
}

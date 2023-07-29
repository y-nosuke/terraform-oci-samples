variable "instance_shape" {
  default = "VM.Standard2.1"
}
variable "instance_display_name" {}
variable "instance_image_ocid" {
  type = map(string)
  default = {
    ap-osaka-1 = "ocid1.image.oc1.ap-osaka-1.aaaaaaaapx2vn7vl4yjj76l6rlmnot6t6v2biatbhtrvqoyefwsctqnl5rnq"
  }
}
# variable "ssh_public_key" {}

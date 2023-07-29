variable "compartment_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaafdyjyrt3pk4uobxi3znaisln4w3piz7x46ysbbqv4rt54yqwztga"
}

# 多くのリソースでADを指定することがあるので、テナンシーのAD名をリストで取得しておきます
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

# タグでリソースを管理するために、宣言をしてきます
# variable "defined_tag" {
#   default = "sample.tag"
# }

# variable "defined_tag_value" {
#   default = "basic-resource"
# }

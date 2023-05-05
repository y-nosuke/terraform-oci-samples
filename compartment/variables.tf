#####################################################
# Variables
#####################################################
variable "tenancy_ocid" {
  type        = string
  description = "tenancy_ocid"
}

variable "user_ocid" {
  type        = string
  description = "user_ocid"
}

variable "private_key_path" {
  type        = string
  description = "private_key_path"
}

variable "fingerprint" {
  type        = string
  description = "fingerprint"
}

variable "region" {
  type        = string
  description = "region"
  default     = "ap-osaka-1"
}

variable "name_prefix" {
  type        = string
  description = "名前に付けるプレフィックス"
}

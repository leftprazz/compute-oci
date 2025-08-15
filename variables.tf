variable "compartment_ocid" {
  type = string
}

variable "subnet_ocid" {
  type = string
}

variable "availability_domain" {
  type = string
}

variable "instance_name" {
  type    = string
  default = "a1-flex"
}

variable "hostname_label" {
  type    = string
  default = null
}

variable "ocpus" {
  type    = number
  default = 2
}

variable "memory_gbs" {
  type    = number
  default = 12
}

variable "image_ocid" {
  type = string
}

variable "boot_volume_size_gb" {
  type    = number
  default = 50
}

variable "assign_public_ip" {
  type    = bool
  default = true
}

variable "nsg_ids" {
  type    = list(string)
  default = []
}

variable "ssh_authorized_keys" {
  type = string
}

variable "user_data_b64" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map(string)
  default = { "managed-by" = "terraform" }
}

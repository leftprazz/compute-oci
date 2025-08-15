variable "compartment_ocid" {
  type = string
}

variable "subnet_ocid" {
  type = string
}

variable "availability_domain" {
  description = "Nama AD, contoh: Uocm:ap-batam-1"
  type        = string
}

variable "instance_name" {
  type    = string
  default = "a1-flex"
}

variable "hostname_label" {
  type    = string
  default = null
}

variable "assign_public_ip" {
  type    = bool
  default = true
}

variable "nsg_ids" {
  type    = list(string)
  default = []
}

# Ampere A1 shape config (flex)
variable "ocpus" {
  type    = number
  default = 2 # 1–4 OCPU (atau sesuai kuota)
}

variable "memory_gbs" {
  type    = number
  default = 12 # 1–24 GB (3 GB per OCPU min. rekomendasi A1)
}

# Image & boot volume
variable "image_ocid" {
  type = string
}

variable "boot_volume_size_gb" {
  type    = number
  default = 50
}

# Access & cloud-init
variable "ssh_authorized_keys" {
  type = string
}

# Base64 cloud-init (optional). Set "" kalau tak pakai
variable "user_data_b64" {
  type    = string
  default = ""
}

variable "tags" {
  type    = map(string)
  default = {}
}

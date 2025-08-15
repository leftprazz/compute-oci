terraform {
  required_version = ">= 1.4.0"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.0.0"
    }
  }
}

provider "oci" {
  config_file_profile = "DEFAULT"
  region              = "ap-batam-1"
}


module "compute_a1" {
  source = "./modules/compute-oci"

  compartment_ocid    = var.compartment_ocid
  subnet_ocid         = var.subnet_ocid
  availability_domain = var.availability_domain

  instance_name  = var.instance_name
  hostname_label = var.hostname_label

  # Ampere A1 Flex
  ocpus      = var.ocpus        # misal 2
  memory_gbs = var.memory_gbs   # misal 12

  image_ocid          = var.image_ocid
  boot_volume_size_gb = var.boot_volume_size_gb

  assign_public_ip    = var.assign_public_ip
  nsg_ids             = var.nsg_ids

  ssh_authorized_keys = var.ssh_authorized_keys
  user_data_b64       = var.user_data_b64
  tags                = var.tags
}

output "public_ip"  { value = module.compute_a1.public_ip }
output "private_ip" { value = module.compute_a1.private_ip }

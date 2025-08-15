output "instance_id" { value = oci_core_instance.this.id }
output "public_ip"   { value = try(oci_core_instance.this.public_ip, null) }
output "private_ip"  { value = oci_core_instance.this.private_ip }
output "display_name"{ value = oci_core_instance.this.display_name }

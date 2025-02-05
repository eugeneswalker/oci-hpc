output "bastion" {
  value = oci_core_instance.bastion.public_ip
}

output "private_ips" {
  value = join(" ", local.cluster_instances_ips)
}

output "backup" {
  value = var.slurm_ha ? oci_core_instance.backup[0].public_ip : "No Slurm Backup Defined"
}
data "ibm_container_cluster" "FreeCluster" {
  name = "mycluster-free"
}

output "FreeCluster" {
  value = data.ibm_container_cluster.FreeCluster
  sensitive = true
}
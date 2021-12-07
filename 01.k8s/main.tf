output "Zones" {
  value = data.ibm_is_zones.Zones
}

resource "ibm_container_vpc_cluster" "cluster" {
  name              = "my_vpc_cluster"
  vpc_id            = data.ibm_is_vpc.VpcDmzr.id
  flavor            = "bx2.2x8"
  worker_count      = "1"
  resource_group_id = data.ibm_resource_group.ResourceGroup.id
  zones {
      subnet_id = data.ibm_is_vpc.VpcDmzr.subnets[0].id
      name      = data.ibm_is_zones.Zones.zones[0]
    }
}
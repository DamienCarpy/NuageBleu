data ibm_resource_group "ResourceGroup" {
    name = "TestDca"
}

data "ibm_is_zones" "Zones" {
  region = "eu-fr2"
}

data "ibm_is_vpc" "VpcDmzr" {
  name = "vpc-dmzr-npr-tink1"
}

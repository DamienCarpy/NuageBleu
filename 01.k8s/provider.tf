terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

provider "ibm" {
  # visibility       = "private"
  region           = "bnpp_eu"
  ibmcloud_api_key = var.ibmcloud_api_key
}
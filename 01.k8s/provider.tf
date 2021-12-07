terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

provider "ibm" {
  # visibility       = "private"
  region           = "eu-fr2"
  ibmcloud_api_key = var.ibmcloud_api_key
}
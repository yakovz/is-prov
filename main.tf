terraform {
  required_providers {
    intersight = {
      source = "CiscoDevNet/intersight"
      version = "1.0.11"
    }
  }
}

provider "intersight" {
  apikey = var.api_key
  secretkey = "/Users/yshtoots/Downloads/secrets.txt"
  endpoint = var.endpoint
}

data "intersight_organization_organization" "default" {
  name = "default"
}


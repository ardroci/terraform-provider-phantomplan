# Copyright (c) HashiCorp, Inc.

terraform {
  required_providers {
    phantomplan = {
      source = "hashicorp.com/edu/phantomplan"
    }
  }
}

provider "phantomplan" {
}

data "phantomplan_external" "example" {
  program = ["bash", "${path.module}/local-exec.sh"]
}

output "example" {
  value = data.phantomplan_external.example
}
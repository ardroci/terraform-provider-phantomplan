---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "phantomplan_external Data Source - phantomplan"
subcategory: ""
description: |-
  The external data source allows an external program implementing a specific protocol (defined below) to act as a data source, exposing arbitrary data for use elsewhere in the Terraform configuration.
  Warning This mechanism is provided as an "escape hatch" for exceptional situations where a first-class Terraform provider is not more appropriate. Its capabilities are limited in comparison to a true data source, and implementing a data source via an external program is likely to hurt the portability of your Terraform configuration by creating dependencies on external programs and libraries that may not be available (or may need to be used differently) on different operating systems.
  Warning Terraform Enterprise does not guarantee availability of any particular language runtimes or external programs beyond standard shell utilities, so it is not recommended to use this data source within configurations that are applied within Terraform Enterprise.
---

# phantomplan_external (Data Source)

The `external` data source allows an external program implementing a specific protocol (defined below) to act as a data source, exposing arbitrary data for use elsewhere in the Terraform configuration.

**Warning** This mechanism is provided as an "escape hatch" for exceptional situations where a first-class Terraform provider is not more appropriate. Its capabilities are limited in comparison to a true data source, and implementing a data source via an external program is likely to hurt the portability of your Terraform configuration by creating dependencies on external programs and libraries that may not be available (or may need to be used differently) on different operating systems.

**Warning** Terraform Enterprise does not guarantee availability of any particular language runtimes or external programs beyond standard shell utilities, so it is not recommended to use this data source within configurations that are applied within Terraform Enterprise.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `program` (List of String) A list of strings, whose first element is the program to run and whose subsequent elements are optional command line arguments to the program. Terraform does not execute the program through a shell, so it is not necessary to escape shell metacharacters nor add quotes around arguments containing spaces.

### Optional

- `query` (Map of String) A map of string values to pass to the external program as the query arguments. If not supplied, the program will receive an empty object as its input.
- `working_dir` (String) Working directory of the program. If not supplied, the program will run in the current directory.

### Read-Only

- `id` (String) The id of the data source. This will always be set to `-`
- `result` (Map of String) A map of string values returned from the external program.

variable "database_tools_database_tools_endpoint_services_lookup" {
  description = <<EOT
Map of database_tools_database_tools_endpoint_services_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    name           = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


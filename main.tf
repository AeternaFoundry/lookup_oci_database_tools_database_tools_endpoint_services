data "oci_database_tools_database_tools_endpoint_services" "database_tools_database_tools_endpoint_services_lookup" {
  for_each = var.database_tools_database_tools_endpoint_services_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  name           = each.value.name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


data "oci_core_instance_devices" "core_instance_devices_lookup" {
  for_each = var.core_instance_devices_lookup

  instance_id  = each.value.instance_id
  is_available = each.value.is_available
  name         = each.value.name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}


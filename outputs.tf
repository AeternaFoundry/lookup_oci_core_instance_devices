output "core_instance_devices_lookup_id" {
  description = "Map of id values across all core_instance_devices_lookup, keyed the same as var.core_instance_devices_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_instance_devices.core_instance_devices_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_instance_devices_lookup_devices" {
  description = "Map of devices values across all core_instance_devices_lookup, keyed the same as var.core_instance_devices_lookup except keys with no devices are omitted"
  value       = { for k, v in data.oci_core_instance_devices.core_instance_devices_lookup : k => v.devices if v.devices != null && length(v.devices) > 0 }
}
output "core_instance_devices_lookup_filter" {
  description = "Map of filter values across all core_instance_devices_lookup, keyed the same as var.core_instance_devices_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_instance_devices.core_instance_devices_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_instance_devices_lookup_instance_id" {
  description = "Map of instance_id values across all core_instance_devices_lookup, keyed the same as var.core_instance_devices_lookup except keys with no instance_id are omitted"
  value       = { for k, v in data.oci_core_instance_devices.core_instance_devices_lookup : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "core_instance_devices_lookup_is_available" {
  description = "Map of is_available values across all core_instance_devices_lookup, keyed the same as var.core_instance_devices_lookup except keys with no is_available are omitted"
  value       = { for k, v in data.oci_core_instance_devices.core_instance_devices_lookup : k => v.is_available if v.is_available != null }
}
output "core_instance_devices_lookup_name" {
  description = "Map of name values across all core_instance_devices_lookup, keyed the same as var.core_instance_devices_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_core_instance_devices.core_instance_devices_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}


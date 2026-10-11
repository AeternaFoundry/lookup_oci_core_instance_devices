variable "core_instance_devices_lookup" {
  description = <<EOT
Map of core_instance_devices_lookup, attributes below
Required:
    - instance_id
Optional:
    - is_available
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    instance_id  = string
    is_available = optional(bool)
    name         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}


variable "a_record_sets" {
  description = <<EOT
Map of a_record_sets, attributes below
Required:
    - addresses
    - zone
Optional:
    - name
    - ttl
EOT

  type = map(object({
    addresses = set(string)
    zone      = string
    name      = optional(string)
    ttl       = optional(number)
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


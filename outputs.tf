output "a_record_sets_id" {
  description = "Map of id values across all a_record_sets, keyed the same as var.a_record_sets except keys with no id are omitted"
  value       = { for k, v in dns_a_record_set.a_record_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "a_record_sets_addresses" {
  description = "Map of addresses values across all a_record_sets, keyed the same as var.a_record_sets except keys with no addresses are omitted"
  value       = { for k, v in dns_a_record_set.a_record_sets : k => v.addresses if v.addresses != null && length(v.addresses) > 0 }
}
output "a_record_sets_name" {
  description = "Map of name values across all a_record_sets, keyed the same as var.a_record_sets except keys with no name are omitted"
  value       = { for k, v in dns_a_record_set.a_record_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "a_record_sets_ttl" {
  description = "Map of ttl values across all a_record_sets, keyed the same as var.a_record_sets except keys with no ttl are omitted"
  value       = { for k, v in dns_a_record_set.a_record_sets : k => v.ttl if v.ttl != null }
}
output "a_record_sets_zone" {
  description = "Map of zone values across all a_record_sets, keyed the same as var.a_record_sets except keys with no zone are omitted"
  value       = { for k, v in dns_a_record_set.a_record_sets : k => v.zone if v.zone != null && length(v.zone) > 0 }
}


resource "dns_a_record_set" "a_record_sets" {
  for_each = var.a_record_sets

  addresses = each.value.addresses
  zone      = each.value.zone
  name      = each.value.name
  ttl       = each.value.ttl
}


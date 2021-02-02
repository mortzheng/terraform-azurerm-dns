resource "azurerm_dns_zone" "dns_zone" {
  name = var.zone_name
  resource_group_name = var.resource_group_name
  tags = var.tags
}

resource "azurerm_dns_a_record" "record" {
  for_each = var.a_records

  name = each.value.name
  records = each.value.ip_addresses
  resource_group_name = var.resource_group_name
  ttl = 300
  zone_name = azurerm_dns_zone.dns_zone.name
}
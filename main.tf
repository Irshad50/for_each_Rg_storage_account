resource "azurerm_resource_group" "rg_boby" {
  for_each = var.rgs1
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_storage_account" "r_stg" {
  for_each                 = var.stg
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = azurerm_resource_group.rg_boby[each.value.resource_group_name].name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
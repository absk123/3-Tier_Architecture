resource "azurerm_storage_account" "todoappstorageaccount1" {
  for_each                 = var.todo
  name                     = each.key
  resource_group_name      = each.value.rg
  location                 = each.value.jgh
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
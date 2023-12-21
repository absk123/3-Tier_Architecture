resource "azurerm_resource_group" "todoappresourcegroup" {
  for_each = var.todo
  name     = each.key
  location = each.value.jgh
}
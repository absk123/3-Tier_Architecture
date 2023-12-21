resource "azurerm_subnet" "todoappsubnetwork" {
  for_each             = var.todo
  name                 = each.key
  resource_group_name  = each.value.rg
  virtual_network_name = each.value.vnet
  address_prefixes     = each.value.addsbnt

}
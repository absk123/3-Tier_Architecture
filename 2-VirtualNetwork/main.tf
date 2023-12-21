resource "azurerm_virtual_network" "todoappvirtualnetwork" {
  for_each            = var.todo
  name                = each.key
  location            = each.value.jgh
  resource_group_name = each.value.rg
  address_space       = each.value.addnet

}
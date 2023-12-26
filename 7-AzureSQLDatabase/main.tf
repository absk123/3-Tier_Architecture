resource "azurerm_sql_database" "todoappsqldatabase" {
  for_each            = var.todo
  name                = each.key
  resource_group_name = each.value.rg
  location            = each.value.location
  server_name         = each.value.name

}

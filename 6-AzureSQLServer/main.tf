resource "azurerm_sql_server" "todoappsqlserver" {
  for_each                     = var.todo
  name                         = each.key
  resource_group_name          = each.value.rg
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.login
  administrator_login_password = each.value.pass

}

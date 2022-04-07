resource "azurerm_network_interface_security_group_association" "netassociation" {
  network_interface_id      = azurerm_network_interface.networkinterface.id
  network_security_group_id = azurerm_network_security_group.sgfirewall.id
}
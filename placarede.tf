resource "azurerm_network_interface" "networkinterface" {
  name                = "placarede-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ip-rede"
    subnet_id                     = azurerm_subnet.sub_net.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}
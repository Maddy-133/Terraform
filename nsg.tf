resource "azurerm_network_security_group" "NSG" {
  name                = "mynsg1"
  location            = local.location
  resource_group_name = local.resource_group_name

  security_rule {
    name                       = "rdprule"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

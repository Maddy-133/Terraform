resource "azurerm_network_interface" "nic1" {
  name                = "nic1"
  location            = local.location
  resource_group_name = local.resource_group_name

  ip_configuration {
    name                          = "internal1"
    subnet_id                     = azurerm_subnet.subnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.publicip1.id
  }
  depends_on = [azurerm_subnet.subnetA]
}

resource "azurerm_network_interface" "nic2" {
  name                = "nic2"
  location            = local.location
  resource_group_name = local.resource_group_name

  ip_configuration {
    name                          = "internal2"
    subnet_id                     = azurerm_subnet.subnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.publicip2.id
  }
  depends_on = [azurerm_subnet.subnetA]
}

resource "azurerm_public_ip" "publicip1" {
  name                = "myfirstpublicip"
  resource_group_name = local.resource_group_name
  location            = local.location
  allocation_method   = "Static"
  depends_on          = [azurerm_resource_group.rg]
}

resource "azurerm_public_ip" "publicip2" {
  name                = "mysecondpublicip"
  resource_group_name = local.resource_group_name
  location            = local.location
  allocation_method   = "Static"
  depends_on          = [azurerm_resource_group.rg]
}

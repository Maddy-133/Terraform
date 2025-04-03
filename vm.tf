resource "azurerm_windows_virtual_machine" "virtualmachine1" {
  name                = "tg-vm1"
  resource_group_name = local.resource_group_name
  location            = local.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "Password123"
  network_interface_ids = [
    azurerm_network_interface.nic1.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  depends_on = [ azurerm_network_interface.nic1, azurerm_resource_group.rg ]
}

resource "azurerm_windows_virtual_machine" "virtualmachine2" {
  name                = "tg-vm2"
  resource_group_name = local.resource_group_name
  location            = local.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "Password123"
  network_interface_ids = [
    azurerm_network_interface.nic2.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
  depends_on = [ azurerm_network_interface.nic2, azurerm_resource_group.rg ]
}
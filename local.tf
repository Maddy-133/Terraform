locals {
  resource_group_name = "myrg"
  location            = "centralindia"
  virtual_network = {
    name          = "vnet1"
    address_space = "10.0.0.0/16"
  }
  subnets = [
    {
      name           = "subnet1"
      address_prefix = ["10.0.1.0/24"]
    },
    {
      name           = "subnet2"
      address_prefix = ["10.0.2.0/24"]
    }
  ]
}
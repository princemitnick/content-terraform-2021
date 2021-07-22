# Create subnet
resource "azurerm_subnet" "subnet" {
  name                 = "Robins"
  resource_group_name  = "<Add YOUR RESOURCE GROUP NAME>"
  virtual_network_name = azurerm_virtual_network.BatmanInc.name
  address_prefix       = "10.0.1.0/24"
}

# Create Tag
resource "azurerm_resource_group" "rg" {
  name     = "<Add YOUR RESOURCE GROUP NAME>"
  location = "centralus"
  tags = {
    Environment = "Terraform Getting Started"
    Team        = "Batman"
  }
}

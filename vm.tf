resource "azurerm_linux_virtual_machine" "linux_vm" {

  name                = var.vmName
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = var.vmSize
  admin_username      = "adminuser"

  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  admin_ssh_key {

    username   = "adminuser"
    public_key = tls_private_key.rsa-4096.public_key_openssh

  }

  os_disk {

    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"

  }

  source_image_reference {

    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"

  }

  computer_name                   = var.vmName
  disable_password_authentication = true

}
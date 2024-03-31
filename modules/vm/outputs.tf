output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

// Add other outputs specific to the VM module if needed

resource "azurerm_managed_disk" "data_disk_windows" {
  name                 = var.windows_name
  location             = var.location
  resource_group_name  = var.rg_name
  storage_account_type = var.sa_type
  create_option        = var.option
  disk_size_gb         = var.disk_size
  tags                 = var.tags
}

resource "azurerm_virtual_machine_data_disk_attachment" "assignment2-attach-win" {
  managed_disk_id    = azurerm_managed_disk.data_disk_windows.id
  virtual_machine_id = var.windows_id
  lun                = "20"
  caching            = var.caching_type
  depends_on         = [azurerm_managed_disk.data_disk_windows]
}

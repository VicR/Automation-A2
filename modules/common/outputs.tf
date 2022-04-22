output "law_name" {
  value = azurerm_log_analytics_workspace.a2_law.name
}

output "rsv_name" {
  value = azurerm_recovery_services_vault.a2_rsv.name
}

output "sa_name" {
  value = azurerm_storage_account.a2_sa.name
}

output "sa_uri" {
  value = azurerm_storage_account.a2_sa.primary_blob_endpoint
}

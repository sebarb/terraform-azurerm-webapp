resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = "log-${var.application_name}-${var.environment_name}"
  location            = var.location
  resource_group_name = "rg-${var.application_name}-${var.environment_name}"
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

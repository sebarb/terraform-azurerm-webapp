
resource "azurerm_resource_group" "resource_group" {
  name     = "rs-${var.application_name}-${var.environment_name}"
  location = var.location
}

resource "azurerm_service_plan" "service_plan" {
  name                = "service-plan-${var.application_name}-${var.environment_name}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = "webapp-${var.application_name}-${var.environment_name}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_service_plan.service_plan.location
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {

  }
}

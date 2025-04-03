resource "azurerm_storage_account" "staccount" {
    name = "stac${var.resource_group_name}-${var.environment}"
    resource_group_name = azurerm_resource_group.rg.name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    tags = var.tags
}
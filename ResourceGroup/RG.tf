resource "azurerm_resource_group" "create_rg" {
  count    = length(var.locations)
  name     = "my-test-candidate-${var.locations[count.index]}"
  location = var.locations[count.index]
}
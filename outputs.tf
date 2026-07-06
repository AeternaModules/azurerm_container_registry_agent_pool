output "container_registry_agent_pools" {
  description = "All container_registry_agent_pool resources"
  value       = azurerm_container_registry_agent_pool.container_registry_agent_pools
}
output "container_registry_agent_pools_container_registry_name" {
  description = "List of container_registry_name values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.container_registry_name]
}
output "container_registry_agent_pools_instance_count" {
  description = "List of instance_count values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.instance_count]
}
output "container_registry_agent_pools_location" {
  description = "List of location values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.location]
}
output "container_registry_agent_pools_name" {
  description = "List of name values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.name]
}
output "container_registry_agent_pools_resource_group_name" {
  description = "List of resource_group_name values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.resource_group_name]
}
output "container_registry_agent_pools_tags" {
  description = "List of tags values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.tags]
}
output "container_registry_agent_pools_tier" {
  description = "List of tier values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.tier]
}
output "container_registry_agent_pools_virtual_network_subnet_id" {
  description = "List of virtual_network_subnet_id values across all container_registry_agent_pools"
  value       = [for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : v.virtual_network_subnet_id]
}


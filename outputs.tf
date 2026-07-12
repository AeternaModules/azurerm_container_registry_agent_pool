output "container_registry_agent_pools_container_registry_name" {
  description = "Map of container_registry_name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.container_registry_name }
}
output "container_registry_agent_pools_instance_count" {
  description = "Map of instance_count values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.instance_count }
}
output "container_registry_agent_pools_location" {
  description = "Map of location values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.location }
}
output "container_registry_agent_pools_name" {
  description = "Map of name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.name }
}
output "container_registry_agent_pools_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.resource_group_name }
}
output "container_registry_agent_pools_tags" {
  description = "Map of tags values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.tags }
}
output "container_registry_agent_pools_tier" {
  description = "Map of tier values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.tier }
}
output "container_registry_agent_pools_virtual_network_subnet_id" {
  description = "Map of virtual_network_subnet_id values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.virtual_network_subnet_id }
}


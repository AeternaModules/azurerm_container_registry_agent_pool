output "container_registry_agent_pools_id" {
  description = "Map of id values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_registry_agent_pools_container_registry_name" {
  description = "Map of container_registry_name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.container_registry_name if v.container_registry_name != null && length(v.container_registry_name) > 0 }
}
output "container_registry_agent_pools_instance_count" {
  description = "Map of instance_count values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.instance_count if v.instance_count != null }
}
output "container_registry_agent_pools_location" {
  description = "Map of location values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.location if v.location != null && length(v.location) > 0 }
}
output "container_registry_agent_pools_name" {
  description = "Map of name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_registry_agent_pools_resource_group_name" {
  description = "Map of resource_group_name values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "container_registry_agent_pools_tags" {
  description = "Map of tags values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "container_registry_agent_pools_tier" {
  description = "Map of tier values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.tier if v.tier != null && length(v.tier) > 0 }
}
output "container_registry_agent_pools_virtual_network_subnet_id" {
  description = "Map of virtual_network_subnet_id values across all container_registry_agent_pools, keyed the same as var.container_registry_agent_pools"
  value       = { for k, v in azurerm_container_registry_agent_pool.container_registry_agent_pools : k => v.virtual_network_subnet_id if v.virtual_network_subnet_id != null && length(v.virtual_network_subnet_id) > 0 }
}


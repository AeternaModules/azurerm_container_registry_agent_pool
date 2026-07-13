variable "container_registry_agent_pools" {
  description = <<EOT
Map of container_registry_agent_pools, attributes below
Required:
    - container_registry_name
    - location
    - name
    - resource_group_name
Optional:
    - instance_count
    - tags
    - tier
    - virtual_network_subnet_id
EOT

  type = map(object({
    container_registry_name   = string
    location                  = string
    name                      = string
    resource_group_name       = string
    instance_count            = optional(number)
    tags                      = optional(map(string))
    tier                      = optional(string)
    virtual_network_subnet_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        length(v.name) >= 3 && length(v.name) <= 20
      )
    ])
    error_message = "must be between 3 and 20 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        length(v.container_registry_name) <= 50
      )
    ])
    error_message = "[from validate2.ContainerRegistryName: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        v.tier == null || (contains(["S1", "S2", "S3", "I6"], v.tier))
      )
    ])
    error_message = "must be one of: S1, S2, S3, I6"
  }
  validation {
    condition = alltrue([
      for k, v in var.container_registry_agent_pools : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


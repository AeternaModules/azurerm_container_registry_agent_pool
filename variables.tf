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
  # --- Unconfirmed validation candidates, derived from azurerm_container_registry_agent_pool's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) >= 3 && length(value) <= 20
  #   message:   must be between 3 and 20 characters
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: container_registry_name
  #   source:    [from validate2.ContainerRegistryName] !regexp.MustCompile(`^[a-zA-Z0-9]+$`).MatchString(value)
  # path: container_registry_name
  #   source:    [from validate2.ContainerRegistryName] 5 > len(value)
  # path: container_registry_name
  #   condition: length(value) <= 50
  #   message:   [from validate2.ContainerRegistryName: invalid when len(value) > 50]
  #   source:    [from validate2.ContainerRegistryName: invalid when len(value) > 50]
  # path: tier
  #   condition: contains(["S1", "S2", "S3", "I6"], value)
  #   message:   must be one of: S1, S2, S3, I6
  # path: virtual_network_subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: virtual_network_subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}


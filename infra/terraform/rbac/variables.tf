variable "subscription_id" {
  description = "Target environment subscription ID."
  type        = string

  validation {
    condition     = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.subscription_id))
    error_message = "subscription_id must be an Azure subscription GUID."
  }
}

variable "role_assignments" {
  description = "Reviewed workload and group role assignments keyed by stable logical name."
  type = map(object({
    scope                            = string
    role_definition_name             = string
    principal_id                     = string
    principal_type                   = string
    skip_service_principal_aad_check = optional(bool, false)
  }))

  validation {
    condition = alltrue([
      for assignment in values(var.role_assignments) :
      contains(["Group", "ServicePrincipal", "User"], assignment.principal_type)
    ])
    error_message = "RBAC principal_type must be Group, ServicePrincipal, or User."
  }

  validation {
    condition = alltrue([
      for assignment in values(var.role_assignments) :
      can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", assignment.principal_id))
    ])
    error_message = "Every RBAC principal_id must be an Entra object ID GUID."
  }

  validation {
    condition = alltrue([
      for assignment in values(var.role_assignments) :
      trimspace(assignment.role_definition_name) != ""
    ])
    error_message = "Every RBAC role_definition_name must be non-empty."
  }

  validation {
    condition = alltrue([
      for assignment in values(var.role_assignments) :
      !assignment.skip_service_principal_aad_check || assignment.principal_type == "ServicePrincipal"
    ])
    error_message = "skip_service_principal_aad_check is allowed only for ServicePrincipal assignments."
  }
}

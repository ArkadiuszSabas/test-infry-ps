locals {
  role_assignment_uuid_namespace = "6ba7b811-9dad-11d1-80b4-00c04fd430c8"
}

resource "azurerm_role_assignment" "this" {
  for_each = var.role_assignments

  name = uuidv5(local.role_assignment_uuid_namespace, lower(join("|", [
    each.value.scope,
    each.value.role_definition_name,
    each.value.principal_id,
  ])))

  scope                            = each.value.scope
  role_definition_name             = each.value.role_definition_name
  principal_id                     = each.value.principal_id
  principal_type                   = each.value.principal_type
  skip_service_principal_aad_check = each.value.skip_service_principal_aad_check

  lifecycle {
    precondition {
      condition = startswith(
        lower(each.value.scope),
        "/subscriptions/${lower(var.subscription_id)}/",
      )
      error_message = "RBAC assignment scope must belong to the target subscription."
    }
  }
}

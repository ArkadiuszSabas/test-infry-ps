output "role_assignment_ids" {
  value       = { for key, assignment in azurerm_role_assignment.this : key => assignment.id }
  description = "Created role assignment IDs keyed by reviewed logical name."
}

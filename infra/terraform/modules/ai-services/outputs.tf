output "document_intelligence_id" {
  description = "Document Intelligence account resource ID."
  value       = azurerm_cognitive_account.document_intelligence.id
}

output "document_intelligence_name" {
  description = "Document Intelligence account name."
  value       = azurerm_cognitive_account.document_intelligence.name
}

output "document_intelligence_endpoint" {
  description = "Document Intelligence endpoint."
  value       = azurerm_cognitive_account.document_intelligence.endpoint
}

output "document_intelligence_principal_id" {
  description = "Document Intelligence system-assigned managed identity principal ID."
  value       = azurerm_cognitive_account.document_intelligence.identity[0].principal_id
}

output "foundry_account_id" {
  description = "Azure AI Foundry account resource ID."
  value       = azurerm_cognitive_account.foundry.id
}

output "foundry_account_name" {
  description = "Azure AI Foundry account name."
  value       = azurerm_cognitive_account.foundry.name
}

output "foundry_endpoint" {
  description = "Azure AI Foundry account endpoint."
  value       = azurerm_cognitive_account.foundry.endpoint
}

output "foundry_project_id" {
  description = "Azure AI Foundry project resource ID."
  value       = azurerm_cognitive_account_project.foundry.id
}

output "foundry_project_name" {
  description = "Azure AI Foundry project name."
  value       = azurerm_cognitive_account_project.foundry.name
}

output "gpt_deployment_name" {
  description = "Configured GPT deployment name."
  value       = var.gpt_deployment.name
}

output "gpt_model_name" {
  description = "GPT model name."
  value       = var.gpt_deployment.model_name
}

output "gpt_model_version" {
  description = "GPT model version."
  value       = var.gpt_deployment.model_version
}

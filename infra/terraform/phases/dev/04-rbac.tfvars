subscription_id = "fe31d3c8-576f-4c09-913c-0635306834ff0"

# Replace every principal and scope from phase 02 outputs or the reviewed GitHub/Entra
# configuration. Object IDs, never application/client IDs, are required for principals.
role_assignments = {
  acr-pull-web = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPull"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WEB"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  acr-pull-api = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPull"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_API"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  acr-pull-api-migrator = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPull"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_API_MIGRATOR"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  acr-pull-llmmagic = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPull"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  acr-pull-worker = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPull"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  github-build-acr-push = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPush"
    principal_id                     = "REPLACE_GITHUB_BUILD_OIDC_OBJECT_ID"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  github-build-acr-read = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "Reader"
    principal_id                     = "REPLACE_GITHUB_BUILD_OIDC_OBJECT_ID"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  github-deploy-acr-pull = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "AcrPull"
    principal_id                     = "REPLACE_GITHUB_DEPLOY_OIDC_OBJECT_ID"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  github-deploy-acr-read = {
    scope                            = "REPLACE_PHASE_02_SCOPE_CONTAINER_REGISTRY"
    role_definition_name             = "Reader"
    principal_id                     = "REPLACE_GITHUB_DEPLOY_OIDC_OBJECT_ID"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  github-deploy-container-apps = {
    scope                            = "REPLACE_PHASE_02_SCOPE_RESOURCE_GROUP"
    role_definition_name             = "Container Apps Contributor"
    principal_id                     = "REPLACE_GITHUB_DEPLOY_OIDC_OBJECT_ID"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }

  api-inbox = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_INBOX"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_API"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }

  llmmagic-inbox = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_INBOX"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-ocr-artifacts = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_OCR_ARTIFACTS"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-preprocessed = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_PREPROCESSED"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-previews = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_PREVIEWS"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-quarantine = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_QUARANTINE"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }

  worker-archive = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_ARCHIVE"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  worker-inbox = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_INBOX"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  worker-ocr-artifacts = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_OCR_ARTIFACTS"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  worker-preprocessed = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_PREPROCESSED"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  worker-previews = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_PREVIEWS"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  worker-quarantine = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE_CONTAINER_QUARANTINE"
    role_definition_name             = "Storage Blob Data Contributor"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }

  document-intelligence-storage-read = {
    scope                            = "REPLACE_PHASE_02_SCOPE_STORAGE"
    role_definition_name             = "Storage Blob Data Reader"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_DOCUMENT_INTELLIGENCE"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-document-intelligence = {
    scope                            = "REPLACE_PHASE_02_SCOPE_DOCUMENT_INTELLIGENCE"
    role_definition_name             = "Cognitive Services User"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-foundry-user = {
    scope                            = "REPLACE_PHASE_02_SCOPE_FOUNDRY"
    role_definition_name             = "Cognitive Services User"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  llmmagic-foundry-openai = {
    scope                            = "REPLACE_PHASE_02_SCOPE_FOUNDRY"
    role_definition_name             = "Cognitive Services OpenAI User"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_LLMMAGIC"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }

  dapr-api-send-document-processing = {
    scope                            = "REPLACE_PHASE_02_SCOPE_QUEUE_DOCUMENT_PROCESSING"
    role_definition_name             = "Azure Service Bus Data Sender"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_DAPR_API"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  dapr-api-receive-processing-results = {
    scope                            = "REPLACE_PHASE_02_SCOPE_QUEUE_PROCESSING_RESULTS"
    role_definition_name             = "Azure Service Bus Data Receiver"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_DAPR_API"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  dapr-worker-receive-document-processing = {
    scope                            = "REPLACE_PHASE_02_SCOPE_QUEUE_DOCUMENT_PROCESSING"
    role_definition_name             = "Azure Service Bus Data Receiver"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_DAPR_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }
  dapr-worker-send-processing-results = {
    scope                            = "REPLACE_PHASE_02_SCOPE_QUEUE_PROCESSING_RESULTS"
    role_definition_name             = "Azure Service Bus Data Sender"
    principal_id                     = "REPLACE_PHASE_02_PRINCIPAL_DAPR_WORKER"
    principal_type                   = "ServicePrincipal"
    skip_service_principal_aad_check = true
  }

  # Replace both values from the reviewed ProService operator access matrix.
  proservice-operator = {
    scope                            = "REPLACE_PHASE_02_SCOPE_RESOURCE_GROUP"
    role_definition_name             = "REPLACE_APPROVED_PROSERVICE_OPERATOR_ROLE"
    principal_id                     = "REPLACE_PROSERVICE_OPERATOR_GROUP_OBJECT_ID"
    principal_type                   = "Group"
    skip_service_principal_aad_check = false
  }
}

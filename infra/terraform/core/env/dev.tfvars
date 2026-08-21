subscription_id                 = "fe31d3c8-576f-4c09-913c-0635306834ff0"
location                        = "swedencentral"
environment                     = "dev"
application_resource_group_name = "rg-ocr-dev-arksab"
network_resource_group_name     = "rg-ocr-dev-net-arksab"

# Replace with output container_apps_infrastructure_subnet_id from phase 01.
container_apps_infrastructure_subnet_id = "REPLACE_PHASE_01_CONTAINER_APPS_SUBNET_ID"

# Set true only after the matching ProService decisions are formally approved.
security_design_approved        = false
resource_provider_list_verified = false
runtime_dependencies_ready      = false

# Confirm global availability and replace the explicit tokens before planning.
resource_names = {
  key_vault                  = "REPLACE_KV_NAME"
  storage_account            = "REPLACE_STORAGE_NAME"
  container_registry         = "REPLACE_ACR_NAME"
  log_analytics              = "law-ocr-dev"
  application_insights       = "appi-ocr-dev"
  monitor_private_link       = "ampls-ocr-dev"
  service_bus                = "REPLACE_SERVICE_BUS_NAME"
  document_intelligence      = "REPLACE_DOCUMENT_INTELLIGENCE_NAME"
  foundry_account            = "REPLACE_FOUNDRY_ACCOUNT_NAME"
  foundry_project            = "aifp-ocr-dev"
  container_apps_environment = "cae-ocr-dev"
  postgresql                 = "REPLACE_POSTGRESQL_NAME"
}

workload_identities = {
  web                    = { name = "id-ocr-web-dev" }
  api                    = { name = "id-ocr-api-dev" }
  api-migrator           = { name = "id-ocr-api-migrator-dev" }
  dapr-servicebus-api    = { name = "id-ocr-dapr-sb-api-dev" }
  dapr-servicebus-worker = { name = "id-ocr-dapr-sb-worker-dev" }
  llmmagic               = { name = "id-ocr-llmmagic-dev" }
  worker                 = { name = "id-ocr-worker-dev" }
}

storage_containers = [
  "archive",
  "inbox",
  "ocr-artifacts",
  "preprocessed",
  "previews",
  "quarantine",
]

service_bus_queues = {
  document-processing = {
    dead_lettering_on_message_expiration = true
    default_message_ttl                  = "P14D"
    lock_duration                        = "PT1M"
    max_delivery_count                   = 10
    max_size_in_megabytes                = 1024
  }
  processing-results = {
    dead_lettering_on_message_expiration = true
    default_message_ttl                  = "P14D"
    lock_duration                        = "PT1M"
    max_delivery_count                   = 10
    max_size_in_megabytes                = 1024
  }
}

postgresql_database_names = ["db-ocr-dev"]

gpt_deployment = {
  name                       = "gpt-5-5"
  model_format               = "OpenAI"
  model_name                 = "gpt-5.5"
  model_version              = "2026-04-24"
  sku_name                   = "GlobalStandard"
  capacity                   = 27000
  dynamic_throttling_enabled = false
  version_upgrade_option     = "NoAutoUpgrade"
}

container_apps     = {}
dapr_components    = {}
container_app_jobs = {}

tags = {
  application = "ocr"
  customer    = "proservice"
  environment = "dev"
  managed_by  = "terraform"
}

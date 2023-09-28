terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.72.0"
    }
  }
}

provider "hcp" {
  # Configuration options
  client_id     = {{HCP_CLIENT_ID}}
  client_secret = {{HCP_CLIENT_SECRET}}
  project_id = "5b3ad250-078d-4c03-a91a-c04e9fd92ec9"
}

//variable "HCP_CLIENT_ID" {
//  type = string
//}

//variable "HCP_CLIENT_SECRET" {
//  type = string
//}

resource "hcp_vault_secrets_app" "payments-api" {
  app_name    = "test-app"
  description = "Testing"
}

resource "hcp_vault_secrets_secret" "payments-api-secret" {
  app_name     = hcp_vault_secrets_app.payments-api.app_name
  secret_name  = "stripe_sk"
  secret_value = "testing"
}

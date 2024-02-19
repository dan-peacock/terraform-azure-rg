variable subscriptionID {
}

variable TenantID {

}

variable "tfc_vault_backed_azure_dynamic_credentials" {
  description = "Object containing Vault-backed Azure dynamic credentials configuration"
  type = object({
    default = object({
      client_id_file_path = string
      client_secret_file_path = string
    })
    aliases = map(object({
      client_id_file_path = string
      client_secret_file_path = string
    }))
  })
}


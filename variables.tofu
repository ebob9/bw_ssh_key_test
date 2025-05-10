variable "PROJECT_NAME" {
  default = "bw_ssh_key_test"
  description = "Name to use for the project"
}

variable "BW_MASTER_PASSWORD" {
  type        = string
  description = "Bitwarden Master Password"
  sensitive   = true
}

variable "BW_EMAIL" {
  type        = string
  description = "Bitwarden User Email"
}

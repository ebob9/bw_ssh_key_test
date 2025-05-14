# create a dynamic keypair
resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
  # rsa_bits  = 2048
  rsa_bits  = 4096
}

resource "local_sensitive_file" "pem_file" {
  filename             = pathexpand("${path.root}/${var.PROJECT_NAME}.pem")
  file_permission      = "600"
  directory_permission = "700"
  content              = tls_private_key.rsa_key.private_key_pem
}
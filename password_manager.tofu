resource "bitwarden_item_login" "login_entry" {
  name     = "${random_password.random_user.result} login"
  username = random_password.random_user.result
  password = random_password.random_password.result
  notes    = "Random notes for ${random_password.random_user.result} login entry."
  uri {
    value = "https://localhost/"
  }
}

resource "bitwarden_attachment" "ssh_key_entry" {
  file    = local_sensitive_file.pem_file.filename
  depends_on = [
    local_sensitive_file.pem_file
  ]
  # content_hash = local_sensitive_file.pem_file.content_sha1
  item_id = bitwarden_item_login.login_entry.id
}

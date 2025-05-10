resource "random_password" "random_password" {
  length           = 16
  min_lower        = 1
  min_numeric      = 1
  min_special      = 1
  min_upper        = 1
  special          = true
  override_special = "!#$%&"
}

resource "random_password" "random_user" {
  length           = 10
  min_lower        = 10
  special          = false
}

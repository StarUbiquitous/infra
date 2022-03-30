resource "github_actions_organization_secret" "ACTIONS_BOT_TOKEN" {
  secret_name = "ACTIONS_BOT_TOKEN"
  visibility  = "all"

  plaintext_value = var.ACTIONS_BOT_TOKEN
}

# This is for compatibility with previous projects, not recommended for new projects
resource "github_actions_organization_secret" "IAC_TOKEN" {
  secret_name = "IAC_TOKEN"
  visibility  = "all"

  plaintext_value = var.ACTIONS_BOT_TOKEN
}

# This is for compatibility with previous projects, not recommended for new projects
resource "github_actions_organization_secret" "CI_PAT" {
  secret_name = "CI_PAT"
  visibility  = "all"

  plaintext_value = var.ACTIONS_BOT_TOKEN
}

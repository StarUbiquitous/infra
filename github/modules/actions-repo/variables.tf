variable "gh_org" {
  type        = string
  description = "The GitHub org name"
}

variable "repo_name" {
  type        = string
  description = "The repository name"
}

variable "visibility" {
  type        = string
  description = "The repository visibility"
  default     = "public"
}

variable "description" {
  type        = string
  description = "The repository description."
}

variable "secrets" {
  type        = map(string)
  description = "Github Actions secrets for this reporsitory."
  default     = {}
}

variable "template_repo_name" {
  type        = string
  description = "The template repository name"
  default     = ""
}

variable "create_labels" {
  type        = bool
  description = "Auto creates labels"
  default     = true
}

variable "gha_bot_token" {
  type        = string
  description = "Bot PAT for triage"
  default     = ""
}

variable "status_checks" {
  type        = list(string)
  description = "List of status checks required."
}

variable "vulnerability_alerts" {
  type        = bool
  default     = true
  description = "Flag to enable Dependabot alerts"
}

variable "require_code_owner_reviews" {
  type        = bool
  default     = true
  description = "Flag to enable code owner reviews before merge"
}

variable "enforce_admins" {
  type        = bool
  default     = false
  description = "Flag to enforce status checks for repository administrators"
}

variable "delete_branch_on_merge" {
  type        = bool
  default     = false
  description = "Automatically delete head branch after a pull request is merged"
}

variable "topics" {
  type        = list(string)
  default     = null
  description = "The list of topics of the repository."
}

variable "has_downloads" {
  type        = bool
  default     = false
  description = "Set to true to enable the (deprecated) downloads features on the repository."
}

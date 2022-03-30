data "github_repositories" "repositories" {
  query = "org:${var.organization} archived:false"
  sort  = "fork"
}

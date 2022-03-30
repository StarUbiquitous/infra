output "repo_full_name" {
  description = "Repo name of form form orgname/reponame"
  value       = github_repository.repo.full_name
}

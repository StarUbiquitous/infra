output "repos" {
  value       = [for repo in module.repos : repo.repo_full_name]
  description = "Created repo names"
}

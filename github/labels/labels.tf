locals {
  gh_org = var.organization

  labels = [
    {
      name : "priority/p0",
      color : "d93f0b",
      description : "紧急：安全性问题、严重的 Bug 以及阻塞的问题。停下正在进行的一切直到这个问题解决。"
    },
    {
      name : "priority/p1",
      color : "d93f0b",
      description : "重要：P1 级别的问题必须在下一个版本/迭代中解决。"
    },
    {
      name : "priority/p2",
      color : "0075ca",
      description : "正常优先级：默认的优先级别。"
    },
    {
      name : "priority/p3",
      color : "D2DAE1",
      description : "Best effort: those are nice to have / minor issues."
    },
    {
      name : "type/dependencies",
      color : "0075ca",
      description : "Dependencies."
    }
  ]
  repos = data.terraform_remote_state.repos.outputs.repos
  repo_labels = {
    for o in flatten([
      for repo in local.repos :
      [
        for label in local.labels :
        {
          # repo is of form org/repo_name, we require just repo_name
          repo : split("/", repo)[1],
          name : label.name,
          color : label.color,
          description : label.description
        }
      ]
    ]) :
    "${o.repo}/${o.name}" => o
  }
}

resource "github_issue_label" "repo" {
  for_each    = local.repo_labels
  repository  = each.value.repo
  name        = each.value.name
  color       = each.value.color
  description = each.value.description
}

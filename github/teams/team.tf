locals {
  teams = [
    {
      name : "maintainers",
      description : "maintainers",
    }
  ]
  each_teams = {
    for team in local.teams : replace(lower(team.name), " ", "-") => {
      name : team.name,
      description : team.description,
      privacy : can(team.privacy) ? team.privacy : "closed",
      parent_team_id : can(team.parent_team_id) ? team.parent_team_id : null,
      create_default_maintainer : can(team.create_default_maintainer) ? team.create_default_maintainer : false
    }
  }
}

resource "github_team" "team" {
  for_each                  = local.each_teams
  name                      = each.value.name
  description               = each.value.description
  privacy                   = each.value.privacy
  parent_team_id            = each.value.parent_team_id
  create_default_maintainer = each.value.create_default_maintainer
}

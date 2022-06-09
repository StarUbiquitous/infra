data "terraform_remote_state" "teams" {
  backend = "cos"
  config = {
    bucket = "terraform-state-1308277749"
    region = "ap-chengdu"
    prefix = "starubiquitous/github/teams"
  }
}

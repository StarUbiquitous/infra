data "terraform_remote_state" "repos" {
  backend = "cos"
  config  = {
    bucket = "terraform-state-1308277749"
    region = "ap-chengdu"
    prefix = "starubiquitous/github/repos"
  }
}

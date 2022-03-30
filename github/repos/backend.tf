terraform {
  backend "cos" {
    bucket = "terraform-state-1308277749"
    region = "ap-chengdu"
    key    = "starubiquitous/github/repos/terraform.tfstate"
  }
}

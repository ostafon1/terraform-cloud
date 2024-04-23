data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "ostafon1"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.terraform_remote_state.vpc.outputs
}
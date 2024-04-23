data "tfe_outputs" "vpc" {
  config = {
    organization = "ostafon1"
    workspaces = {
      name = "vpc"
    }
  }
}

output all {
    value = data.tfe_outputs.vpc.outputs
}
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DevopsPlebGH"

    workspaces {
      name = "github-management"
    }
  }
}

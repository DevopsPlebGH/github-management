resource "github_repository" "github_management" {
  name        = "github-management"
  description = "Terraform based repository to manage all our GitHub repositories"

  visibility         = "public"
  has_issues         = true
  has_wiki           = true
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  auto_init          = false
  topics             = ["config", "terraform"]
}

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

resource "github_branch_protection" "team_baseline_config" {
  repository_id    = github_repository.github_management.name
  pattern          = "main"
  enforce_admins   = false
  allows_deletions = true

  required_status_checks {
    strict   = true
    contexts = ["atlas/mononoke/github-management", ]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = false
  }
}

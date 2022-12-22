resource "github_repository" "this" {
  name            = var.repo_name
  visibility      = "private"
}

resource "github_branch" "development" {
  repository = var.repo_name
  branch     = "development"
}

resource "github_team_repository" "team" {
  team_id         = var.team_slug
  repository      = github_repository.this.name
  permission      = "push" # push == write permission
}

resource "github_branch_protection_v3" "main" {
  repository      = github_repository.this.name
  branch          = "main"
  enforce_admins  = true

  required_status_checks {
    strict   = false
    contexts = ["testCase"]
  }

  required_pull_request_reviews {
    required_approving_review_count = 1
    # dismissal_users                 = ["foo-user"]
    dismissal_teams                 = [var.team_slug]
  }

  restrictions {
    users           = var.maintainer_users
    teams           = [var.team_slug]
    # apps            = ["foo-app"]
  }

}

resource "github_branch_protection_v3" "development" {
  repository      = github_repository.this.name
  branch          = "development"
  enforce_admins  = true

  required_status_checks {
    strict   = false
    contexts = ["testCase"]
  }

  required_pull_request_reviews {
    required_approving_review_count = 1
    # dismissal_users                 = ["foo-user"]
    dismissal_teams                 = [var.team_slug]
  }

  restrictions {
    users           = var.maintainer_users
    teams           = [var.team_slug]
    # apps            = ["foo-app"]
  }

}
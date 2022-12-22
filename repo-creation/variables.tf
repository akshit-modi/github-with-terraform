variable "token" {
  type          = string
  description   = "Token to access your github account"
}

variable "repo_name" {
  type          = string
  description   = "repository name"
}

variable "team_slug" {
  type          = string
  description   = "Team slug"
}

variable "maintainer_users" {
  type          = list
  description   = "This users have maintainer role and can force push to any branch."
}
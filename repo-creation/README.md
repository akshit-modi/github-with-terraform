## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.development](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_protection_v3.development](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection_v3) | resource |
| [github_branch_protection_v3.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection_v3) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_team_repository.team](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_maintainer_users"></a> [maintainer\_users](#input\_maintainer\_users) | This users have maintainer role and can force push to any branch. | `list` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | repository name | `string` | n/a | yes |
| <a name="input_team_slug"></a> [team\_slug](#input\_team\_slug) | Team slug | `string` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | Token to access your github account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo"></a> [repo](#output\_repo) | repository data |

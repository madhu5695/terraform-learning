terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "my-token"
}
resource "github_repository" "myrepo" {
  name        = "test-repo-terrafrom"
  description = "Creating test repo for terraform"

  visibility = "public"
}
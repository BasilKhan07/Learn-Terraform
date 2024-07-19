resource "github_repository" "terraform-first-repo" {
  name        = "first-repo-from-terraform"
  description = "My first github resource for learning terraform"
  visibility = "public"
  auto_init = true
}
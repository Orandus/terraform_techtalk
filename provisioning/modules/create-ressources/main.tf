resource "google_storage_bucket" "worldcup_bucket" {
  name = "${var.world-cup-bucket}-bucket"
  location = var.location
  project = var.project
  storage_class = var.storage_class

  bucket_policy_only = true
  labels ={
    env = var.env
  }
}
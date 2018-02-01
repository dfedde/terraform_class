variable "project_name" {
  default = "duncan-terraform-class-54942a9"
}

terraform {
  backend "gcs" {
    bucket  = "duncan-terraform-class-54942a9-terrafrom"
    prefix  = "terraform/state"
  }
}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project_name}"
}

module "gce-lb-http" {
  source            = "github.com/dfedde/terrafrom-google-static-website"
  name              = "games"
  bucket            = "${google_storage_bucket.asset_store.name}"
}

resource "google_storage_bucket" "asset_store" {
  name="${var.project_name}-assets"
  storage_class = "MULTI_REGIONAL"
  force_destroy = "true"
}

resource "google_storage_bucket" "terraform_state" {
  name="${var.project_name}-terrafrom"
  storage_class = "MULTI_REGIONAL"
  force_destroy = "true"
}

output ip {
  value = "${module.gce-lb-http.external_ip}"
}

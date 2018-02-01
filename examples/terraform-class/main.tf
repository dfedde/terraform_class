variable "project_name" {}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project_name}"
}

module "gce-lb-http" {
  source            = "github.com/dfedde/terrafrom-google-static-website"
  name              = "games"
  bucket            = "test"
}

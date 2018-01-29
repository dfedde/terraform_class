provider "google" {
  credentials = "${file("account.json")}"
  project     = "duncan-terraform-class-5314e69"
}

resource "google_storage_bucket" "asset_store" {                                           
  name="duncan-terraform-class-5314e69-assets"
  storage_class = "MULTI_REGIONAL"
}

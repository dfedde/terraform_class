variable "project_name" {
  default = "duncan-terraform-class-5314e69"
}

provider "google" {
  credentials = "${file("account.json")}"
  project     = "${var.project_name}"
}

resource "google_storage_bucket" "asset_store" {                                           
  name="${var.project_name}-assets"
  storage_class = "MULTI_REGIONAL"

  website {
    main_page_suffix = "index.html"
  }
}

resource "google_storage_bucket_object" "index" {                                          
  name   = "index.html"
  source = "index.html"
  bucket = "${google_storage_bucket.asset_store.name}"
}

resource "google_storage_object_acl" "index" {                                             
  bucket = "${google_storage_bucket.asset_store.name}"
  object = "${google_storage_bucket_object.index.name}"
  predefined_acl = "publicRead"
}


resource "google_compute_url_map" "games" {
  name = "games"

  default_service = "${google_compute_backend_bucket.static.self_link}"
}

resource "google_compute_backend_bucket" "static" {
  name        = "static-asset-backend-bucket"
  bucket_name = "${google_storage_bucket.asset_store.name}"
  enable_cdn  = true
}

resource "google_compute_target_http_proxy" "default" {
  name        = "default-proxy"
  url_map     = "${google_compute_url_map.games.self_link}"
}

resource "google_compute_global_forwarding_rule" "default" {
  name       = "default-rule"
  target     = "${google_compute_target_http_proxy.default.self_link}"
  port_range = "80"
}

output "load balancer address" {
  value = "${google_compute_global_forwarding_rule.default.ip_address}"
}


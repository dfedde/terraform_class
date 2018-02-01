<!-- .slide: data-background="#b50152" -->
## lab ***
# making a backend

&&&
## create the load balancer
Give this one a try on your own


Here are some links to relevant documentation
- [compute_global_forwarding_rule](https://www.terraform.io/docs/providers/google/r/compute_global_forwarding_rule.html)
- [compute_backend_bucket](https://www.terraform.io/docs/providers/google/r/compute_backend_bucket.html)
- [compute_target_http_proxy](https://www.terraform.io/docs/providers/google/r/compute_target_http_proxy.html)
- [compute_url_map](https://www.terraform.io/docs/providers/google/r/compute_url_map.html)

&&&

<pre>
resource "google_compute_url_map" "games" {
  name = "games"

  default_service = "${google_compute_backend_bucket.static.self_link}"
}
</pre>
&&&
<pre>
resource "google_compute_backend_bucket" "static" {
  name = "static-asset-backend-bucket"
  bucket_name = "${google_storage_bucket.asset_store.name}"
  enable_cdn = true
}
</pre>
&&&
<pre>
resource "google_compute_target_http_proxy" "default" {
  name = "default-proxy"
  url_map = "${google_compute_url_map.games.self_link}"
}
</pre>
&&&
<pre>
resource "google_compute_global_forwarding_rule" "default" {
  name = "default-rule"
  target = "${google_compute_target_http_proxy.default.self_link}"
  port_range = "80"
}
</pre>
&&&
<pre>
resource "google_storage_bucket" "asset_store" {
  name="duncan-terraform-class-5314e69-assets"
  storage_class = "MULTI_REGIONAL"

  website {
    main_page_suffix = "index.html"
  }
}
</pre>
&&&
<pre>
resource "google_storage_object_acl" "index" {
  bucket = "${google_storage_bucket.asset_store.name}"
  object = "${google_storage_bucket_object.index.name}"
  predefined_acl = "publicRead"
}
</pre>
&&&
## let's try out another command
&&&

If you have Graphviz and ImageMagick installed
```
terraform graph | dot -Tpng | display
```

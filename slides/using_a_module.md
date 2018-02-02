<!-- .slide: data-background="#b50152" -->
## lab ***
# using a module

&&&
#### remove your:
- google_compute_url_map
- google_compute_backend_bucket
- google_compute_target_http_proxy
- google_compute_global_forwarding_rule

&&&

<pre>
module "static-website" {
  source = "github.com/dfedde/terraform-google-static-website"
  name = "game"
  bucket = "${google_storage_bucket.asset_store.name}"
}
</pre>

<pre class="fragment">
output "load_balancer_address" {
  value = "${module.static-website.external_ip}"
}
</pre>

&&&
# what did we do
&&&

<pre>
<span class="fragment highlight-current-green">module</span> <span class="fragment highlight-current-green">"static-website"</span> {
  <span class="fragment highlight-current-green">source = "github.com/dfedde/terraform-google-static-website"</span>
  <span class="fragment highlight-current-green"><span class="fragment highlight-current-green">name = "game"</span>
  <span class="fragment highlight-current-green">bucket = "${google_storage_bucket.asset_store.name}"</span></span>
}
</code></pre>

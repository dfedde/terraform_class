<!-- .slide: data-background="#01b564" -->
## lab ***
# importing a resource

&&&

```
terraform import \
google_storage_bucket.asset_store \
${project_id}-assets
```
&&&
### well that did not work
&&&
```
resource "google_storage_bucket" "asset_store" {
  name=""
}
```
&&&
### cool lets give it another try
&&&

```
terraform import \
google_storage_bucket.asset_store \
${project_id}-assets
```
&&&
## <a href="http://$IP$:4567/done/***" target="_blank">done</a>
&&&
### what did we just do...
&&&

<pre>
resource <span class="fragment highlight-current-green" data-fragment-index="3">"google_storage_bucket"</span> <span class="fragment highlight-current-green" data-fragment-index="4">"asset_store"</span> {
  name=<span class="fragment highlight-current-green" data-fragment-index="5">"${project_id}-assets"</span>
  storage_class = "MULTI_REGIONAL"
  force_delete = "true"
}
</pre>

<pre>
terraform import \
<span class="fragment highlight-current-green" data-fragment-index="1"> <span class="fragment highlight-current-green" data-fragment-index="3">google_storage_bucket</span>.<span class="fragment highlight-current-green" data-fragment-index="4">asset_store</span></span> \
<span class="fragment highlight-current-green" data-fragment-index="2"><span class="fragment highlight-current-green" data-fragment-index="5">${project_id}-assets</span></span>
</pre>
&&&

## import
 Import existing infrastructure into Terraform<!-- .element: class="fragment" -->

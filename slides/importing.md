<!-- .slide: data-background="#6401b5" -->
## Lab 4
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
### what did we just do...
&&&

<pre>
resource <span class="fragment highlight-current-green" data-fragment-index="3">"google_storage_bucket"</span> <span class="fragment highlight-current-green" data-fragment-index="4">"asset_store"</span> {
  name=<span class="fragment highlight-current-green" data-fragment-index="5">"${project_id}-assets"</span>
  storage_class = "MULTI_REFIONAL"
}
</pre>

<pre>
terraform import \
<span class="fragment highlight-current-green" data-fragment-index="1"> <span class="fragment highlight-current-green" data-fragment-index="3">google_storage_bucket</span>.<span class="fragment highlight-current-green" data-fragment-index="4">asset_store</span></span>\
<span class="fragment highlight-current-green" data-fragment-index="2"><span class="fragment highlight-current-green" data-fragment-index="5">${project_id}-assets</span></span>
</pre>
&&&

## import
 Import existing infrastructure into Terraform<!-- .element: class="fragment" -->

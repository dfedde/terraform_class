<!-- .slide: data-background="#6401b5" -->
## lab ***
# upload a file

&&&

## Pull down the page

```
curl -o index.html http://duncan.fedde.us/terraform_class/assets/inline_game.html
```

&&&

<pre>
resource "google_storage_bucket_object" "index" {
  name   = "index.html"
  source = "./index.html"
  bucket = "${google_storage_bucket.asset_store.name}"
}
</pre>

&&&
## <a href="http://$IP$:4567/done/***" target="_blank">done</a>
&&&
### what did we just do...
&&&

<pre>
resource <span class="fragment highlight-current-green" data-fragment-index="1">"google_storage_bucket"</span> <span class="fragment highlight-current-green" data-fragment-index="2">"asset_store"</span> { 
  <span class="fragment highlight-current-green" data-fragment-index="3">name</span>="${project_id}-assets"
  storage_class = "MULTI_REGIONAL"
}
</pre>

<pre>
resource "google_storage_bucket_object" "index" {
  name   = "index.html"
  source = "./index.html"
  bucket = "${<span class="fragment highlight-current-green" data-fragment-index="1">google_storage_bucket</span>.<span class="fragment highlight-current-green" data-fragment-index="2">asset_store</span>.<span class="fragment highlight-current-green" data-fragment-index="3">name</span>}"
}
</pre>


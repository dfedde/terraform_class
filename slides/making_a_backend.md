<!-- .slide: data-background="#b50152" -->
## lab ***
# make a backend
&&&
<pre>
resource "google_storage_bucket" "terraform_state" {
  name="${var.project_name}-terrafrom"
  storage_class = "MULTI_REGIONAL"
  force_destroy = "true"
}
</pre>
&&&
<pre>
terraform {
  backend "gcs" {
    bucket  = "bucket-name"
    prefix  = "terraform/state"
  }
}
</pre>
&&&
# what did we do
&&&
#### our state is now stored remotely
&&&
<pre>
<span class="fragment highlight-current-green">terraform</span> {
  <span class="fragment highlight-current-green">backend</span> <span class="fragment highlight-current-green">"gcs"</span> {
   <span class="fragment highlight-current-green">bucket  = "bucket-name"</span>
   <span class="fragment highlight-current-green"> prefix  = "terraform/state"</span>
  }
}
</pre>

<!-- .slide: data-background="#6401b5" -->
## lab ***
# make a backend
&&&
#### make a bucket to store the state in
<pre>
resource "google_storage_bucket" "terraform_state" {
  name="${var.project_name}-terraform"
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
```
rm -rf terraform.tfstate*
```
&&&
## <a href="http://$IP$:4567/done/***" target="_blank">done</a>
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

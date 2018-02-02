<!-- .slide: data-background="#01b564" -->
## lab ***
# workspaces
&&&
```
terraform workspace new beta
```
```
terraform workspace list
```
```
terraform workspace select beta
```
&&&
<pre>
resource "google_storage_bucket" "asset_store" {
  name="${terraform.workspace}-${var.project_name}-assets"
  storage_class = "MULTI_REGIONAL"
  force_destroy = "true"
}
</pre>

<pre>
module "static-website" {
  source = "github.com/dfedde/terrafrom-google-static-website"
  name = "${terraform.workspace}-games"
  bucket = "${google_storage_bucket.asset_store.name}"
}
</pre>
&&&
### hmm that's no good
&&&
<pre>
resource "google_storage_bucket" "terraform_state" {
  count = "${terraform.workspace == "default" ? 1 : 0 }"
  name="${var.project_name}-terrafrom"                               
  storage_class = "MULTI_REGIONAL"
  force_destroy = "true"
}
</pre>
&&&
```
terraform workspace select default
```
```
terrafrom apply
```
&&&
## <a href="http://$IP$:4567/done/***" target="_blank">done</a>
&&&
# what did we do
&&&
<pre>
resource "google_storage_bucket" "terraform_state" {
  <span class="fragment highlight-current-green" data-fragment-index="2">count</span> = "${<span class="fragment highlight-current-green"data-fragment-index="3"><span data-fragment-index="1" class="fragment highlight-current-green">terraform.workspace</span> == "default" ? 1 : 0 </span>}}"
  name="${var.project_name}-terrafrom"                               
  storage_class = "MULTI_REGIONAL"
  force_destroy = "true"
}
</pre>
&&&
# commands
&&&

## workspace
 Workspace management <!-- .element: class="fragment" -->

## workspace new <!-- .element: class="fragment" -->
 Create a new workspace. <!-- .element: class="fragment" -->

## workspace list <!-- .element: class="fragment" -->
 List workspaces. <!-- .element: class="fragment" -->

## workspace select <!-- .element: class="fragment" -->
 Select a workspace. <!-- .element: class="fragment" -->

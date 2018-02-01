<!-- .slide: data-background="#01b564" -->
## lab ***
# inputs and outputs

&&&
## outputs

<pre>
output "load_balancer_address" {
  value = "${google_compute_global_forwarding_rule.default.ip_address}"
}
</pre>

<pre class='fragment'><code data-trim data-noescape>
terrafrom refresh
</pre></code>

<pre class='fragment'><code data-trim data-noescape>
terrafrom output
</pre></code>

&&&
## inputs
<pre class='fragment'>
variable "project_name" {}
</pre>

<pre class='fragment'>
provider "google" {
  credentials = "${file("account.json")}"
  project = "${var.project_name}"
}
</pre>

<pre class='fragment'>
resource "google_storage_bucket" "asset_store" {
  name="${var.project_name}-assets"
  storage_class = "MULTI_REGIONAL"

  website {
    main_page_suffix = "index.html"
  }
}
</pre>

&&&
### but thats not great
&&&

### we could do

```
terrafrom apply -var 'project_name=duncan-terrafrom-class'
```
&&&
### but that is still not great for this
&&&
<pre>
variable "project_name" {
  default = "duncan-terraform-class"
}
</pre>

&&&
### what did we just do...
&&&
<!-- .slide:  data-transition="slide-in fade-out" -->
<pre>
<span class="fragment highlight-current-green">variable</span> <span class="fragment highlight-current-green">"project_name"</span> {

  <span class="fragment highlight-current-green">default = "duncan-terraform-class"</span>
}
</pre>
&&&
<!-- .slide: data-transition-speed="fast" data-transition="fade-in fade-out" -->
<pre>
variable "project_name' {
  <span style="color: #17ff2e;">type = "string"</span>
  default = "duncan-terraform-class"
}
</pre>
&&&
<!-- .slide: data-transition-speed="fast" data-transition="fade-in fade-out" -->
<pre>
variable "project_name' {
  <span style="color: #17ff2e;">type = "map"</span>
  default = {name: "value"}
}
</pre>
&&&
<!-- .slide:  data-transition="fade-in slide-out" -->
<pre>
variable "project_name' {
  <span style="color: #17ff2e;">type = "list"</span>
  default = ['val1', 'val2']
}
</pre>
&&&
### commands
&&&
## refresh
 Update local state file against real resources<!-- .element: class="fragment" -->

## output<!-- .element: class="fragment" -->
  Read an output from a state file<!-- .element: class="fragment" -->

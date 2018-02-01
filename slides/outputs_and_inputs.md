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
variable "project_name" {
  default = "duncan-terraform-class-5314e69"
}
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
### what did we just do...
&&&

## refresh
 Update local state file against real resources<!-- .element: class="fragment" -->

## output<!-- .element: class="fragment" -->
  Read an output from a state file<!-- .element: class="fragment" -->

<!-- .slide: data-background="#6401b5" -->
## lab ***
# change your instance
&&&
<pre>
resource "google_compute_instance" "default" {
  <span class="fragment highlight-current-green">name = "a-really-cool-name"</span>
  machine_type = "n1-standard-1"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  scratch_disk {
  }

  network_interface {
    network = "default"
  }
}
</pre>

<pre class='fragment' ><code data-trim data-noescape>
terrafrom apply
</pre></code>

&&&
<pre>
resource "google_compute_instance" "default" {
  name = "a-really-cool-name"
  <span class="fragment highlight-current-green">machine_type = "n1-standard-1"</span>
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  scratch_disk {
  }

  network_interface {
    network = "default"
  }
}
</pre>

<pre class='fragment' ><code data-trim data-noescape>
terrafrom apply
</pre></code>

&&&
## what did we just do
&&&

<pre>
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
<span class="fragment highlight-current-green">  ~ update in-place</span>
<span class="fragment highlight-current-green">-/+ destroy and then create replacement</span>
</pre>



<!-- .slide: data-background="#6401b5" -->
## Lab 2
# making a compute instance

&&&
## Set up your terrafrom file.

<pre>
provider "google" {
  credentials = "${file("account.json")}"
  project = "your project name"
  region = "us-central1"
}
</pre>

<pre class='fragment fade-out' data-fragment-index="1"><code data-trim data-noescape>
terrafrom plan
</pre></code>

<div class='fragment fade-in' data-fragment-index="1"> <pre class='fragment fade-out' data-fragment-index="2"><code data-trim data-noescape>
terrafrom init
</pre></code></div>

<pre class='fragment fade-in' data-fragment-index="2"><code data-trim data-noescape>
terrafrom plan
</pre></code>

&&&
## Well That did Nothing
&&&

<pre>
resource "google_compute_instance" "default" {
  name = "test"
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

<pre><code data-trim data-noescape>
terrafrom plan
</pre></code>

&&&
### make it real

<pre><code data-trim data-noescape>
terrafrom apply
</pre></code>

&&&
### what did we just do...
&&&

<pre>
<span class="fragment highlight-current-green">provider</span> <span class="fragment highlight-current-green">"google"</span> {
  <span class="fragment highlight-current-green">credentials = "${file("account.json")}"</span>
  <span class="fragment highlight-current-green">project = "your project name"</span>
  <span class="fragment highlight-current-green">region = "us-central1"</span>
}
</pre>
&&&

<pre>
<span class="fragment highlight-current-green">resource</span> <span class="fragment highlight-current-green">"google_compute_instance"</span> <span class="fragment highlight-current-green">"default"</span> {
  <span class="fragment highlight-current-green">name = "test"</span>
  <span class="fragment highlight-current-green">machine_type = "n1-standard-1"</span>
  zone = "us-central1-a"

  <span class="fragment highlight-current-green">boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }</span>

  scratch_disk {
  }

  network_interface {
    network = "default"
  }
}
</pre>
&&&
## commands
&&&

## init
 Initialize a Terraform working directory<!-- .element: class="fragment" -->

## plan<!-- .element: class="fragment" -->
 Generate and show an execution plan<!-- .element: class="fragment" -->

## apply <!-- .element: class="fragment" -->
 Builds or changes infrastructure <!-- .element: class="fragment" -->

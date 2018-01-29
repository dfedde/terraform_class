<!-- .slide: data-background="#6401b5" -->
## Lab 2
# making a compute instance

&&&
## Set up your terrafrom file.

```
provider "google" {
  credentials = "${file("account.json")}"
  project     = "your project name"
  region      = "us-central1"
}
```
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

```
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

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
```

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

<pre><code data-trim data-noescape>
provider "google" {
  credentials = "${file("account.json")}"
  project     = "your project name"
  region      = "us-central1"
}
</pre></code>
&&&

```
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

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
```
%%%
#

```
    apply              Builds or changes infrastructure
```

```
    init               Initialize a Terraform working directory
```

```
    plan               Generate and show an execution plan
```
i

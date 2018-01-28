<!-- .slide: data-background="#01b564" -->
# Getting Setup

&&&
## Install terraform
your distro may have a way to install terraform <!-- .element: class="fragment" --> 


`apt-get install terraform` <!-- .element: class="fragment" --> 

<p class='fragment'> otherwise you can just [download](https://www.terraform.io/downloads.html) the bianry </p> 

<pre class='fragment'><code data-trim data-noescape>
pushd /tmp
	wget -O terrafom https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
	chmod +x terraform
	export PATH=${pwd)/terraform:$PATH
popd
</pre></code>

Note: 

```
terraform
>~ Usage: terraform
```

&&&
## Set up a project directory

```
mkdir terraform-class
cd terraform-class
```

Note: 

```
pwd
>~ terraform-class
```

&&&
## Create a terraform file

```
touch main.tf
```

Note: 
```
ls
>~ main.tf
```

&&&
## Make a google project

<button>make a project</button>

&&&
## Set up your terrafrom file.

```
'provider "google" {
  credentials = "${file("account.json")}"
  project     = "name-of-your-project"
  region      = "us-central1"
}' > main.tf
```

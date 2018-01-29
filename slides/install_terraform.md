<!-- .slide: data-background="#01b564" -->
## lab 1
# Getting Setup

&&&

## Make a google project

<div style='text-align:center'>
<form action="http://192.168.50.237:4567/student" method="post" target="_blank">
  <label>Email: <br><small>must be linked to a valid google account</small></label><br>
  <input type="email" name="email"><br>
  <input type="submit" value="Make a Google Project">
</form> 
</div>

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
## take a look at your newly created project


<!-- .slide: data-background="#ff0000" -->
# EXERSIZE
## Getting Setup

&&&
## Install terraform
your distro may have a way to install terraform

`apt-get install terraform` <!-- .element: class="fragment" --> 

otherwise you can just [download](https://www.terraform.io/downloads.html) the bianry <!-- .element: class="fragment" --> 

```
pushd /tmp
	wget -O terrafom https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
	chmod +x terraform
	export PATH=${pwd)/terraform:$PATH
popd
```

Note: 

```
terraform
>~ Usage: terraform
```

&&&
## Set up a project directory

```
mkdir terraform-class
```

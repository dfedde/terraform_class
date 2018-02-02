<!-- .slide: data-background="#b50152" -->
## lab ***
# removing a resource
&&&
```
terraform workspace select default
```

```
terraform state rm google_storage_bucket.terraform_state
```
&&&
#### remove from your config
 - google_storage_bucket.terraform_state
&&&

## <a href="http://$IP$:4567/done/***" target="_blank">done</a>
&&&
# what did we do
&&&
## commands
&&&

## state
 Advanced state management<!-- .element: class="fragment" -->

## state rm <!-- .element: class="fragment" -->
 Remove an item from the state <!-- .element: class="fragment" -->

## state list <!-- .element: class="fragment" -->
  List resources in the state <!-- .element: class="fragment" -->

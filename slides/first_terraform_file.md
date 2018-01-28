# Exersize
## Make a google compute instance

&&&

```
provider "google" {
  credentials = "${file("account.json")}"
  project     = "name-of-your-project"
  region      = "us-central1"
}
```

&&&


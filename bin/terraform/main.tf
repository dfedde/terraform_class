// Configure the Google Cloud provider
provider "google" {
}

variable "students" {
  type = "list"
}

variable "student_count" {
}

resource "google_project" "class_projects" {
  count = "${var.student_count}"
  name = "${element( split("@", element(var.students, count.index)),2)} - Terraform Class"
  project_id = "${substr("${element( split("@", element(var.students, count.index)),2)}-terraform-class-${sha1(element(var.students, count.index))}", 0, 30)}"
  billing_account = "0166F6-28EB10-08F288"
}

resource "google_project_iam_member" "project" {
  count = "${var.student_count}"
  project = "${google_project.class_projects.*.number[count.index]}"
  role    = "roles/editor"
  member  = "user:${element(var.students, count.index)}"
}

/* resource "google_project_iam_member" "terrafrom" { */
/*   count = "${var.student_count}" */
/*   project = "${google_project.class_projects.*.number[count.index]}" */
/*   role    = "roles/editor" */
/*   member      = "serviceAccount:${google_service_account.terraform_user.*.email[count.index]}" */
/* } */

/* resource "google_service_account" "terraform_user" { */
/*   count = "${var.student_count}" */
/*   account_id   = "terraform-user" */
/*   display_name = "Terrafrom User" */
/*   project = "${google_project.class_projects.*.number[count.index]}" */
/* } */

resource "google_storage_bucket" "asset_store" {                                           
  count = "${var.student_count}"
  name="${google_project.class_projects.*.project_id[count.index]}-assets"
  project="${google_project.class_projects.*.number[count.index]}"
  storage_class = "MULTI_REGIONAL"
}



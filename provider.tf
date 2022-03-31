provider "google" {
  credentials = "${file(var.account_file_path)}"
  project     = "${var.project-name}"
  region      = "${var.region}"
}

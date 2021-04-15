provider "google" {
#  credentials = "${file("/var/lib/jenkins/workspace/testpipeline/service-account.json")}"
  project = "testingpjct-dev"
  region = "us-central1"
  zone = "us-central1-c"
}

terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket = "sidivayv"
    prefix = "terraform/state"
 }
   }
resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = "us-central1"
  force_destroy = true
}

#----------------------------------------------------------
# Use Terraform with GCP - Google Cloud Platform
#
# Made by Bohdan Chumachenko
#
#-----------------------------------------------------------
#//export GOOGLE_CLOUD_KEYFILE_JSON="gcp-creds.json"

provider "google" {
  credentials = var.my-creds
  project     = "kubernetes-379416"
  region      = "europe-west1"
  zone        = "europe-west1-c"
}

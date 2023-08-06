terraform {
  backend "gcs" {
    bucket = "terraform-sith123"
    prefix = "tfstate"
    credentials = "cred.json"
  }
}

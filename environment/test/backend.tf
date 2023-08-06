terraform {
  backend "gcs" {
    bucket = "terraform-sith123-test"
    prefix = "tfstate"
    credentials = "cred.json"
  }
}

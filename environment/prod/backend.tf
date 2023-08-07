terraform {
  backend "gcs" {
    bucket = "terraform-sith123-prod"
    prefix = "tfstate"
    credentials = "cred.json"
  }
}

terraform {
  backend "gcs" {
    bucket = "terraform-sith123-dr"
    prefix = "tfstate"
    credentials = "cred.json"
  }
}

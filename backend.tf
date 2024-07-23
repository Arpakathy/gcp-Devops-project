terraform {
  backend "gcs" {
    bucket  = "remotestate"
    prefix  = "terraform/state"
  }
}

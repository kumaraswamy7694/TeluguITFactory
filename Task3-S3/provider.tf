provider "aws" {
  region     = "ap-south-1"
}

resource "random_string" "suffix" {
  length  = 5
  special = false
}
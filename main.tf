terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "sf-pm"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
    account  = "POONAMMANE"
    username = "PoonamMane"
    region   = "east-us-2.azure"
}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
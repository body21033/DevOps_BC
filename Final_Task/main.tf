#Source of GCP Final
module "sql" {
  source           = "./GCP/MySQL/"
    }

module "server" {
  source           = "./GCP/Server/"
}

module "vpc" {
  source           = "./GCP/VPC/"
    }

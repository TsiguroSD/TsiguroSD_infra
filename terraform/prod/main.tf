terraform {
  # Версия terraform
  required_version = "~> 0.12.0"
}

provider "google" {
  # Версия провайдера
  version = "~> 2.5"
  # ID проекта
  project = var.project
  region  = var.region
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
  private_key_path = var.private_key_path
  db_ip           = module.db.db_external_ip
  provision_enabled = false
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
  private_key_path = var.private_key_path
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["37.110.91.165/32"]
}

variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "europe-west1-b"
}
variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default = "mongodb-base"
}

variable vm_db_name {
  description = "vm with db name"
  default = "reddit-db"
}

variable private_key_path {
  # Описание переменной
  description = "Path to the private key for provisioners"
}
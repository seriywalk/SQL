### **** vm_web ****

variable "vm_web_name" {
  type    = string
  default = "netology-develop-platform-web"
  description = "Instance name"
}

variable "vm_web_platform" {
  type    = string
  default = "standard-v1"
  description = "Platform name"
}

variable "vm_web_cores" {
  type    = number
  default = 2
  description = "Count cores"
}

variable "vm_web_memory" {
  type    = number
  default = 1
  description = "RAM"
}

variable "vm_web_fraction" {
  type    = number
  default = 5
  description = "Core fraction"
}

### **** vm_db ****

variable "vm_db_name" {
  type    = string
  default = "netology-develop-platform-db"
  description = "Instance name"
}

variable "vm_db_platform" {
  type    = string
  default = "standard-v1"
  description = "Platform name"
}

variable "vm_db_cores" {
  type    = number
  default = 2
  description = "Count cores"
}

variable "vm_db_memory" {
  type    = number
  default = 2
  description = "RAM"
}

variable "vm_db_fraction" {
  type    = number
  default = 20
  description = "Core fraction"
}

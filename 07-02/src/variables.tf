###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; y0_AgAAAABoK0cUAATuwQAAAADbFcLq_fFbXF1HTfGDijdKzitTETNxcUo" 
# https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "b1gl8ve0e71kcg3tbapj"
# https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "b1g709q14ibltvag3ekd"
#https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "<your_ssh_ed25519_key>"
  description = "ssh-keygen -t ed25519"
}


### new vars

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Release OS"
}

### **** prefix name vms ****

variable "prefix_name" {
  type = map(string)
  default = {
    env     = "developer",
    project = "platform"
  }
}

/*
## **** vm_db ****

variable "vm_db_name" {
  type    = string
  default = "db"
  description = "Instance name"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name of VM"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standart-v1"
  description = "platform id"
}

variable "vm_web_cores" {
  type        = number
  default     = "2"
  description = "VM cores"
}

variable "vm_web_memory" {
  type        = number
  default     = "4"
  description = "VM memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = "5"
  description = "VM cf"
}
*/

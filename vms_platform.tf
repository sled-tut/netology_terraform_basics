variable vpn_name_db {
  type = string
  default = "develop_db"
  description = "VPC network & subnet name"
}

variable "vm_web_family" {
  type = string
  default = "ubuntu-2004-lts"
  description = "ubuntu version"
}

variable "vm_web_name" {
  type = string
  default = "netology-develop-platform-web"
  description = "instance name"
}

variable "vm_web_platform_id" {
  type = string
  default = "standard-v3"
  description = "platform id"
}

variable "vm_web_cores" {
  type = string
  default = "2"
  description = "vCPU amount"
}

variable vm_web_memory {
  type = string
  default = "1"
  description = "VM memory"
}

variable vm_web_core_fraction {
  type = string
  default = "20"
  description = "core fraction"
}

variable "vm_db_family" {
  type = string
  default = "ubuntu-2004-lts"
  description = "ubuntu version"
}

variable "vm_db_name" {
  type = string
  default = "netology-develop-platform-db"
  description = "instance name"
}

variable "vm_db_platform_id" {
  type = string
  default = "standard-v3"
  description = "platform id"
}

variable "vm_db_cores" {
  type = string
  default = "2"
  description = "vCPU amount"
}

variable vm_db_memory {
  type = string
  default = "2"
  description = "VM memory"
}

variable vm_db_core_fraction {
  type = string
  default = "20"
  description = "core fraction"
}

variable common_metadata {
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys          = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIESfUhYLz60i0F7c3wkSzkZF45m6MRSqn0Io8E1rMrE7 yc"
  }
  description = "metadata for VMs" 
}

variable "vms_resources" {
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
  description = "resources for VMs"
}

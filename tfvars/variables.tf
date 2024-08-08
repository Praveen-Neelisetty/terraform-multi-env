variable "instance_names" {
  type = map(string)
  #default values given in prod.tfvars and dev.tfvars
}

variable "common_tags" {
  type = map(string)
  default = {
    terraform = true
    Project   = "MyProject"
  }
}

variable "domain_name" {
  type    = string
  default = "praveen.online"
}

variable "zone_id" {
  type    = string
  default = "Z00919132R52PAI68SR11"
}

variable "Environment" {
  type = string
  #default values given in prod.tfvars and dev.tfvars
}

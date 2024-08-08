variable "instance_names" {
  type = map(string)
  default = {
    db-dev       = "t2.micro"
    frontend-dev = "t3.micro"
    backend-dev  = "t3.micro"
  }
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
  type    = string
  default = "dev"
}

variable "rg_name" {}
variable "location" {}
variable "lb_name" {}
variable "lb_ip_name" {}
variable "subnet_id" {}
variable "linux_nics" {}
variable "tags" {}

variable "ipconf_name" {
  default = "a2-ipconf-8013"
}

variable "backend_pool_name" {
  default = "a2-backend-pool-8013"
}

variable "probe_name" {
  default = "a2-probe-8013"
}

variable "rule_name" {
  default = "a2-rule-8013"
}

variable "zone_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "a_records" {
  type = map(object({
    name = string,
    ip_addresses = list(string)
  }))
}
variable "annotations" {
  description = "(optional) - Annotations of the docker registry"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(optional) - Description of the docker registry"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the docker registry"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the docker registry"
  type        = string
}

variable "namespace_id" {
  description = "(optional) - Namespace ID to add docker registry"
  type        = string
  default     = null
}

variable "project_id" {
  description = "(required) - Project ID to add docker registry"
  type        = string
}

variable "registries" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      address  = string
      password = string
      username = string
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}


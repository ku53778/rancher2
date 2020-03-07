variable "annotations" {
  description = "(optional) - Annotations of the secret"
  type        = map(string)
  default     = null
}

variable "data" {
  description = "(required) - Secret data base64 encoded"
  type        = map(string)
}

variable "description" {
  description = "(optional) - Secret description"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the secret"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional) - Secret name"
  type        = string
  default     = null
}

variable "namespace_id" {
  description = "(optional) - Namespace ID to add secret"
  type        = string
  default     = null
}

variable "project_id" {
  description = "(required) - Project ID to add secret"
  type        = string
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


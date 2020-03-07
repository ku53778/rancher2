variable "annotations" {
  description = "(optional) - Annotations of the certificate"
  type        = map(string)
  default     = null
}

variable "certs" {
  description = "(required) - Certificate certs base64 encoded"
  type        = string
}

variable "description" {
  description = "(optional) - Certificate description"
  type        = string
  default     = null
}

variable "key" {
  description = "(required) - Certificate key base64 encoded"
  type        = string
}

variable "labels" {
  description = "(optional) - Labels of the certificate"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(optional) - Certificate name"
  type        = string
  default     = null
}

variable "namespace_id" {
  description = "(optional) - Namespace ID to add certificate"
  type        = string
  default     = null
}

variable "project_id" {
  description = "(required) - Project ID to add certificate"
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


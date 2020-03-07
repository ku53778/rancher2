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


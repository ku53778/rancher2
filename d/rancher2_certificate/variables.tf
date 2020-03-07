variable "name" {
  description = "(required) - Name of the certificate"
  type        = string
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


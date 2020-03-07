variable "name" {
  description = "(required) - Name of the secret"
  type        = string
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


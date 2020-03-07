variable "annotations" {
  description = "(optional) - Annotations of the app"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the app"
  type        = string
}

variable "project_id" {
  description = "(required) - Project ID to add app"
  type        = string
}

variable "target_namespace" {
  description = "(optional) - Namespace name to add app"
  type        = string
  default     = null
}


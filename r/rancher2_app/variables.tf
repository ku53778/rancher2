variable "annotations" {
  description = "(optional) - Annotations of the app"
  type        = map(string)
  default     = null
}

variable "answers" {
  description = "(optional) - Answers of the app"
  type        = map(string)
  default     = null
}

variable "catalog_name" {
  description = "(required) - Catalog name of the app"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "force_upgrade" {
  description = "(optional) - Force app upgrade"
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the app"
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

variable "revision_id" {
  description = "(optional) - App revision id"
  type        = string
  default     = null
}

variable "target_namespace" {
  description = "(required) - Namespace name to add app"
  type        = string
}

variable "template_name" {
  description = "(required) - Template name of the app"
  type        = string
}

variable "template_version" {
  description = "(optional) - Template version of the app"
  type        = string
  default     = null
}

variable "values_yaml" {
  description = "(optional) - values.yaml base64 encoded file content of the app"
  type        = string
  default     = null
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


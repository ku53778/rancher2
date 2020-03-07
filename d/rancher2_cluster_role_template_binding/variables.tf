variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "role_template_id" {
  description = "(optional)"
  type        = string
  default     = null
}


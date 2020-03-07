variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "node_template_id" {
  description = "(optional)"
  type        = string
  default     = null
}


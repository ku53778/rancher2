variable "cluster_id" {
  description = "(required) - Alert rule cluster ID"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Alert rule name"
  type        = string
}


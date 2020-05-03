variable "cluster_id" {
  description = "(required) - The cluster ID to scan"
  type        = string
}

variable "name" {
  description = "(optional) - The cluster scan name"
  type        = string
  default     = null
}


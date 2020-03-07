variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(optional) - Cluster template description"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Cluster template name"
  type        = string
}


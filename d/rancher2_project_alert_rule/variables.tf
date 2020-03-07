variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Alert rule name"
  type        = string
}

variable "project_id" {
  description = "(required) - Alert rule project ID"
  type        = string
}


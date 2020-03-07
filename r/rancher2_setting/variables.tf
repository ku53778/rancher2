variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "value" {
  description = "(required)"
  type        = string
}


variable "name" {
  description = "(required)"
  type        = string
}

variable "use_internal_ip_address" {
  description = "(optional)"
  type        = bool
  default     = null
}


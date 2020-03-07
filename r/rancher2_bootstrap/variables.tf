variable "current_password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "password" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "telemetry" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "token_ttl" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "token_update" {
  description = "(optional)"
  type        = bool
  default     = null
}


variable "access_mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "allowed_principal_ids" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "application_id" {
  description = "(required)"
  type        = string
}

variable "application_secret" {
  description = "(required)"
  type        = string
}

variable "auth_endpoint" {
  description = "(required)"
  type        = string
}

variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "endpoint" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "graph_endpoint" {
  description = "(required)"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "rancher_url" {
  description = "(required)"
  type        = string
}

variable "tenant_id" {
  description = "(required)"
  type        = string
}

variable "token_endpoint" {
  description = "(required)"
  type        = string
}


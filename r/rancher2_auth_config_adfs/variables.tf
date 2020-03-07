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

variable "display_name_field" {
  description = "(required)"
  type        = string
}

variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "groups_field" {
  description = "(required)"
  type        = string
}

variable "idp_metadata_content" {
  description = "(required)"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "rancher_api_host" {
  description = "(required)"
  type        = string
}

variable "sp_cert" {
  description = "(required)"
  type        = string
}

variable "sp_key" {
  description = "(required)"
  type        = string
}

variable "uid_field" {
  description = "(required)"
  type        = string
}

variable "user_name_field" {
  description = "(required)"
  type        = string
}


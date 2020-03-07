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

variable "certificate" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "connection_timeout" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "group_dn_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_member_mapping_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_member_user_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_name_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_object_class" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_search_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "group_search_base" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "nested_group_membership_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "port" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "servers" {
  description = "(required)"
  type        = list(string)
}

variable "service_account_distinguished_name" {
  description = "(required)"
  type        = string
}

variable "service_account_password" {
  description = "(required)"
  type        = string
}

variable "tls" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "user_disabled_bit_mask" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "user_enabled_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_login_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_member_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_name_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_object_class" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_search_attribute" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "user_search_base" {
  description = "(required)"
  type        = string
}


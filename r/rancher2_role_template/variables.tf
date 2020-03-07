variable "administrative" {
  description = "(optional) - Administrative role template"
  type        = bool
  default     = null
}

variable "annotations" {
  description = "(optional) - Annotations of the role template"
  type        = map(string)
  default     = null
}

variable "context" {
  description = "(optional) - Context role template"
  type        = string
  default     = null
}

variable "default_role" {
  description = "(optional) - Default role template for new created cluster or project"
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional) - Role template policy description"
  type        = string
  default     = null
}

variable "external" {
  description = "(optional) - External role template"
  type        = bool
  default     = null
}

variable "hidden" {
  description = "(optional) - Hidden role template"
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the role template"
  type        = map(string)
  default     = null
}

variable "locked" {
  description = "(optional) - Locked role template"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required) - Role template policy name"
  type        = string
}

variable "role_template_ids" {
  description = "(optional) - Inherit role template IDs"
  type        = list(string)
  default     = null
}

variable "rules" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      api_groups        = list(string)
      non_resource_urls = list(string)
      resource_names    = list(string)
      resources         = list(string)
      verbs             = list(string)
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}


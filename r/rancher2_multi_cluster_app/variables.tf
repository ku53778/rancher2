variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "catalog_name" {
  description = "(required) - Multi cluster app catalog name"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Multi cluster app name"
  type        = string
}

variable "revision_history_limit" {
  description = "(optional) - Multi cluster app revision history limit"
  type        = number
  default     = null
}

variable "revision_id" {
  description = "(optional) - Multi cluster app revision name"
  type        = string
  default     = null
}

variable "roles" {
  description = "(required) - Multi cluster app roles"
  type        = list(string)
}

variable "template_name" {
  description = "(required) - Multi cluster app template name"
  type        = string
}

variable "template_version" {
  description = "(optional) - Multi cluster app template version"
  type        = string
  default     = null
}

variable "wait" {
  description = "(optional) - Wait until multi cluster app is active"
  type        = bool
  default     = null
}

variable "answers" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      cluster_id = string
      project_id = string
      values     = map(string)
    }
  ))
  default = []
}

variable "members" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      access_type        = string
      group_principal_id = string
      user_principal_id  = string
    }
  ))
  default = []
}

variable "targets" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      app_id       = string
      health_state = string
      project_id   = string
      state        = string
    }
  ))
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

variable "upgrade_strategy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      rolling_update = list(object(
        {
          batch_size = number
          interval   = number
        }
      ))
    }
  ))
  default = []
}


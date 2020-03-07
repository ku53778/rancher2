variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(optional) - Alert group description"
  type        = string
  default     = null
}

variable "group_interval_seconds" {
  description = "(optional) - Alert group interval seconds"
  type        = number
  default     = null
}

variable "group_wait_seconds" {
  description = "(optional) - Alert group wait seconds"
  type        = number
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Alert group name"
  type        = string
}

variable "project_id" {
  description = "(required) - Alert group Project ID"
  type        = string
}

variable "repeat_interval_seconds" {
  description = "(optional) - Alert group repeat interval seconds"
  type        = number
  default     = null
}

variable "recipients" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      notifier_id   = string
      notifier_type = string
      recipient     = string
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


variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "group_id" {
  description = "(required) - Alert rule group ID"
  type        = string
}

variable "group_interval_seconds" {
  description = "(optional) - Alert rule interval seconds"
  type        = number
  default     = null
}

variable "group_wait_seconds" {
  description = "(optional) - Alert rule wait seconds"
  type        = number
  default     = null
}

variable "inherited" {
  description = "(optional) - Alert rule inherited"
  type        = bool
  default     = null
}

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
  description = "(required) - Alert rule Project ID"
  type        = string
}

variable "repeat_interval_seconds" {
  description = "(optional) - Alert rule repeat interval seconds"
  type        = number
  default     = null
}

variable "severity" {
  description = "(optional) - Alert rule severity"
  type        = string
  default     = null
}

variable "metric_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      comparison      = string
      description     = string
      duration        = string
      expression      = string
      threshold_value = number
    }
  ))
  default = []
}

variable "pod_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      condition                = string
      pod_id                   = string
      restart_interval_seconds = number
      restart_times            = number
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

variable "workload_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      available_percentage = number
      selector             = map(string)
      workload_id          = string
    }
  ))
  default = []
}


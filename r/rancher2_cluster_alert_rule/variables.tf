variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(required) - Alert rule cluster ID"
  type        = string
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

variable "event_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      event_type    = string
      resource_kind = string
    }
  ))
  default = []
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

variable "node_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      condition     = string
      cpu_threshold = number
      mem_threshold = number
      node_id       = string
      selector      = map(string)
    }
  ))
  default = []
}

variable "system_service_rule" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      condition = string
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


variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(required) - Notifier cluster ID"
  type        = string
}

variable "description" {
  description = "(optional) - Notifier description"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Notifier name"
  type        = string
}

variable "send_resolved" {
  description = "(optional) - Notifier send resolved"
  type        = bool
  default     = null
}

variable "pagerduty_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      proxy_url   = string
      service_key = string
    }
  ))
  default = []
}

variable "slack_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      default_recipient = string
      proxy_url         = string
      url               = string
    }
  ))
  default = []
}

variable "smtp_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      default_recipient = string
      host              = string
      password          = string
      port              = number
      sender            = string
      tls               = bool
      username          = string
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

variable "webhook_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      proxy_url = string
      url       = string
    }
  ))
  default = []
}

variable "wechat_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      agent             = string
      corp              = string
      default_recipient = string
      proxy_url         = string
      recipient_type    = string
      secret            = string
    }
  ))
  default = []
}


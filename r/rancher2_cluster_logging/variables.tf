variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_id" {
  description = "(required)"
  type        = string
}

variable "kind" {
  description = "(required)"
  type        = string
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "namespace_id" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "output_flush_interval" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "output_tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "elasticsearch_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      auth_password   = string
      auth_username   = string
      certificate     = string
      client_cert     = string
      client_key      = string
      client_key_pass = string
      date_format     = string
      endpoint        = string
      index_prefix    = string
      ssl_verify      = bool
      ssl_version     = string
    }
  ))
  default = []
}

variable "fluentd_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      certificate = string
      compress    = bool
      enable_tls  = bool
      fluent_servers = list(object(
        {
          endpoint   = string
          hostname   = string
          password   = string
          shared_key = string
          standby    = bool
          username   = string
          weight     = number
        }
      ))
    }
  ))
  default = []
}

variable "kafka_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      broker_endpoints   = list(string)
      certificate        = string
      client_cert        = string
      client_key         = string
      topic              = string
      zookeeper_endpoint = string
    }
  ))
  default = []
}

variable "splunk_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      certificate     = string
      client_cert     = string
      client_key      = string
      client_key_pass = string
      endpoint        = string
      index           = string
      source          = string
      ssl_verify      = bool
      token           = string
    }
  ))
  default = []
}

variable "syslog_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      certificate = string
      client_cert = string
      client_key  = string
      endpoint    = string
      program     = string
      protocol    = string
      severity    = string
      ssl_verify  = bool
      token       = string
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


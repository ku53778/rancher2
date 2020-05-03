terraform {
  required_providers {
    rancher2 = ">= 1.7.3"
  }
}

resource "rancher2_project_logging" "this" {
  annotations           = var.annotations
  kind                  = var.kind
  labels                = var.labels
  name                  = var.name
  namespace_id          = var.namespace_id
  output_flush_interval = var.output_flush_interval
  output_tags           = var.output_tags
  project_id            = var.project_id

  dynamic "custom_target_config" {
    for_each = var.custom_target_config
    content {
      certificate = custom_target_config.value["certificate"]
      client_cert = custom_target_config.value["client_cert"]
      client_key  = custom_target_config.value["client_key"]
      content     = custom_target_config.value["content"]
    }
  }

  dynamic "elasticsearch_config" {
    for_each = var.elasticsearch_config
    content {
      auth_password   = elasticsearch_config.value["auth_password"]
      auth_username   = elasticsearch_config.value["auth_username"]
      certificate     = elasticsearch_config.value["certificate"]
      client_cert     = elasticsearch_config.value["client_cert"]
      client_key      = elasticsearch_config.value["client_key"]
      client_key_pass = elasticsearch_config.value["client_key_pass"]
      date_format     = elasticsearch_config.value["date_format"]
      endpoint        = elasticsearch_config.value["endpoint"]
      index_prefix    = elasticsearch_config.value["index_prefix"]
      ssl_verify      = elasticsearch_config.value["ssl_verify"]
      ssl_version     = elasticsearch_config.value["ssl_version"]
    }
  }

  dynamic "fluentd_config" {
    for_each = var.fluentd_config
    content {
      certificate = fluentd_config.value["certificate"]
      compress    = fluentd_config.value["compress"]
      enable_tls  = fluentd_config.value["enable_tls"]

      dynamic "fluent_servers" {
        for_each = fluentd_config.value.fluent_servers
        content {
          endpoint   = fluent_servers.value["endpoint"]
          hostname   = fluent_servers.value["hostname"]
          password   = fluent_servers.value["password"]
          shared_key = fluent_servers.value["shared_key"]
          standby    = fluent_servers.value["standby"]
          username   = fluent_servers.value["username"]
          weight     = fluent_servers.value["weight"]
        }
      }

    }
  }

  dynamic "kafka_config" {
    for_each = var.kafka_config
    content {
      broker_endpoints   = kafka_config.value["broker_endpoints"]
      certificate        = kafka_config.value["certificate"]
      client_cert        = kafka_config.value["client_cert"]
      client_key         = kafka_config.value["client_key"]
      topic              = kafka_config.value["topic"]
      zookeeper_endpoint = kafka_config.value["zookeeper_endpoint"]
    }
  }

  dynamic "splunk_config" {
    for_each = var.splunk_config
    content {
      certificate     = splunk_config.value["certificate"]
      client_cert     = splunk_config.value["client_cert"]
      client_key      = splunk_config.value["client_key"]
      client_key_pass = splunk_config.value["client_key_pass"]
      endpoint        = splunk_config.value["endpoint"]
      index           = splunk_config.value["index"]
      source          = splunk_config.value["source"]
      ssl_verify      = splunk_config.value["ssl_verify"]
      token           = splunk_config.value["token"]
    }
  }

  dynamic "syslog_config" {
    for_each = var.syslog_config
    content {
      certificate = syslog_config.value["certificate"]
      client_cert = syslog_config.value["client_cert"]
      client_key  = syslog_config.value["client_key"]
      endpoint    = syslog_config.value["endpoint"]
      program     = syslog_config.value["program"]
      protocol    = syslog_config.value["protocol"]
      severity    = syslog_config.value["severity"]
      ssl_verify  = syslog_config.value["ssl_verify"]
      token       = syslog_config.value["token"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}


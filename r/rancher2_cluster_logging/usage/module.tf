module "rancher2_cluster_logging" {
  source = "./modules/rancher2/r/rancher2_cluster_logging"

  annotations           = {}
  cluster_id            = null
  enable_json_parsing   = null
  kind                  = null
  labels                = {}
  name                  = null
  namespace_id          = null
  output_flush_interval = null
  output_tags           = {}

  custom_target_config = [{
    certificate = null
    client_cert = null
    client_key  = null
    content     = null
  }]

  elasticsearch_config = [{
    auth_password   = null
    auth_username   = null
    certificate     = null
    client_cert     = null
    client_key      = null
    client_key_pass = null
    date_format     = null
    endpoint        = null
    index_prefix    = null
    ssl_verify      = null
    ssl_version     = null
  }]

  fluentd_config = [{
    certificate = null
    compress    = null
    enable_tls  = null
    fluent_servers = [{
      endpoint   = null
      hostname   = null
      password   = null
      shared_key = null
      standby    = null
      username   = null
      weight     = null
    }]
  }]

  kafka_config = [{
    broker_endpoints   = []
    certificate        = null
    client_cert        = null
    client_key         = null
    topic              = null
    zookeeper_endpoint = null
  }]

  splunk_config = [{
    certificate     = null
    client_cert     = null
    client_key      = null
    client_key_pass = null
    endpoint        = null
    index           = null
    source          = null
    ssl_verify      = null
    token           = null
  }]

  syslog_config = [{
    certificate = null
    client_cert = null
    client_key  = null
    endpoint    = null
    program     = null
    protocol    = null
    severity    = null
    ssl_verify  = null
    token       = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}

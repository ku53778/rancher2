variable "annotations" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "cluster_template_id" {
  description = "(optional) - Cluster template ID"
  type        = string
  default     = null
}

variable "cluster_template_revision_id" {
  description = "(optional) - Cluster template revision ID"
  type        = string
  default     = null
}

variable "default_pod_security_policy_template_id" {
  description = "(optional) - Default pod security policy template id"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "desired_agent_image" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "desired_auth_image" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "docker_root_dir" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "driver" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "enable_cluster_alerting" {
  description = "(optional) - Enable built-in cluster alerting"
  type        = bool
  default     = null
}

variable "enable_cluster_istio" {
  description = "(optional) - Enable built-in cluster istio"
  type        = bool
  default     = null
}

variable "enable_cluster_monitoring" {
  description = "(optional) - Enable built-in cluster monitoring"
  type        = bool
  default     = null
}

variable "enable_network_policy" {
  description = "(optional) - Enable project network isolation"
  type        = bool
  default     = null
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

variable "windows_prefered_cluster" {
  description = "(optional) - Windows preferred cluster"
  type        = bool
  default     = null
}

variable "aks_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      aad_server_app_secret                  = string
      aad_tenant_id                          = string
      add_client_app_id                      = string
      add_server_app_id                      = string
      admin_username                         = string
      agent_dns_prefix                       = string
      agent_os_disk_size                     = number
      agent_pool_name                        = string
      agent_storage_profile                  = string
      agent_vm_size                          = string
      auth_base_url                          = string
      base_url                               = string
      client_id                              = string
      client_secret                          = string
      count                                  = number
      dns_service_ip                         = string
      docker_bridge_cidr                     = string
      enable_http_application_routing        = bool
      enable_monitoring                      = bool
      kubernetes_version                     = string
      location                               = string
      log_analytics_workspace                = string
      log_analytics_workspace_resource_group = string
      master_dns_prefix                      = string
      max_pods                               = number
      network_plugin                         = string
      network_policy                         = string
      pod_cidr                               = string
      resource_group                         = string
      service_cidr                           = string
      ssh_public_key_contents                = string
      subnet                                 = string
      subscription_id                        = string
      tag                                    = map(string)
      tenant_id                              = string
      virtual_network                        = string
      virtual_network_resource_group         = string
    }
  ))
  default = []
}

variable "cluster_auth_endpoint" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      ca_certs = string
      enabled  = bool
      fqdn     = string
    }
  ))
  default = []
}

variable "cluster_monitoring_input" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      answers = map(string)
    }
  ))
  default = []
}

variable "cluster_template_answers" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cluster_id = string
      project_id = string
      values     = map(string)
    }
  ))
  default = []
}

variable "cluster_template_questions" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      default  = string
      required = bool
      type     = string
      variable = string
    }
  ))
  default = []
}

variable "eks_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      access_key                      = string
      ami                             = string
      associate_worker_node_public_ip = bool
      desired_nodes                   = number
      instance_type                   = string
      key_pair_name                   = string
      kubernetes_version              = string
      maximum_nodes                   = number
      minimum_nodes                   = number
      node_volume_size                = number
      region                          = string
      secret_key                      = string
      security_groups                 = list(string)
      service_role                    = string
      session_token                   = string
      subnets                         = list(string)
      user_data                       = string
      virtual_network                 = string
    }
  ))
  default = []
}

variable "gke_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      cluster_ipv4_cidr                       = string
      credential                              = string
      description                             = string
      disk_size_gb                            = number
      disk_type                               = string
      enable_alpha_feature                    = bool
      enable_auto_repair                      = bool
      enable_auto_upgrade                     = bool
      enable_horizontal_pod_autoscaling       = bool
      enable_http_load_balancing              = bool
      enable_kubernetes_dashboard             = bool
      enable_legacy_abac                      = bool
      enable_master_authorized_network        = bool
      enable_network_policy_config            = bool
      enable_nodepool_autoscaling             = bool
      enable_private_endpoint                 = bool
      enable_private_nodes                    = bool
      enable_stackdriver_logging              = bool
      enable_stackdriver_monitoring           = bool
      image_type                              = string
      ip_policy_cluster_ipv4_cidr_block       = string
      ip_policy_cluster_secondary_range_name  = string
      ip_policy_create_subnetwork             = bool
      ip_policy_node_ipv4_cidr_block          = string
      ip_policy_services_ipv4_cidr_block      = string
      ip_policy_services_secondary_range_name = string
      ip_policy_subnetwork_name               = string
      issue_client_certificate                = bool
      kubernetes_dashboard                    = bool
      labels                                  = map(string)
      local_ssd_count                         = number
      locations                               = list(string)
      machine_type                            = string
      maintenance_window                      = string
      master_authorized_network_cidr_blocks   = list(string)
      master_ipv4_cidr_block                  = string
      master_version                          = string
      max_node_count                          = number
      min_node_count                          = number
      network                                 = string
      node_count                              = number
      node_pool                               = string
      node_version                            = string
      oauth_scopes                            = list(string)
      preemptible                             = bool
      project_id                              = string
      resource_labels                         = map(string)
      service_account                         = string
      sub_network                             = string
      taints                                  = list(string)
      use_ip_aliases                          = bool
      zone                                    = string
    }
  ))
  default = []
}

variable "k3s_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      upgrade_strategy = list(object(
        {
          drain_server_nodes = bool
          drain_worker_nodes = bool
          server_concurrency = number
          worker_concurrency = number
        }
      ))
      version = string
    }
  ))
  default = []
}

variable "rke_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      addon_job_timeout = number
      addons            = string
      addons_include    = list(string)
      authentication = list(object(
        {
          sans     = list(string)
          strategy = string
        }
      ))
      authorization = list(object(
        {
          mode    = string
          options = map(string)
        }
      ))
      bastion_host = list(object(
        {
          address        = string
          port           = string
          ssh_agent_auth = bool
          ssh_key        = string
          ssh_key_path   = string
          user           = string
        }
      ))
      cloud_provider = list(object(
        {
          aws_cloud_provider = list(object(
            {
              global = list(object(
                {
                  disable_security_group_ingress = bool
                  disable_strict_zone_check      = bool
                  elb_security_group             = string
                  kubernetes_cluster_id          = string
                  kubernetes_cluster_tag         = string
                  role_arn                       = string
                  route_table_id                 = string
                  subnet_id                      = string
                  vpc                            = string
                  zone                           = string
                }
              ))
              service_override = list(object(
                {
                  region         = string
                  service        = string
                  signing_method = string
                  signing_name   = string
                  signing_region = string
                  url            = string
                }
              ))
            }
          ))
          azure_cloud_provider = list(object(
            {
              aad_client_cert_password         = string
              aad_client_cert_path             = string
              aad_client_id                    = string
              aad_client_secret                = string
              cloud                            = string
              cloud_provider_backoff           = bool
              cloud_provider_backoff_duration  = number
              cloud_provider_backoff_exponent  = number
              cloud_provider_backoff_jitter    = number
              cloud_provider_backoff_retries   = number
              cloud_provider_rate_limit        = bool
              cloud_provider_rate_limit_bucket = number
              cloud_provider_rate_limit_qps    = number
              location                         = string
              maximum_load_balancer_rule_count = number
              primary_availability_set_name    = string
              primary_scale_set_name           = string
              resource_group                   = string
              route_table_name                 = string
              security_group_name              = string
              subnet_name                      = string
              subscription_id                  = string
              tenant_id                        = string
              use_instance_metadata            = bool
              use_managed_identity_extension   = bool
              vm_type                          = string
              vnet_name                        = string
              vnet_resource_group              = string
            }
          ))
          custom_cloud_provider = string
          name                  = string
          openstack_cloud_provider = list(object(
            {
              block_storage = list(object(
                {
                  bs_version        = string
                  ignore_volume_az  = bool
                  trust_device_path = bool
                }
              ))
              global = list(object(
                {
                  auth_url    = string
                  ca_file     = string
                  domain_id   = string
                  domain_name = string
                  password    = string
                  region      = string
                  tenant_id   = string
                  tenant_name = string
                  trust_id    = string
                  username    = string
                }
              ))
              load_balancer = list(object(
                {
                  create_monitor         = bool
                  floating_network_id    = string
                  lb_method              = string
                  lb_provider            = string
                  lb_version             = string
                  manage_security_groups = bool
                  monitor_delay          = string
                  monitor_max_retries    = number
                  monitor_timeout        = string
                  subnet_id              = string
                  use_octavia            = bool
                }
              ))
              metadata = list(object(
                {
                  request_timeout = number
                  search_order    = string
                }
              ))
              route = list(object(
                {
                  router_id = string
                }
              ))
            }
          ))
          vsphere_cloud_provider = list(object(
            {
              disk = list(object(
                {
                  scsi_controller_type = string
                }
              ))
              global = list(object(
                {
                  datacenters          = string
                  insecure_flag        = bool
                  password             = string
                  port                 = string
                  soap_roundtrip_count = number
                  user                 = string
                }
              ))
              network = list(object(
                {
                  public_network = string
                }
              ))
              virtual_center = list(object(
                {
                  datacenters          = string
                  name                 = string
                  password             = string
                  port                 = string
                  soap_roundtrip_count = number
                  user                 = string
                }
              ))
              workspace = list(object(
                {
                  datacenter        = string
                  default_datastore = string
                  folder            = string
                  resourcepool_path = string
                  server            = string
                }
              ))
            }
          ))
        }
      ))
      dns = list(object(
        {
          node_selector        = map(string)
          provider             = string
          reverse_cidrs        = list(string)
          upstream_nameservers = list(string)
        }
      ))
      ignore_docker_version = bool
      ingress = list(object(
        {
          dns_policy    = string
          extra_args    = map(string)
          node_selector = map(string)
          options       = map(string)
          provider      = string
        }
      ))
      kubernetes_version = string
      monitoring = list(object(
        {
          options  = map(string)
          provider = string
        }
      ))
      network = list(object(
        {
          calico_network_provider = list(object(
            {
              cloud_provider = string
            }
          ))
          canal_network_provider = list(object(
            {
              iface = string
            }
          ))
          flannel_network_provider = list(object(
            {
              iface = string
            }
          ))
          mtu     = number
          options = map(string)
          plugin  = string
          weave_network_provider = list(object(
            {
              password = string
            }
          ))
        }
      ))
      nodes = list(object(
        {
          address           = string
          docker_socket     = string
          hostname_override = string
          internal_address  = string
          labels            = map(string)
          node_id           = string
          port              = string
          role              = list(string)
          ssh_agent_auth    = bool
          ssh_key           = string
          ssh_key_path      = string
          user              = string
        }
      ))
      prefix_path = string
      private_registries = list(object(
        {
          is_default = bool
          password   = string
          url        = string
          user       = string
        }
      ))
      services = list(object(
        {
          etcd = list(object(
            {
              backup_config = list(object(
                {
                  enabled        = bool
                  interval_hours = number
                  retention      = number
                  s3_backup_config = list(object(
                    {
                      access_key  = string
                      bucket_name = string
                      custom_ca   = string
                      endpoint    = string
                      folder      = string
                      region      = string
                      secret_key  = string
                    }
                  ))
                  safe_timestamp = bool
                }
              ))
              ca_cert       = string
              cert          = string
              creation      = string
              external_urls = list(string)
              extra_args    = map(string)
              extra_binds   = list(string)
              extra_env     = list(string)
              gid           = number
              image         = string
              key           = string
              path          = string
              retention     = string
              snapshot      = bool
              uid           = number
            }
          ))
          kube_api = list(object(
            {
              admission_configuration = map(string)
              always_pull_images      = bool
              audit_log = list(object(
                {
                  configuration = list(object(
                    {
                      format     = string
                      max_age    = number
                      max_backup = number
                      max_size   = number
                      path       = string
                      policy     = string
                    }
                  ))
                  enabled = bool
                }
              ))
              event_rate_limit = list(object(
                {
                  configuration = map(string)
                  enabled       = bool
                }
              ))
              extra_args          = map(string)
              extra_binds         = list(string)
              extra_env           = list(string)
              image               = string
              pod_security_policy = bool
              secrets_encryption_config = list(object(
                {
                  custom_config = map(string)
                  enabled       = bool
                }
              ))
              service_cluster_ip_range = string
              service_node_port_range  = string
            }
          ))
          kube_controller = list(object(
            {
              cluster_cidr             = string
              extra_args               = map(string)
              extra_binds              = list(string)
              extra_env                = list(string)
              image                    = string
              service_cluster_ip_range = string
            }
          ))
          kubelet = list(object(
            {
              cluster_dns_server           = string
              cluster_domain               = string
              extra_args                   = map(string)
              extra_binds                  = list(string)
              extra_env                    = list(string)
              fail_swap_on                 = bool
              generate_serving_certificate = bool
              image                        = string
              infra_container_image        = string
            }
          ))
          kubeproxy = list(object(
            {
              extra_args  = map(string)
              extra_binds = list(string)
              extra_env   = list(string)
              image       = string
            }
          ))
          scheduler = list(object(
            {
              extra_args  = map(string)
              extra_binds = list(string)
              extra_env   = list(string)
              image       = string
            }
          ))
        }
      ))
      ssh_agent_auth = bool
      ssh_cert_path  = string
      ssh_key_path   = string
      upgrade_strategy = list(object(
        {
          drain = bool
          drain_input = list(object(
            {
              delete_local_data  = bool
              force              = bool
              grace_period       = number
              ignore_daemon_sets = bool
              timeout            = number
            }
          ))
          max_unavailable_controlplane = string
          max_unavailable_worker       = string
        }
      ))
    }
  ))
  default = []
}

variable "scheduled_cluster_scan" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled = bool
      scan_config = list(object(
        {
          cis_scan_config = list(object(
            {
              debug_master               = bool
              debug_worker               = bool
              override_benchmark_version = string
              override_skip              = list(string)
              profile                    = string
            }
          ))
        }
      ))
      schedule_config = list(object(
        {
          cron_schedule = string
          retention     = number
        }
      ))
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


terraform {
  required_providers {
    rancher2 = ">= 1.8.1"
  }
}

resource "rancher2_cluster_template" "this" {
  annotations = var.annotations
  description = var.description
  labels      = var.labels
  name        = var.name

  dynamic "members" {
    for_each = var.members
    content {
      access_type        = members.value["access_type"]
      group_principal_id = members.value["group_principal_id"]
      user_principal_id  = members.value["user_principal_id"]
    }
  }

  dynamic "template_revisions" {
    for_each = var.template_revisions
    content {
      annotations = template_revisions.value["annotations"]
      default     = template_revisions.value["default"]
      enabled     = template_revisions.value["enabled"]
      labels      = template_revisions.value["labels"]
      name        = template_revisions.value["name"]

      dynamic "cluster_config" {
        for_each = template_revisions.value.cluster_config
        content {
          default_cluster_role_for_project_members = cluster_config.value["default_cluster_role_for_project_members"]
          default_pod_security_policy_template_id  = cluster_config.value["default_pod_security_policy_template_id"]
          desired_agent_image                      = cluster_config.value["desired_agent_image"]
          desired_auth_image                       = cluster_config.value["desired_auth_image"]
          docker_root_dir                          = cluster_config.value["docker_root_dir"]
          enable_cluster_alerting                  = cluster_config.value["enable_cluster_alerting"]
          enable_cluster_monitoring                = cluster_config.value["enable_cluster_monitoring"]
          enable_network_policy                    = cluster_config.value["enable_network_policy"]
          windows_prefered_cluster                 = cluster_config.value["windows_prefered_cluster"]

          dynamic "cluster_auth_endpoint" {
            for_each = cluster_config.value.cluster_auth_endpoint
            content {
              ca_certs = cluster_auth_endpoint.value["ca_certs"]
              enabled  = cluster_auth_endpoint.value["enabled"]
              fqdn     = cluster_auth_endpoint.value["fqdn"]
            }
          }

          dynamic "rke_config" {
            for_each = cluster_config.value.rke_config
            content {
              addon_job_timeout     = rke_config.value["addon_job_timeout"]
              addons                = rke_config.value["addons"]
              addons_include        = rke_config.value["addons_include"]
              ignore_docker_version = rke_config.value["ignore_docker_version"]
              kubernetes_version    = rke_config.value["kubernetes_version"]
              prefix_path           = rke_config.value["prefix_path"]
              ssh_agent_auth        = rke_config.value["ssh_agent_auth"]
              ssh_cert_path         = rke_config.value["ssh_cert_path"]
              ssh_key_path          = rke_config.value["ssh_key_path"]

              dynamic "authentication" {
                for_each = rke_config.value.authentication
                content {
                  sans     = authentication.value["sans"]
                  strategy = authentication.value["strategy"]
                }
              }

              dynamic "authorization" {
                for_each = rke_config.value.authorization
                content {
                  mode    = authorization.value["mode"]
                  options = authorization.value["options"]
                }
              }

              dynamic "bastion_host" {
                for_each = rke_config.value.bastion_host
                content {
                  address        = bastion_host.value["address"]
                  port           = bastion_host.value["port"]
                  ssh_agent_auth = bastion_host.value["ssh_agent_auth"]
                  ssh_key        = bastion_host.value["ssh_key"]
                  ssh_key_path   = bastion_host.value["ssh_key_path"]
                  user           = bastion_host.value["user"]
                }
              }

              dynamic "cloud_provider" {
                for_each = rke_config.value.cloud_provider
                content {
                  custom_cloud_provider = cloud_provider.value["custom_cloud_provider"]
                  name                  = cloud_provider.value["name"]

                  dynamic "aws_cloud_provider" {
                    for_each = cloud_provider.value.aws_cloud_provider
                    content {

                      dynamic "global" {
                        for_each = aws_cloud_provider.value.global
                        content {
                          disable_security_group_ingress = global.value["disable_security_group_ingress"]
                          disable_strict_zone_check      = global.value["disable_strict_zone_check"]
                          elb_security_group             = global.value["elb_security_group"]
                          kubernetes_cluster_id          = global.value["kubernetes_cluster_id"]
                          kubernetes_cluster_tag         = global.value["kubernetes_cluster_tag"]
                          role_arn                       = global.value["role_arn"]
                          route_table_id                 = global.value["route_table_id"]
                          subnet_id                      = global.value["subnet_id"]
                          vpc                            = global.value["vpc"]
                          zone                           = global.value["zone"]
                        }
                      }

                      dynamic "service_override" {
                        for_each = aws_cloud_provider.value.service_override
                        content {
                          region         = service_override.value["region"]
                          service        = service_override.value["service"]
                          signing_method = service_override.value["signing_method"]
                          signing_name   = service_override.value["signing_name"]
                          signing_region = service_override.value["signing_region"]
                          url            = service_override.value["url"]
                        }
                      }

                    }
                  }

                  dynamic "azure_cloud_provider" {
                    for_each = cloud_provider.value.azure_cloud_provider
                    content {
                      aad_client_cert_password         = azure_cloud_provider.value["aad_client_cert_password"]
                      aad_client_cert_path             = azure_cloud_provider.value["aad_client_cert_path"]
                      aad_client_id                    = azure_cloud_provider.value["aad_client_id"]
                      aad_client_secret                = azure_cloud_provider.value["aad_client_secret"]
                      cloud                            = azure_cloud_provider.value["cloud"]
                      cloud_provider_backoff           = azure_cloud_provider.value["cloud_provider_backoff"]
                      cloud_provider_backoff_duration  = azure_cloud_provider.value["cloud_provider_backoff_duration"]
                      cloud_provider_backoff_exponent  = azure_cloud_provider.value["cloud_provider_backoff_exponent"]
                      cloud_provider_backoff_jitter    = azure_cloud_provider.value["cloud_provider_backoff_jitter"]
                      cloud_provider_backoff_retries   = azure_cloud_provider.value["cloud_provider_backoff_retries"]
                      cloud_provider_rate_limit        = azure_cloud_provider.value["cloud_provider_rate_limit"]
                      cloud_provider_rate_limit_bucket = azure_cloud_provider.value["cloud_provider_rate_limit_bucket"]
                      cloud_provider_rate_limit_qps    = azure_cloud_provider.value["cloud_provider_rate_limit_qps"]
                      location                         = azure_cloud_provider.value["location"]
                      maximum_load_balancer_rule_count = azure_cloud_provider.value["maximum_load_balancer_rule_count"]
                      primary_availability_set_name    = azure_cloud_provider.value["primary_availability_set_name"]
                      primary_scale_set_name           = azure_cloud_provider.value["primary_scale_set_name"]
                      resource_group                   = azure_cloud_provider.value["resource_group"]
                      route_table_name                 = azure_cloud_provider.value["route_table_name"]
                      security_group_name              = azure_cloud_provider.value["security_group_name"]
                      subnet_name                      = azure_cloud_provider.value["subnet_name"]
                      subscription_id                  = azure_cloud_provider.value["subscription_id"]
                      tenant_id                        = azure_cloud_provider.value["tenant_id"]
                      use_instance_metadata            = azure_cloud_provider.value["use_instance_metadata"]
                      use_managed_identity_extension   = azure_cloud_provider.value["use_managed_identity_extension"]
                      vm_type                          = azure_cloud_provider.value["vm_type"]
                      vnet_name                        = azure_cloud_provider.value["vnet_name"]
                      vnet_resource_group              = azure_cloud_provider.value["vnet_resource_group"]
                    }
                  }

                  dynamic "openstack_cloud_provider" {
                    for_each = cloud_provider.value.openstack_cloud_provider
                    content {

                      dynamic "block_storage" {
                        for_each = openstack_cloud_provider.value.block_storage
                        content {
                          bs_version        = block_storage.value["bs_version"]
                          ignore_volume_az  = block_storage.value["ignore_volume_az"]
                          trust_device_path = block_storage.value["trust_device_path"]
                        }
                      }

                      dynamic "global" {
                        for_each = openstack_cloud_provider.value.global
                        content {
                          auth_url    = global.value["auth_url"]
                          ca_file     = global.value["ca_file"]
                          domain_id   = global.value["domain_id"]
                          domain_name = global.value["domain_name"]
                          password    = global.value["password"]
                          region      = global.value["region"]
                          tenant_id   = global.value["tenant_id"]
                          tenant_name = global.value["tenant_name"]
                          trust_id    = global.value["trust_id"]
                          username    = global.value["username"]
                        }
                      }

                      dynamic "load_balancer" {
                        for_each = openstack_cloud_provider.value.load_balancer
                        content {
                          create_monitor         = load_balancer.value["create_monitor"]
                          floating_network_id    = load_balancer.value["floating_network_id"]
                          lb_method              = load_balancer.value["lb_method"]
                          lb_provider            = load_balancer.value["lb_provider"]
                          lb_version             = load_balancer.value["lb_version"]
                          manage_security_groups = load_balancer.value["manage_security_groups"]
                          monitor_delay          = load_balancer.value["monitor_delay"]
                          monitor_max_retries    = load_balancer.value["monitor_max_retries"]
                          monitor_timeout        = load_balancer.value["monitor_timeout"]
                          subnet_id              = load_balancer.value["subnet_id"]
                          use_octavia            = load_balancer.value["use_octavia"]
                        }
                      }

                      dynamic "metadata" {
                        for_each = openstack_cloud_provider.value.metadata
                        content {
                          request_timeout = metadata.value["request_timeout"]
                          search_order    = metadata.value["search_order"]
                        }
                      }

                      dynamic "route" {
                        for_each = openstack_cloud_provider.value.route
                        content {
                          router_id = route.value["router_id"]
                        }
                      }

                    }
                  }

                  dynamic "vsphere_cloud_provider" {
                    for_each = cloud_provider.value.vsphere_cloud_provider
                    content {

                      dynamic "disk" {
                        for_each = vsphere_cloud_provider.value.disk
                        content {
                          scsi_controller_type = disk.value["scsi_controller_type"]
                        }
                      }

                      dynamic "global" {
                        for_each = vsphere_cloud_provider.value.global
                        content {
                          datacenters          = global.value["datacenters"]
                          insecure_flag        = global.value["insecure_flag"]
                          password             = global.value["password"]
                          port                 = global.value["port"]
                          soap_roundtrip_count = global.value["soap_roundtrip_count"]
                          user                 = global.value["user"]
                        }
                      }

                      dynamic "network" {
                        for_each = vsphere_cloud_provider.value.network
                        content {
                          public_network = network.value["public_network"]
                        }
                      }

                      dynamic "virtual_center" {
                        for_each = vsphere_cloud_provider.value.virtual_center
                        content {
                          datacenters          = virtual_center.value["datacenters"]
                          name                 = virtual_center.value["name"]
                          password             = virtual_center.value["password"]
                          port                 = virtual_center.value["port"]
                          soap_roundtrip_count = virtual_center.value["soap_roundtrip_count"]
                          user                 = virtual_center.value["user"]
                        }
                      }

                      dynamic "workspace" {
                        for_each = vsphere_cloud_provider.value.workspace
                        content {
                          datacenter        = workspace.value["datacenter"]
                          default_datastore = workspace.value["default_datastore"]
                          folder            = workspace.value["folder"]
                          resourcepool_path = workspace.value["resourcepool_path"]
                          server            = workspace.value["server"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "dns" {
                for_each = rke_config.value.dns
                content {
                  node_selector        = dns.value["node_selector"]
                  provider             = dns.value["provider"]
                  reverse_cidrs        = dns.value["reverse_cidrs"]
                  upstream_nameservers = dns.value["upstream_nameservers"]
                }
              }

              dynamic "ingress" {
                for_each = rke_config.value.ingress
                content {
                  dns_policy    = ingress.value["dns_policy"]
                  extra_args    = ingress.value["extra_args"]
                  node_selector = ingress.value["node_selector"]
                  options       = ingress.value["options"]
                  provider      = ingress.value["provider"]
                }
              }

              dynamic "monitoring" {
                for_each = rke_config.value.monitoring
                content {
                  options  = monitoring.value["options"]
                  provider = monitoring.value["provider"]
                }
              }

              dynamic "network" {
                for_each = rke_config.value.network
                content {
                  mtu     = network.value["mtu"]
                  options = network.value["options"]
                  plugin  = network.value["plugin"]

                  dynamic "calico_network_provider" {
                    for_each = network.value.calico_network_provider
                    content {
                      cloud_provider = calico_network_provider.value["cloud_provider"]
                    }
                  }

                  dynamic "canal_network_provider" {
                    for_each = network.value.canal_network_provider
                    content {
                      iface = canal_network_provider.value["iface"]
                    }
                  }

                  dynamic "flannel_network_provider" {
                    for_each = network.value.flannel_network_provider
                    content {
                      iface = flannel_network_provider.value["iface"]
                    }
                  }

                  dynamic "weave_network_provider" {
                    for_each = network.value.weave_network_provider
                    content {
                      password = weave_network_provider.value["password"]
                    }
                  }

                }
              }

              dynamic "nodes" {
                for_each = rke_config.value.nodes
                content {
                  address           = nodes.value["address"]
                  docker_socket     = nodes.value["docker_socket"]
                  hostname_override = nodes.value["hostname_override"]
                  internal_address  = nodes.value["internal_address"]
                  labels            = nodes.value["labels"]
                  node_id           = nodes.value["node_id"]
                  port              = nodes.value["port"]
                  role              = nodes.value["role"]
                  ssh_agent_auth    = nodes.value["ssh_agent_auth"]
                  ssh_key           = nodes.value["ssh_key"]
                  ssh_key_path      = nodes.value["ssh_key_path"]
                  user              = nodes.value["user"]
                }
              }

              dynamic "private_registries" {
                for_each = rke_config.value.private_registries
                content {
                  is_default = private_registries.value["is_default"]
                  password   = private_registries.value["password"]
                  url        = private_registries.value["url"]
                  user       = private_registries.value["user"]
                }
              }

              dynamic "services" {
                for_each = rke_config.value.services
                content {

                  dynamic "etcd" {
                    for_each = services.value.etcd
                    content {
                      ca_cert       = etcd.value["ca_cert"]
                      cert          = etcd.value["cert"]
                      creation      = etcd.value["creation"]
                      external_urls = etcd.value["external_urls"]
                      extra_args    = etcd.value["extra_args"]
                      extra_binds   = etcd.value["extra_binds"]
                      extra_env     = etcd.value["extra_env"]
                      gid           = etcd.value["gid"]
                      image         = etcd.value["image"]
                      key           = etcd.value["key"]
                      path          = etcd.value["path"]
                      retention     = etcd.value["retention"]
                      snapshot      = etcd.value["snapshot"]
                      uid           = etcd.value["uid"]

                      dynamic "backup_config" {
                        for_each = etcd.value.backup_config
                        content {
                          enabled        = backup_config.value["enabled"]
                          interval_hours = backup_config.value["interval_hours"]
                          retention      = backup_config.value["retention"]
                          safe_timestamp = backup_config.value["safe_timestamp"]

                          dynamic "s3_backup_config" {
                            for_each = backup_config.value.s3_backup_config
                            content {
                              access_key  = s3_backup_config.value["access_key"]
                              bucket_name = s3_backup_config.value["bucket_name"]
                              custom_ca   = s3_backup_config.value["custom_ca"]
                              endpoint    = s3_backup_config.value["endpoint"]
                              folder      = s3_backup_config.value["folder"]
                              region      = s3_backup_config.value["region"]
                              secret_key  = s3_backup_config.value["secret_key"]
                            }
                          }

                        }
                      }

                    }
                  }

                  dynamic "kube_api" {
                    for_each = services.value.kube_api
                    content {
                      admission_configuration  = kube_api.value["admission_configuration"]
                      always_pull_images       = kube_api.value["always_pull_images"]
                      extra_args               = kube_api.value["extra_args"]
                      extra_binds              = kube_api.value["extra_binds"]
                      extra_env                = kube_api.value["extra_env"]
                      image                    = kube_api.value["image"]
                      pod_security_policy      = kube_api.value["pod_security_policy"]
                      service_cluster_ip_range = kube_api.value["service_cluster_ip_range"]
                      service_node_port_range  = kube_api.value["service_node_port_range"]

                      dynamic "audit_log" {
                        for_each = kube_api.value.audit_log
                        content {
                          enabled = audit_log.value["enabled"]

                          dynamic "configuration" {
                            for_each = audit_log.value.configuration
                            content {
                              format     = configuration.value["format"]
                              max_age    = configuration.value["max_age"]
                              max_backup = configuration.value["max_backup"]
                              max_size   = configuration.value["max_size"]
                              path       = configuration.value["path"]
                              policy     = configuration.value["policy"]
                            }
                          }

                        }
                      }

                      dynamic "event_rate_limit" {
                        for_each = kube_api.value.event_rate_limit
                        content {
                          configuration = event_rate_limit.value["configuration"]
                          enabled       = event_rate_limit.value["enabled"]
                        }
                      }

                      dynamic "secrets_encryption_config" {
                        for_each = kube_api.value.secrets_encryption_config
                        content {
                          custom_config = secrets_encryption_config.value["custom_config"]
                          enabled       = secrets_encryption_config.value["enabled"]
                        }
                      }

                    }
                  }

                  dynamic "kube_controller" {
                    for_each = services.value.kube_controller
                    content {
                      cluster_cidr             = kube_controller.value["cluster_cidr"]
                      extra_args               = kube_controller.value["extra_args"]
                      extra_binds              = kube_controller.value["extra_binds"]
                      extra_env                = kube_controller.value["extra_env"]
                      image                    = kube_controller.value["image"]
                      service_cluster_ip_range = kube_controller.value["service_cluster_ip_range"]
                    }
                  }

                  dynamic "kubelet" {
                    for_each = services.value.kubelet
                    content {
                      cluster_dns_server           = kubelet.value["cluster_dns_server"]
                      cluster_domain               = kubelet.value["cluster_domain"]
                      extra_args                   = kubelet.value["extra_args"]
                      extra_binds                  = kubelet.value["extra_binds"]
                      extra_env                    = kubelet.value["extra_env"]
                      fail_swap_on                 = kubelet.value["fail_swap_on"]
                      generate_serving_certificate = kubelet.value["generate_serving_certificate"]
                      image                        = kubelet.value["image"]
                      infra_container_image        = kubelet.value["infra_container_image"]
                    }
                  }

                  dynamic "kubeproxy" {
                    for_each = services.value.kubeproxy
                    content {
                      extra_args  = kubeproxy.value["extra_args"]
                      extra_binds = kubeproxy.value["extra_binds"]
                      extra_env   = kubeproxy.value["extra_env"]
                      image       = kubeproxy.value["image"]
                    }
                  }

                  dynamic "scheduler" {
                    for_each = services.value.scheduler
                    content {
                      extra_args  = scheduler.value["extra_args"]
                      extra_binds = scheduler.value["extra_binds"]
                      extra_env   = scheduler.value["extra_env"]
                      image       = scheduler.value["image"]
                    }
                  }

                }
              }

              dynamic "upgrade_strategy" {
                for_each = rke_config.value.upgrade_strategy
                content {
                  drain                        = upgrade_strategy.value["drain"]
                  max_unavailable_controlplane = upgrade_strategy.value["max_unavailable_controlplane"]
                  max_unavailable_worker       = upgrade_strategy.value["max_unavailable_worker"]

                  dynamic "drain_input" {
                    for_each = upgrade_strategy.value.drain_input
                    content {
                      delete_local_data  = drain_input.value["delete_local_data"]
                      force              = drain_input.value["force"]
                      grace_period       = drain_input.value["grace_period"]
                      ignore_daemon_sets = drain_input.value["ignore_daemon_sets"]
                      timeout            = drain_input.value["timeout"]
                    }
                  }

                }
              }

            }
          }

          dynamic "scheduled_cluster_scan" {
            for_each = cluster_config.value.scheduled_cluster_scan
            content {
              enabled = scheduled_cluster_scan.value["enabled"]

              dynamic "scan_config" {
                for_each = scheduled_cluster_scan.value.scan_config
                content {

                  dynamic "cis_scan_config" {
                    for_each = scan_config.value.cis_scan_config
                    content {
                      debug_master               = cis_scan_config.value["debug_master"]
                      debug_worker               = cis_scan_config.value["debug_worker"]
                      override_benchmark_version = cis_scan_config.value["override_benchmark_version"]
                      override_skip              = cis_scan_config.value["override_skip"]
                      profile                    = cis_scan_config.value["profile"]
                    }
                  }

                }
              }

              dynamic "schedule_config" {
                for_each = scheduled_cluster_scan.value.schedule_config
                content {
                  cron_schedule = schedule_config.value["cron_schedule"]
                  retention     = schedule_config.value["retention"]
                }
              }

            }
          }

        }
      }

      dynamic "questions" {
        for_each = template_revisions.value.questions
        content {
          default  = questions.value["default"]
          required = questions.value["required"]
          type     = questions.value["type"]
          variable = questions.value["variable"]
        }
      }

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


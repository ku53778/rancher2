module "rancher2_cluster_template" {
  source = "./rancher2/r/rancher2_cluster_template"

  annotations = {}
  description = null
  labels      = {}
  name        = null

  members = [{
    access_type        = null
    group_principal_id = null
    user_principal_id  = null
  }]

  template_revisions = [{
    annotations = {}
    cluster_config = [{
      cluster_auth_endpoint = [{
        ca_certs = null
        enabled  = null
        fqdn     = null
      }]
      default_cluster_role_for_project_members = null
      default_pod_security_policy_template_id  = null
      desired_agent_image                      = null
      desired_auth_image                       = null
      docker_root_dir                          = null
      enable_cluster_alerting                  = null
      enable_cluster_monitoring                = null
      enable_network_policy                    = null
      rke_config = [{
        addon_job_timeout = null
        addons            = null
        addons_include    = []
        authentication = [{
          sans     = []
          strategy = null
        }]
        authorization = [{
          mode    = null
          options = {}
        }]
        bastion_host = [{
          address        = null
          port           = null
          ssh_agent_auth = null
          ssh_key        = null
          ssh_key_path   = null
          user           = null
        }]
        cloud_provider = [{
          aws_cloud_provider = [{
            global = [{
              disable_security_group_ingress = null
              disable_strict_zone_check      = null
              elb_security_group             = null
              kubernetes_cluster_id          = null
              kubernetes_cluster_tag         = null
              role_arn                       = null
              route_table_id                 = null
              subnet_id                      = null
              vpc                            = null
              zone                           = null
            }]
            service_override = [{
              region         = null
              service        = null
              signing_method = null
              signing_name   = null
              signing_region = null
              url            = null
            }]
          }]
          azure_cloud_provider = [{
            aad_client_cert_password         = null
            aad_client_cert_path             = null
            aad_client_id                    = null
            aad_client_secret                = null
            cloud                            = null
            cloud_provider_backoff           = null
            cloud_provider_backoff_duration  = null
            cloud_provider_backoff_exponent  = null
            cloud_provider_backoff_jitter    = null
            cloud_provider_backoff_retries   = null
            cloud_provider_rate_limit        = null
            cloud_provider_rate_limit_bucket = null
            cloud_provider_rate_limit_qps    = null
            location                         = null
            maximum_load_balancer_rule_count = null
            primary_availability_set_name    = null
            primary_scale_set_name           = null
            resource_group                   = null
            route_table_name                 = null
            security_group_name              = null
            subnet_name                      = null
            subscription_id                  = null
            tenant_id                        = null
            use_instance_metadata            = null
            use_managed_identity_extension   = null
            vm_type                          = null
            vnet_name                        = null
            vnet_resource_group              = null
          }]
          custom_cloud_provider = null
          name                  = null
          openstack_cloud_provider = [{
            block_storage = [{
              bs_version        = null
              ignore_volume_az  = null
              trust_device_path = null
            }]
            global = [{
              auth_url    = null
              ca_file     = null
              domain_id   = null
              domain_name = null
              password    = null
              region      = null
              tenant_id   = null
              tenant_name = null
              trust_id    = null
              username    = null
            }]
            load_balancer = [{
              create_monitor         = null
              floating_network_id    = null
              lb_method              = null
              lb_provider            = null
              lb_version             = null
              manage_security_groups = null
              monitor_delay          = null
              monitor_max_retries    = null
              monitor_timeout        = null
              subnet_id              = null
              use_octavia            = null
            }]
            metadata = [{
              request_timeout = null
              search_order    = null
            }]
            route = [{
              router_id = null
            }]
          }]
          vsphere_cloud_provider = [{
            disk = [{
              scsi_controller_type = null
            }]
            global = [{
              datacenters          = null
              insecure_flag        = null
              password             = null
              port                 = null
              soap_roundtrip_count = null
              user                 = null
            }]
            network = [{
              public_network = null
            }]
            virtual_center = [{
              datacenters          = null
              name                 = null
              password             = null
              port                 = null
              soap_roundtrip_count = null
              user                 = null
            }]
            workspace = [{
              datacenter        = null
              default_datastore = null
              folder            = null
              resourcepool_path = null
              server            = null
            }]
          }]
        }]
        dns = [{
          node_selector        = {}
          provider             = null
          reverse_cidrs        = []
          upstream_nameservers = []
        }]
        ignore_docker_version = null
        ingress = [{
          dns_policy    = null
          extra_args    = {}
          node_selector = {}
          options       = {}
          provider      = null
        }]
        kubernetes_version = null
        monitoring = [{
          options  = {}
          provider = null
        }]
        network = [{
          calico_network_provider = [{
            cloud_provider = null
          }]
          canal_network_provider = [{
            iface = null
          }]
          flannel_network_provider = [{
            iface = null
          }]
          options = {}
          plugin  = null
          weave_network_provider = [{
            password = null
          }]
        }]
        nodes = [{
          address           = null
          docker_socket     = null
          hostname_override = null
          internal_address  = null
          labels            = {}
          node_id           = null
          port              = null
          role              = []
          ssh_agent_auth    = null
          ssh_key           = null
          ssh_key_path      = null
          user              = null
        }]
        prefix_path = null
        private_registries = [{
          is_default = null
          password   = null
          url        = null
          user       = null
        }]
        services = [{
          etcd = [{
            backup_config = [{
              enabled        = null
              interval_hours = null
              retention      = null
              s3_backup_config = [{
                access_key  = null
                bucket_name = null
                custom_ca   = null
                endpoint    = null
                folder      = null
                region      = null
                secret_key  = null
              }]
              safe_timestamp = null
            }]
            ca_cert       = null
            cert          = null
            creation      = null
            external_urls = []
            extra_args    = {}
            extra_binds   = []
            extra_env     = []
            gid           = null
            image         = null
            key           = null
            path          = null
            retention     = null
            snapshot      = null
            uid           = null
          }]
          kube_api = [{
            admission_configuration = {}
            always_pull_images      = null
            audit_log = [{
              configuration = [{
                format     = null
                max_age    = null
                max_backup = null
                max_size   = null
                path       = null
                policy     = null
              }]
              enabled = null
            }]
            event_rate_limit = [{
              configuration = {}
              enabled       = null
            }]
            extra_args          = {}
            extra_binds         = []
            extra_env           = []
            image               = null
            pod_security_policy = null
            secrets_encryption_config = [{
              custom_config = {}
              enabled       = null
            }]
            service_cluster_ip_range = null
            service_node_port_range  = null
          }]
          kube_controller = [{
            cluster_cidr             = null
            extra_args               = {}
            extra_binds              = []
            extra_env                = []
            image                    = null
            service_cluster_ip_range = null
          }]
          kubelet = [{
            cluster_dns_server           = null
            cluster_domain               = null
            extra_args                   = {}
            extra_binds                  = []
            extra_env                    = []
            fail_swap_on                 = null
            generate_serving_certificate = null
            image                        = null
            infra_container_image        = null
          }]
          kubeproxy = [{
            extra_args  = {}
            extra_binds = []
            extra_env   = []
            image       = null
          }]
          scheduler = [{
            extra_args  = {}
            extra_binds = []
            extra_env   = []
            image       = null
          }]
        }]
        ssh_agent_auth = null
        ssh_cert_path  = null
        ssh_key_path   = null
      }]
      windows_prefered_cluster = null
    }]
    cluster_template_id = null
    default             = null
    enabled             = null
    id                  = null
    labels              = {}
    name                = null
    questions = [{
      default  = null
      required = null
      type     = null
      variable = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}

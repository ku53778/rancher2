module "rancher2_pod_security_policy_template" {
  source = "./modules/rancher2/r/rancher2_pod_security_policy_template"

  allow_privilege_escalation         = null
  allowed_capabilities               = []
  allowed_proc_mount_types           = []
  allowed_unsafe_sysctls             = []
  annotations                        = {}
  default_add_capabilities           = []
  default_allow_privilege_escalation = null
  description                        = null
  forbidden_sysctls                  = []
  host_ipc                           = null
  host_network                       = null
  host_pid                           = null
  labels                             = {}
  name                               = null
  privileged                         = null
  read_only_root_filesystem          = null
  required_drop_capabilities         = []
  volumes                            = []

  allowed_csi_driver = [{
    name = null
  }]

  allowed_flex_volume = [{
    driver = null
  }]

  allowed_host_path = [{
    path_prefix = null
    read_only   = null
  }]

  fs_group = [{
    range = [{
      max = null
      min = null
    }]
    rule = null
  }]

  host_port = [{
    max = null
    min = null
  }]

  run_as_group = [{
    range = [{
      max = null
      min = null
    }]
    rule = null
  }]

  run_as_user = [{
    range = [{
      max = null
      min = null
    }]
    rule = null
  }]

  runtime_class = [{
    allowed_runtime_class_names = []
    default_runtime_class_name  = null
  }]

  se_linux = [{
    rule = null
    se_linux_option = [{
      level = null
      role  = null
      type  = null
      user  = null
    }]
  }]

  supplemental_group = [{
    range = [{
      max = null
      min = null
    }]
    rule = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}

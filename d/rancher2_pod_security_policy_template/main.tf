terraform {
  required_providers {
    rancher2 = ">= 1.8.0"
  }
}

data "rancher2_pod_security_policy_template" "this" {
  allow_privilege_escalation         = var.allow_privilege_escalation
  allowed_capabilities               = var.allowed_capabilities
  allowed_proc_mount_types           = var.allowed_proc_mount_types
  allowed_unsafe_sysctls             = var.allowed_unsafe_sysctls
  annotations                        = var.annotations
  default_add_capabilities           = var.default_add_capabilities
  default_allow_privilege_escalation = var.default_allow_privilege_escalation
  description                        = var.description
  forbidden_sysctls                  = var.forbidden_sysctls
  host_ipc                           = var.host_ipc
  host_network                       = var.host_network
  host_pid                           = var.host_pid
  labels                             = var.labels
  name                               = var.name
  privileged                         = var.privileged
  read_only_root_filesystem          = var.read_only_root_filesystem
  required_drop_capabilities         = var.required_drop_capabilities
  volumes                            = var.volumes

  dynamic "allowed_csi_driver" {
    for_each = var.allowed_csi_driver
    content {
      name = allowed_csi_driver.value["name"]
    }
  }

  dynamic "allowed_flex_volume" {
    for_each = var.allowed_flex_volume
    content {
      driver = allowed_flex_volume.value["driver"]
    }
  }

  dynamic "allowed_host_path" {
    for_each = var.allowed_host_path
    content {
      path_prefix = allowed_host_path.value["path_prefix"]
      read_only   = allowed_host_path.value["read_only"]
    }
  }

  dynamic "fs_group" {
    for_each = var.fs_group
    content {
      rule = fs_group.value["rule"]

      dynamic "range" {
        for_each = fs_group.value.range
        content {
          max = range.value["max"]
          min = range.value["min"]
        }
      }

    }
  }

  dynamic "host_port" {
    for_each = var.host_port
    content {
      max = host_port.value["max"]
      min = host_port.value["min"]
    }
  }

  dynamic "run_as_group" {
    for_each = var.run_as_group
    content {
      rule = run_as_group.value["rule"]

      dynamic "range" {
        for_each = run_as_group.value.range
        content {
          max = range.value["max"]
          min = range.value["min"]
        }
      }

    }
  }

  dynamic "run_as_user" {
    for_each = var.run_as_user
    content {
      rule = run_as_user.value["rule"]

      dynamic "range" {
        for_each = run_as_user.value.range
        content {
          max = range.value["max"]
          min = range.value["min"]
        }
      }

    }
  }

  dynamic "runtime_class" {
    for_each = var.runtime_class
    content {
      allowed_runtime_class_names = runtime_class.value["allowed_runtime_class_names"]
      default_runtime_class_name  = runtime_class.value["default_runtime_class_name"]
    }
  }

  dynamic "se_linux" {
    for_each = var.se_linux
    content {
      rule = se_linux.value["rule"]

      dynamic "se_linux_option" {
        for_each = se_linux.value.se_linux_option
        content {
          level = se_linux_option.value["level"]
          role  = se_linux_option.value["role"]
          type  = se_linux_option.value["type"]
          user  = se_linux_option.value["user"]
        }
      }

    }
  }

  dynamic "supplemental_group" {
    for_each = var.supplemental_group
    content {
      rule = supplemental_group.value["rule"]

      dynamic "range" {
        for_each = supplemental_group.value.range
        content {
          max = range.value["max"]
          min = range.value["min"]
        }
      }

    }
  }

}


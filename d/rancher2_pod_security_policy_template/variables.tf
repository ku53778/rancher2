variable "allow_privilege_escalation" {
  description = "(optional) - allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true."
  type        = bool
  default     = null
}

variable "allowed_capabilities" {
  description = "(optional) - allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities."
  type        = list(string)
  default     = null
}

variable "allowed_proc_mount_types" {
  description = "(optional) - AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled."
  type        = list(string)
  default     = null
}

variable "allowed_unsafe_sysctls" {
  description = "(optional) - allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \"*\" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection."
  type        = list(string)
  default     = null
}

variable "annotations" {
  description = "(optional) - Annotations of the Pod Security Policy template"
  type        = map(string)
  default     = null
}

variable "default_add_capabilities" {
  description = "(optional) - defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list."
  type        = list(string)
  default     = null
}

variable "default_allow_privilege_escalation" {
  description = "(optional) - defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process."
  type        = bool
  default     = null
}

variable "description" {
  description = "(optional) - Pod Security Policy template policy description"
  type        = string
  default     = null
}

variable "forbidden_sysctls" {
  description = "(optional) - forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in \"*\" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden."
  type        = list(string)
  default     = null
}

variable "host_ipc" {
  description = "(optional) - hostIPC determines if the policy allows the use of HostIPC in the pod spec."
  type        = bool
  default     = null
}

variable "host_network" {
  description = "(optional) - hostNetwork determines if the policy allows the use of HostNetwork in the pod spec."
  type        = bool
  default     = null
}

variable "host_pid" {
  description = "(optional) - hostPID determines if the policy allows the use of HostPID in the pod spec."
  type        = bool
  default     = null
}

variable "labels" {
  description = "(optional) - Labels of the Pod Security Policy template"
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Pod Security Policy template policy name"
  type        = string
}

variable "privileged" {
  description = "(optional) - privileged determines if a pod can request to be run as privileged."
  type        = bool
  default     = null
}

variable "read_only_root_filesystem" {
  description = "(optional) - readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to."
  type        = bool
  default     = null
}

variable "required_drop_capabilities" {
  description = "(optional) - requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added."
  type        = list(string)
  default     = null
}

variable "volumes" {
  description = "(optional) - volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'"
  type        = list(string)
  default     = null
}

variable "allowed_csi_driver" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name = string
    }
  ))
  default = []
}

variable "allowed_flex_volume" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      driver = string
    }
  ))
  default = []
}

variable "allowed_host_path" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      path_prefix = string
      read_only   = bool
    }
  ))
  default = []
}

variable "fs_group" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      range = list(object(
        {
          max = number
          min = number
        }
      ))
      rule = string
    }
  ))
  default = []
}

variable "host_port" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      max = number
      min = number
    }
  ))
  default = []
}

variable "run_as_group" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      range = list(object(
        {
          max = number
          min = number
        }
      ))
      rule = string
    }
  ))
  default = []
}

variable "run_as_user" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      range = list(object(
        {
          max = number
          min = number
        }
      ))
      rule = string
    }
  ))
  default = []
}

variable "runtime_class" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allowed_runtime_class_names = list(string)
      default_runtime_class_name  = string
    }
  ))
  default = []
}

variable "se_linux" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      rule = string
      se_linux_option = list(object(
        {
          level = string
          role  = string
          type  = string
          user  = string
        }
      ))
    }
  ))
  default = []
}

variable "supplemental_group" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      range = list(object(
        {
          max = number
          min = number
        }
      ))
      rule = string
    }
  ))
  default = []
}


variable "name" {
  description = "(required) - Name of the k8s namespace managed by rancher v2"
  type        = string
}

variable "project_id" {
  description = "(required) - Project ID where k8s namespace belongs"
  type        = string
}


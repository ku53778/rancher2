terraform {
  required_providers {
    rancher2 = ">= 1.8.2"
  }
}

resource "rancher2_role_template" "this" {
  administrative    = var.administrative
  annotations       = var.annotations
  context           = var.context
  default_role      = var.default_role
  description       = var.description
  external          = var.external
  hidden            = var.hidden
  labels            = var.labels
  locked            = var.locked
  name              = var.name
  role_template_ids = var.role_template_ids

  dynamic "rules" {
    for_each = var.rules
    content {
      api_groups        = rules.value["api_groups"]
      non_resource_urls = rules.value["non_resource_urls"]
      resource_names    = rules.value["resource_names"]
      resources         = rules.value["resources"]
      verbs             = rules.value["verbs"]
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


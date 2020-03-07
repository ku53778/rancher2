module "rancher2_role_template" {
  source = "./rancher2/r/rancher2_role_template"

  administrative    = null
  annotations       = {}
  context           = null
  default_role      = null
  description       = null
  external          = null
  hidden            = null
  labels            = {}
  locked            = null
  name              = null
  role_template_ids = []

  rules = [{
    api_groups        = []
    non_resource_urls = []
    resource_names    = []
    resources         = []
    verbs             = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}

module "pubsub" {
  source  = "../../"
  rg_name = "pike"
  name    = "pike"
  tags    = var.tags
}

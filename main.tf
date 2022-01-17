# Configure the New Relic provider
provider "newrelic" {
  api_key       = var.nr_api_key
  account_id    = var.nr_account_id
  region        = var.nr_region
}


module "scriptedMonitors" {
  source = "./modules/scriptedMonitors"
}

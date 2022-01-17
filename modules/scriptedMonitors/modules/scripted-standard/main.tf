variable "name" {}
variable "locations" {}
variable "template" {}
variable "status" {}
variable "url" {}



resource "newrelic_synthetics_monitor" "the_monitor" {
  name      = var.name
  type      = "SCRIPT_API"
  frequency = 900 // 15 mins in Seconds
  status    = var.status
  locations = var.locations
}
# Pull in the script from script.tpl
data "template_file" "template" {
  template = templatefile("${path.module}/${var.template}",{url = var.url})
  
}
# Pass that script into the scripted browser monitor
resource "newrelic_synthetics_monitor_script" "script" {
  monitor_id = newrelic_synthetics_monitor.the_monitor.id
  text       = data.template_file.template.rendered
} 

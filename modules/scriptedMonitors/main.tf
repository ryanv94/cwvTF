
module "monitor-creation" {
source = "./modules/scripted-standard"
for_each = var.monitors
name = "${each.value.name}"
template = "${each.value.template}"
url = "${each.value.url}"
status = "${each.value.status}"
locations = ["${each.value.locations}"]
} 
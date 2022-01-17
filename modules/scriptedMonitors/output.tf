/* 
output "synthetics_script_id" {

  # newrelic_application Terraform reference 
  # Link : https://www.terraform.io/docs/providers/newrelic/d/application.html
  #value = newrelic_synthetics_monitor.arq_web_scripted.id
  value = newrelic_synthetics_monitor.monitor-creation.id
} */

/* output "synthetics_api_id" {

  # newrelic_application Terraform reference 
  # Link : https://www.terraform.io/docs/providers/newrelic/d/application.html
  value = newrelic_synthetics_monitor.apiTest.id
} */
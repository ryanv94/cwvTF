variable "monitors" {
  description = "Map of Monitors To Manage with Terraform."
  type        = map
  default     = {
    url1 = {
      name = "url1",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url2 = {
      name = "url2",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url3 = {
      name = "url3",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url4 = {
      name = "url4",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url5 = {
      name = "url5",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    } 
  }
} 


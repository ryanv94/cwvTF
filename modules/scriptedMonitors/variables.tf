variable "monitors" {
  description = "Map of Monitors To Manage with Terraform."
  type        = map
  default     = {
    url1 = {
      name = "xxl",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url2 = {
      name = "xxl",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url3 = {
      name = "xxl",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url4 = {
      name = "xxl",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    },
    url5 = {
      name = "xxl",
      template = "scriptapi.tpl",
      url = "https://",
      locations = "AWS_EU_WEST_1",
      status = "ENABLED"
    } 
  }
} 


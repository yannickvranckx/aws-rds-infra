provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      created_with              = "terraform"
      created_by                = "yannick.vranckx.ext@luminus.be"
      description               = "Database for Automic/GoAnywhere/Test Automation"
      map-migrated              = "mig39446"
      gitlab_repo               = "/luminusbe/automic/acceptance/aws-infra-acceptance"
      "lum:availability_window" = "24/7"
      "lum:technical_contact"   = "SS-WorkloadAutomation"
      "lum:ticket_number"       = "51216345"
      "lum:domain"              = "Workload Automation"
      "lum:order_number"        = "1"
    }
  }
}
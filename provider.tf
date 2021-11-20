#Configure the Datadog provider
terraform {
  required_providers {
    datadog = {
      source = "datadog/datadog"
    }
  }
  required_version = ">=0.12"
}



variable "region" {
    default = "us-east-1"
}

provider "aws" {
   region = var.region
}


resource "datadog_integration_aws" "sandbox" {
 account_id = "699670969287"
 role_name = "DatadogAWSIntegrationRole"
 host_tags = ["Name:Datadog-Host"]
 excluded_regions = [ "us-west-2", "us-east-2","us-west-1","af-south-1","ap-east-1","ap-south-1","ap-northeast-3","ap-northeast-2","ap-southeast-1","ap-southeast-2","ap-northeast-1","ap-northeast-1","eu-central-1","eu-west-1","eu-west-2","eu-south-1","eu-west-3","eu-north-1","me-south-1","sa-east-1","us-gov-east-1","us-gov-west-1"]
 
}

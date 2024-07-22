provider "aws" {

  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "eu-west-1"

  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3    = "http://s3.localhost.localstack.cloud:4566"
    sqs   = "http://localhost:4566"
    ec2   = "http://localhost:4566"
  }
}

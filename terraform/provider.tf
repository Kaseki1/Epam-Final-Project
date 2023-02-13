terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  access_key              = "AKIA4LFA45AIJWKFFFVD"
  secret_key              = "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"
  shared_credentials_file = "new_user_credentials.csv"
  region                  = "ap-northeast-1"
}
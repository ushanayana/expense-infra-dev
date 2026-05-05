terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.37.0"
    }
  }

  
 backend "s3" {
   bucket = "78s-remote-state"
   key = "expense-dev-frontend"
   region = "us-east-1"
   #dynamodb_table = "daws78s-locking"
   use_lockfile = true
   
 }

  
}

provider "aws" {
  region = "us-east-1"
}
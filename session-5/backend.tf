terraform {
  backend "s3" {
    bucket         = "terraform-session-remote-backend-bucket-anton"
    key            = "session-5/terraform.tfstate" #Prefix
    region         = "us-east-1"
    dynamodb_table = "terraform-june-state-lock-table"
  }
}

# Terraform State Lock 
#Terraform state lock prevents from the accidental Apply or Destroy or State change 
#It will make sure ane apply or destroy at the time .
#Terraform state lock uses DynamoDB table to lock every single executions. 
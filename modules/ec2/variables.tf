variable "ami" {
  type        = string
  description = "THis is my AMI for EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "This is my insatnce Type"
}

variable "env" {
    type = string 
    description = "This is an envirinmant"
}
variable "s3_bucket_name" {
  type        = string
  description = "this is a bucket name"
}

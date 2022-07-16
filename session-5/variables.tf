variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "This is my public key"
  default     = "my-mac-key"

}
variable "env" {
  type        = string
  description = "This is vailable represants environment"
  default     = "dev"
}

variable "ingress_ports" {
  type        = list(string)
  description = "This is  alist of ports for Ingress rules"
  default     = ["22", "80", "443","23","3326"]
}
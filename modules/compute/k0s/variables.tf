variable "ami" {}
variable "instance_type" {}

variable "key_name" {
  description = "SSH key name (provided by keypair module)"
}

variable "subnet_ids" {}
variable "k0s_sg_id" {}

variable "root_volume_size" {
  description = "Root EBS volume size (GiB) for all k0s nodes"
  type        = number
  default     = 30
}

variable "nodes" {
  description = "Static placement plan for all k0s nodes"
  type = map(object({
    subnet_index = number
    private_ip   = string
  }))
}

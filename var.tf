variable "vpc_id" {
  description = "Required: VPC ID to place the SG"
}

variable "whitelist" {
  description = "Optional: Extra whitelist of IP Addresses for any/any ingress access"
  default     = [""]
}

variable "name" {
  description = "Optional: Name for the SG"
  default     = ""
}

variable "description" {
  description = "Optional: Description for the SG"
  default     = "Any/Any ingress for current WAN IP"
}

variable "tags" {
  description = "Optional: Tags for the SG"

  default {
    TFModule = "rms1000watt/easy-sg/aws"
  }
}

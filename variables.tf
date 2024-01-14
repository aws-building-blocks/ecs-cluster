variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "name" {
  type        = string
  description = "(Required) Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "setting" {
  type = object({
    name  = optional(string, "containerInsights")
    value = optional(string, "enabled")
  })
  description = "(Optional) Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster."
}

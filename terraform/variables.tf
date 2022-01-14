variable "google_project_id" {
  type        = string
  description = "google project id"
}

variable "google_region" {
  type        = string
  description = "(optional) describe your variable"
  default     = "asia-southeast1"
}

variable "google_zone" {
  type        = string
  description = "(optional) describe your variable"
  default     = "asia-southeast1-a"
}

variable "google_network_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "google_network_develop_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "google_network_develop_subnet" {
  type        = string
  description = "(optional) describe your variable"
}

variable "google_cluster_name" {
  type        = string
  description = "(optional) describe your variable"
}

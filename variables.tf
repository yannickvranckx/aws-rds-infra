# Variable file
# --------------

# Main vars
# ---------
variable "aws_region" {
  description = "Region to set deployment in"
  type        = string
}
variable "az" {
  description = "Availability Zones"
  default     = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]
}

# Infra Vars
# ------------
variable "db_engine" {
  description = "Database Engine"
  type        = string
}
variable "db_egine_version" {
  description = "Version of the Database Engine"
  type        = string
}
variable "instance_class" {
  description = "Instance Class"
  type        = string
}
variable "db_port" {
  description = "Database Port"
  type        = string
}
variable "db_username" {
  description = "Database_username"
  type        = string
}
variable "storage_type" {
  description = "Storage type"
  type        = string
}
variable "allocated_storage" {
  description = "Allocated storage"
  type        = string
}
variable "max_allocated_storage" {
  description = "Max allocated storage"
  type        = string
}
variable "iops" {
  description = "IOPS"
  type        = string
}
# Name Vars
# ----------
variable "db_parameter_group_desc" {
  description = "Description DB Parameter Group"
  type        = string
}
variable "db_subnet_group_name" {
  description = "Name DB subnet group"
  type        = string
}
variable "world-cup-bucket" {
  type = string
  description = "Name of the bucket, containing world-cup data"
}
variable "location" {
  type = string
  description = "location of the buckets"
}
variable "project" {
  type = string
  description = "Name of the project"
}
variable "storage_class" {
  type = string
  description = "Storage class of the buckets"
}
variable "env" {
  type = string
  description = "Labelname environment"
}
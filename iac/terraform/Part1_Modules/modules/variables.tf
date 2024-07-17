variable "resourceGroupName" {
  type = string
  nullable = false
}

variable "location" {
  type = string
  nullable = false
}

variable "uniqueIdentifier" {
    type = string
    nullable = false
    default = "20240717se"
}

variable "environment" {
    type = string
    nullable = false
    default = "dev"
}

variable storageAccountBase {
    type = string
    nullable = false
    default = "iacstgacct"
}
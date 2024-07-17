variable "resource_group_name" {
    type = string
    nullable = false
}

variable "storageAccountName" {
    type = string
    nullable = false
  
}

variable "uniqueIdentifier" {
    type = string
    nullable = false
    default = "20240717sje"
}

variable storageAccountBase {
    type = string
    nullable = false
}

variable "location" {
    type = string
    nullable = false    
}
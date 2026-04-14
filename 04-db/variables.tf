variable "project_name" {
    
    default = "expense"
}

variable "environment" {

    default = "dev"
}

variable "common_tags" {
    
    default = {
        project = "expense" 
        environment = "dev" 
        terraform = "true" 
        component = "db"
    } 
}

# variable "password" {
#     description = "Database password"
#     type = string
# }

variable "zone_name" {
    default = "daws78s.shop"
}
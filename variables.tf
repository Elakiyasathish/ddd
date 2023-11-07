variable "env" {
    type = string

}
variable "prod-ser" {
    type  = list(string)
    default = ["prod-ec2"]
    }

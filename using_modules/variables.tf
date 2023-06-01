variable "tags" {
    type = map
    default = {
        Name = "timing"
        Env = "DEV"
        terraform = "true"
    }
}
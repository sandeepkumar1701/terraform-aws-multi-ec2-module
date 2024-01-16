variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami" {
  type = string
  default = "ami-0c0b74d29acd0cd97"
}

variable "instance_count" {
  type = number
  default = 1
}
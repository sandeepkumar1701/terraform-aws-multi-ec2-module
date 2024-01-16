# this is a simple terraform module.

## Usage
### importing module
to use this module , import this module using module block in  your root terraform configuration and include a provider block


...
module "child module" {
    source = "xyz"
    ##pass  required arguments
}

provider "aws" {
    region= "us-east-1"
    profile = "default
}


### supplying values
this module expects the below variables to be passsed while  calling the module .
...

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



example 

module "multi-ec2" {
    source = "sandeep1701/multi-ec2/aws"
    version = "1.0.0"
    instance_type = "t2.micro"
    ami = "ami-0c0b74d29acd0cd97"
    count = 2
}



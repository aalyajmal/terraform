variable "ami" {
  type = string
  default = "ami-04505e74c0741db8d"
}
variable "I_type" {
  type = string
  default = "t2.micro"
}

variable "subnet" {
  type = list
  default = ["subnet-0caf465265d29e733", "subnet-0412a9ed5920f91f9"]
}
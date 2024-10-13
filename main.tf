variable "a1_var" {
  default = "@@@@@"
  type    = string
}

variable "a2_var" {
  default = true
  type    = bool
}


resource "random_string" "delta" {
  length           = 15
  special          = var.a2_var
  override_special = var.a1_var
}


output "id" {
  value = random_string.delta.id
}


resource "local_file" "example" {
  filename = "a1"
  content  = var.demo
}

resource "local_file" "example1" {
  filename = "a2"
  content  = var.demo1
}

resource "local_file" "example2" {
  filename = "a3"
  content  = var.demo2
}

resource "local_file" "example3" {
  filename = "a4"
  content  = var.list_demo[2]
}

resource "local_file" "example4" {
  filename = "a5"
  content  = var.map_demo.name
}

resource "local_file" "example5" {
  filename = "a6"
  content  = var.map_demo.name
}

resource "local_file" "example6" {
  filename = "a7"
  content  = var.tuple_demo[2][1]
}

resource "local_file" "example7" {
  filename = "a8"
  content  = var.object_demo.name 
}

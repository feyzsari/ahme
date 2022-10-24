resource "aws_instance" "arya" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "ARYA"
  }
}

resource "aws_instance" "eva" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "EVA"
  }
}

resource "aws_instance" "elleven" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "Elleven"
  }
}

resource "aws_instance" "the_mirror" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "The Mirror"
  }
}

resource "aws_instance" "enola" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    "Name" = "ENOLA"
  }
}

resource "aws_instance" "livisco" {
  ami           = var.ami_usa
  instance_type = var.instance_type
  tags = {
    "Name" = "Livisco"
  }
}


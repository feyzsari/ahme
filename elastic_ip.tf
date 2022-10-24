resource "aws_eip" "eip_manager" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.windows_server.id
  allocation_id = aws_eip.eip_manager.id
}


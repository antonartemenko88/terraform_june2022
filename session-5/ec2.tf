resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  tags = {
    Name = var.env
  }
}


#Referance Named Values :
#1 resource = aws_security_group.main.id 
#2 Input Variable = var.instance_type
#3 Data Source = data.aws_ami.amazon_linux_2.attribute
#4 Local =
#5Child module =
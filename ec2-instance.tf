resource "aws_instance" "dev" {
  count = var.env == "dev" ? 1:0
  ami                    = "ami-05c13eab67c5d8861"
  instance_type          = "t2.micro"
  
  tags = {
    Name = var.prod-ser[count.index]
  }
}

resource "aws_instance" "prod" {
  count = var.env == "prod" ? 3:0
 
  ami                    = "ami-05c13eab67c5d8861"
  instance_type          = "t2.micro"
  tags = {
    Name = "prod-ec2"
  }
}

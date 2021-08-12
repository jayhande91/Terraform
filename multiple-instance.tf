
resource "aws_instance" "MyFirstInstnace" {
  count         = 3
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0900454cf7115f97b", "sg-0afb63f2184ba978a" ]

  tags = {
    Name = "demoinstnce-${count.index}"
  }
}

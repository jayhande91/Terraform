
resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-04db49c0fb2215364"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce"
  }
}
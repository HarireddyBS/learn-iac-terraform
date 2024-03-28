resource "aws_instance" "tomcat-tf" {
  ami  = "ami-013168dc3850ef002"
  instance_type = "t2.micro"
  user_data = file("tomcat-install.sh")
  key_name = "new-aws"

  tags = {
    Name = "tomcat"
    terraform = "true"
  }
}
provider "aws"{
    region="us-east-1"

}

resource "aws_instance" "server" {
  ami           = "ami-0c544bda9765444c2"
  instance_type = "t2.micro"
  subnet_id="subnet-076a0504a53b428a8"
  security_groups=["sg-00eea6b40fc434644"]
  


  tags = {
    Name = "terraform-server"
  }
}

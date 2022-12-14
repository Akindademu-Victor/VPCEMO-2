# EC2INSTANCE BLOCK
resource "aws_instance" "demo-ec2" {
    ami = "ami-0f924dc71d44d23e2"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.demo-vpc-pub-subnet-1.id
    vpc_security_group_ids = [aws_security_group.demo-vpc-sec-grp.id]
    availability_zone = "us-east-2a"
    user_data = file("apache-install.sh")
    key_name = aws_key_pair.key_pair.key_name
    count = 3 # create four EC2 instances
   tags = {
      "Name" = "demo-dev ${count.index}" 
      }
}      
provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUAO8GatruhHoCxdEyw4r3vasqhPGmI7ZIP2aX5OjwwgW6MBqYDXjUfGWpWoGL2sB8w+Oz33LK9H+3iQuFqyrN3tWIRSPsZ37TtYEyn0SedRT16KsaBVuv3+OI4UTuSXqC+vZ+32XwScBGPC+IF5f3WtC0J1DtkHliU/CWYe0dKqoQZGp2lMswb0AFMt330p3lHMFpDijrt2a5DwO0ObMvY9Ppn28nM9IsLUenmePXPiFg4A1fSq0b57kzybqMZKhD4CBKvuNZ4vv3Oqlk6gjldxEwfGWc/DDh2Q4/fdOcGHhKXPuc1P4AhD7KFvSQ2GbUru4bhgutBMpf3iMTlv0z ec2-user@Bastion"
}

resource "aws_instance" "exmaple" {
  key_name      = "bastion"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}

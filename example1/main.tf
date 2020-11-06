# HCL (HashiCorp Configuration Language)

provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHDRQWkuMfl8suYcCxixBhB6Ave4nupAGf8JCcXfRB/Xh02QiWFZ+ChKUHPsk55Qxgpq2f0AbxwcYovdT8wTUbjpZmnGAvJl/7epoNjuscVyCTOnLpc5VRwuia0B/SUBfUMv7UiXbZAq+xzdUP439Gk10LUERPOmj2dXYIdkOTN+kJQEGslVL4tLesQpEptTE5jLhBFy5MgIt3yR6j2f7v0l7xJqoFneiiMDYiBcfGSW6uFneGjSpjl9Y8HWxaj9A2fpLRkKnLuyhrSxWkY+nF4PWM41wYn3e9+XM4WMaczmiwug6KTCzme45n6/rsdzonK9wbsIYAl4a1xCYVDN9d ec2-user@Bastion"
}

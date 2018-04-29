name    = "main"
region  = "ap-northeast-1"
profile = "mmm-test-environment"

az          = "ap-northeast-1a"
vpc_cidr    = "10.0.0.0/16"
subnet_cidr = "10.0.1.0/24"

sg_name        = "22_pxy"
sg_description = "Permit ssh from proxy server."
sg_cidrs       = ["0.0.0.0/0"]

ami                         = "ami-0c11b26d"
ebs_optimized               = "false"
monitoring                  = "false"
key_name                    = "tf-key"
public_key_path             = "~/.ssh/tf-key.pub"
nodes                       = "1"
instance_type               = "t2.micro"
associate_public_ip_address = "true"
source_dest_check           = "true"
volume_type                 = "standard"
volume_size                 = "50"
delete_on_termination       = "false"

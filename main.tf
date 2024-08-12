module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = "10.0.0.0/16"
  name        = "my-vpc"
  subnet_count = 2
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = "ami-0c55b159cbfafe1f0"  # Example AMI for Amazon Linux 2
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_ids[0]
  name          = "my-ec2-instance"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "my-unique-bucket-name"
}

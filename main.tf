module "ec2_instance"{
    source = "terraform-aws-modules/ec2-instance/aws"

    name = "single-instance"

    instance_type = "t2.micro"
    monitoring = false
    vpc_security_group_ids = ["sg-06bf5b75518b59c38"]
    subnet_id = "subnet-0500516ff94de0e2f"

    tags = {
        Terraform = "true"
        Environment = "dev"
    }
}
terraform{
    backend "s3" {
        bucket = "teste-eduardohrmsnt-fc"
        key = "teste"
        region = "sa-east-1"
    }
}
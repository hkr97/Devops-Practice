module "dev-app" {
    source = "/Users/hulash/Downloads/Study/AWS/modules/aws-infra"
    ami_id = "ami-0b6d9d3d33ba97d99"
    instance_type = "t2.micro"
    my_env = "dev"
    instance_count = 1
}

module "stage-app" {
    source = "./modules/aws-infra"
    ami_id = "ami-0b6d9d3d33ba97d99"
    instance_type = "t2.medium"
    my_env = "stage"
    instance_count = 2
}

module "prod-app" {
    source = "./modules/aws-infra"
    ami_id = "ami-0b6d9d3d33ba97d99"
    instance_type = "t2.medium"
    my_env = "prod"
    instance_count = 3
}
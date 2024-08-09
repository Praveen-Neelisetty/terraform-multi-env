resource "aws_instance" "expense" {
    ami = "ami-041e2ea9402c46c32"
    instance_type = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids = ["sg-04dae8a904672e07f"]
    
    tags = {
        Name = terraform.workspace == "dev" ? "dev" : "prod"
        terraform = true
        CreatedBy = "Praveen"
        Environment = terraform.workspace == "dev" ? "dev" : "prod"
        Module = terraform.workspace == "dev" ? "dev" : "prod"
    }
}
locals {
    public_subnet_ids  = element(split(",",data.aws_ssm_parameter.public_subnet_ids.value),0)
    open_vpn_sg_id = data.aws_ssm_parameter.vpn_sg_id.value
}

# locals {
#   public_subnet_id = element(split(",", data.aws_ssm_parameter.public_subnet_ids.value), 0)
# }
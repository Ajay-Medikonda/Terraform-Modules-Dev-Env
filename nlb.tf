module "dev_infra_1_nlb" {
  source          = "../modules/nlb"
  subnets         = module.dev_infra_1.public_subnet_list
  environment     = module.dev_infra_1.environment
  nlbname         = "ajay"
  tgname          = "ajay"
  vpc_id          = module.dev_infra_1.vpc_id
  public_servers  = module.dev_infra_1_ec2.public_servers
  private_servers = module.dev_infra_1_ec2.private_servers
}

module "dev_infra_2_nlb" {
  source          = "../modules/nlb"
  subnets         = module.dev_infra_2.public_subnet_list
  environment     = module.dev_infra_2.environment
  nlbname         = "ajay"
  tgname          = "ajay"
  vpc_id          = module.dev_infra_2.vpc_id
  public_servers  = module.dev_infra_2_ec2.public_servers
  private_servers = module.dev_infra_2_ec2.private_servers
}
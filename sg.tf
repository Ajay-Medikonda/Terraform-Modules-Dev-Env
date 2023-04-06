module "dev_infra_1_sg" {
  source = "../modules/sg"
  vpc_id = module.dev_infra_1.vpc_id
}

module "dev_infra_2_sg" {
  source = "../modules/sg"
  vpc_id = module.dev_infra_2.vpc_id
}
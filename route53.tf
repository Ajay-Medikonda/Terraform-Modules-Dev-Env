module "dev_infra_1_route53" {
  source     = "../modules/route53"
  domainname = "awstelugu.xyz"
  nlb_id     = module.dev_infra_1_nlb.nlb_id
  dns_name   = module.dev_infra_1_nlb.nlb_dns_name
  zone_id    = module.dev_infra_1_nlb.nlb_zone_id
}

module "dev_infra_2_route53" {
  source     = "../modules/route53"
  domainname = "awstelugu.xyz"
  nlb_id     = module.dev_infra_2_nlb.nlb_id
  dns_name   = module.dev_infra_2_nlb.nlb_dns_name
  zone_id    = module.dev_infra_2_nlb.nlb_zone_id
}
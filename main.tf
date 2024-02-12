module "components" {
  source          = "git::https://github.com/Pavansaidevops/tf-module-basic-test.git"
  for_each        = var.vpc
  cidr            = each.value["cidr"]
  subnets         = each.value["subnets"]

}




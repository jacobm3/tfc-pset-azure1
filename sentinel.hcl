module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}
  
module "azure-functions" {
    source = "./azure-functions/azure-functions.sentinel"
}
  
policy "enforce-mandatory-tags" {
  enforcement_level = "hard-mandatory"
}

policy "restrict-vm-size" {
  enforcement_level = "soft-mandatory"
}

module "webapp" {
  source           = "./modules/web_app"
  application_name = "app01"
  environment_name = "dev"
  location         = "westeurope"
}

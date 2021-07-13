remote_state{
  backend = "gcs"
  generate = {
    path = "backend.tf"
    if_exist = "overwrite_terragrunt"
  }
  config {
    bucket = "tfstate-techtalk-demo"
    prefix = "${path_relative_to_include()}"
  }
  disbale_init = tobool(get_env("WITHOUT_CREDENTIALS", "false"))
}

inputs = {
  project = "techtalk-tf"
  env = "dev"
  region = "us"
}
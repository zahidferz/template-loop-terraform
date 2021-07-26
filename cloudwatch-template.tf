locals {
  id = {
    0 : "ds--main-id-adsd566548"
    1 : "bdsadasdad84156"
    2 : "casdsdsdasds987"
  }
}


resource "aws_cloudwatch_dashboard" "this" {

  dashboard_name = "rds-dashboard-example"
  dashboard_body = templatefile(
    "${path.module}/dashboard-template/full-template.tmpl",
    {
      region = var.aws_region
      dbinstancemain = local.id[0]
      dbinstanceidentifier = local.id
    }
  )
}

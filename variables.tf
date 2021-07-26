variable "aws_region" {
  type = string
  default = "us-east-2"
}

variable "rds_count"{
  type = number
  default = 0
  description = "How many RDS servers do you want"
}

variable "db_id" {
  type = string 
  description = "The start of the DB name, will also translate into AWS ARN. Examples could be like MSSQL, RDSDB, PENC, etc"
  default = "lolequisde"
}

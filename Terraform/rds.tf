provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "spike-db" {
    allocated_storage    = 10
    engine               = "postgres"
    engine_version       = "9.6.11"
    instance_class       = "db.t2.micro"
    identifier_prefix    = "spike"
    skip_final_snapshot  = true
    name                 = "spike-db"
    vpc_security_group_ids = ["sg-06f9cf2264075b654"]
    multi_az = "true"
    backup_retention_period = 20
    backup_window = "17:00-17:30"    
}
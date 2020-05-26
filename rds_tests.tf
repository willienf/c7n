provider "aws" {
  profile = "default"
  version = "~> 2.0"
  region  = "us-east-1"
}

# VARIABLES
variable "subnet_ids" {
  type    = "list"
  default = ["subnet-0f41747762f76f48a", "subnet-0fa9855a06170a65e", "subnet-06acec3a24ae1c868"]
}


# GENERAL - Create a Subnet Group to use in all tests
resource "aws_db_subnet_group" "subnet_group" {
  name       = "ccldpub-db-subnet-group"
  subnet_ids = "${var.subnet_ids}"
}

# COMPLAINT - This database create with a cryptografy in rest
resource "aws_db_instance" "rds_with_encryption" {
  identifier            = "ccldpub-rds-with-encryption"
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  storage_type          = "standard"
  allocated_storage     = 20
  username              = "admin"
  password              = "f3hjxaH9fZcRu79h"
  storage_encrypted     = true
  db_subnet_group_name  = "${aws_db_subnet_group.subnet_group.name}"
  skip_final_snapshot   = true
}

# NON COMPLAINT - This database create without a cryptografy in rest
# After GuardRails, this resource will be tagged with 'GuardRails_rds_withou_encryption' tag
resource "aws_db_instance" "rds_without_encryption" {
  identifier            = "ccldpub-rds-without-encryption"
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  storage_type          = "standard"
  allocated_storage     = 20
  username              = "admin"
  password              = "f3hjxaH9fZcRu79h"
  db_subnet_group_name  = "${aws_db_subnet_group.subnet_group.name}"
  skip_final_snapshot   = true
}

# NON COMPLAINT - This database create without a cryptografy in rest
# After GuardRails, this resource will be tagged with 'GuardRails_rds_withou_encryption' tag
resource "aws_db_instance" "rds_public_acess" {
  identifier            = "ccldpub-rds-public-access"
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  storage_type          = "standard"
  allocated_storage     = 20
  username              = "admin"
  password              = "f3hjxaH9fZcRu79h"
  db_subnet_group_name  = "${aws_db_subnet_group.subnet_group.name}"
  skip_final_snapshot   = true
  publicly_accessible      = true
}


# NON COMPLAINT - This database create without a cryptografy in rest
# After GuardRails, this resource will be tagged with 'GuardRails_rds_withou_encryption' tag
resource "aws_db_instance" "rds_user_acess" {
  identifier            = "ccldpub-rds-user-access"
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  storage_type          = "standard"
  allocated_storage     = 20
  username              = "gringo"
  password              = "f3hjxaH9fZcRu79h"
  db_subnet_group_name  = "${aws_db_subnet_group.subnet_group.name}"
  skip_final_snapshot   = true
  publicly_accessible      = true
  enabled_cloudwatch_logs_exports = ["audit","error","general","slowquery"]
}


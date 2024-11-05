import {
  to = aws_db_instance.automic_acceptance
  id = "db-euw3-wa-acc"
}
import {
  to = aws_db_parameter_group.automic_acceptance
  id = "db-euw3-wa-acc-parameters"
}
import {
  to = aws_db_subnet_group.automic_acceptance
  id = "euw3-rds-automic-acc-db-subnet"
}
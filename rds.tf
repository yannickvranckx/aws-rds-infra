resource "aws_db_instance" "rds_instance" {
  allocated_storage            = var.allocated_storage
  max_allocated_storage        = var.max_allocated_storage
  apply_immediately            = true
  engine                       = var.db_engine
  engine_version               = var.db_egine_version
  instance_class               = var.instance_class
  port                         = var.db_port
  storage_type                 = var.storage_type
  storage_encrypted            = true
  iops                         = var.iops
  username                     = var.db_username
  manage_master_user_password  = true
  copy_tags_to_snapshot        = true
  deletion_protection          = true
  monitoring_interval          = "60"
  performance_insights_enabled = "true"
  skip_final_snapshot          = true
  vpc_security_group_ids       = [local.secg_db]
}

resource "aws_db_parameter_group" "rds_parameter_group" {
  name        = "db-euw3-wa-acc-parameters"
  family      = "postgres15"
  description = var.db_parameter_group_desc

  parameter {
    apply_method = "immediate"
    name         = "autovacuum_naptime"
    value        = "60"
  }

  parameter {
    apply_method = "immediate"
    name         = "autovacuum_vacuum_cost_delay"
    value        = "0"
  }

  parameter {
    apply_method = "immediate"
    name         = "autovacuum_vacuum_scale_factor"
    value        = "0.01"
  }

  parameter {
    apply_method = "immediate"
    name         = "idle_in_transaction_session_timeout"
    value        = "600000"
  }

  parameter {
    apply_method = "immediate"
    name         = "log_lock_waits"
    value        = "1"
  }

  parameter {
    apply_method = "immediate"
    name         = "pg_stat_statements.track_utility"
    value        = "1"
  }

  parameter {
    apply_method = "immediate"
    name         = "random_page_cost"
    value        = "1.0"
  }

  parameter {
    apply_method = "immediate"
    name         = "vacuum_cost_limit"
    value        = "10000"
  }
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = [local.subnet_private_a, local.subnet_private_b, local.subnet_private_c]

}

variable "host_provider" {
}

variable "dd_prod_slack_channel" {
}

variable "dd_dev_slack_channel" {
}

variable "dd_devops_pd_group" {
}

variable "dd_autorestart_sns" {
  default = ""
}

variable "dd_devops_low_urgency_pd_group" {
  default = ""
}

variable "dd_memory_alarm_slack_channel" {
  default = ""
}

variable "dd_disk_alarm_slack_channel" {
  default = ""
}

variable "dd_memory_alarm_pd_group" {
  default = ""
}

variable "dd_disk_alarm_pd_group" {
  default = ""
}

variable "dd_load_alarm_pd_group" {
  default = ""
}

variable "dd_group_name" {
}

### No data receive monitors

variable "dd_no_data_receive_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_no_data_receive_monitor_prod_slack" {
  description = "If set to true, alarm with slack integration only will be deployed"
  type        = bool
  default     = false
}

variable "dd_no_data_receive_monitor_prod_cluster" {
  description = "If set to true, cluster alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_no_data_receive_monitor_prod_pd_low" {
  description = "If set to true, the alarm will be routed to PD low queue"
  type        = bool
  default     = false
}

variable "dd_no_data_receive_monitor_autorestart_hetz" {
  description = "If set to true, the server will be automatically restarted"
  type        = bool
  default     = false
}

variable "dd_no_data_receive_monitor_dev" {
  type    = bool
  default = false
}

variable "dd_no_data_receive_cluster_threshold" {
  type = map(number)

  default = {
    "critical" = 25
    "warning"  = 0
  }
}

variable "dd_no_data_receive_timeframe" {
  default = 5
}

variable "dd_no_data_receive_autorestart_timeframe" {
  default = 2
}

### Conntrack table monitors

variable "dd_conntrack_table_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_conntrack_table_monitor_slack" {
  description = "If set to true, alarm with slack integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_conntrack_table_monitor_dev" {
  type    = bool
  default = false
}

variable "dd_conntrack_table_threshold" {
  type = map(number)

  default = {
    "critical" = 90
    "warning"  = 60
  }
}

### Disk usage monitors for /boot partition

variable "dd_disk_usage_boot_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_boot_monitor_slack" {
  description = "If set to true, alarm with slack integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_boot_monitor_dev" {
  type    = bool
  default = false
}

### Disk usage monitors on / partition

variable "dd_disk_usage_monitor_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_prod_non_aws_slack" {
  description = "If set to true, alarm only with slack integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_root_monitor_prod_aws_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_root_monitor_prod_aws_rancher_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_root_monitor_prod_non_aws_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_root_monitor_non_aws_dev" {
  type    = bool
  default = false
}

variable "dd_disk_usage_root_monitor_aws_dev" {
  type    = bool
  default = false
}

variable "dd_disk_usage_root_monitor_aws_rancher_dev" {
  type    = bool
  default = false
}

### Disk usage monitors on /var/lib/docker

variable "dd_disk_usage_docker_monitor_prod" {
  description = "If set to true, alarm without PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_docker_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_docker_monitor_dev" {
  type    = bool
  default = false
}

### Disk usage monitors on /var/log

variable "dd_disk_usage_log_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_log_monitor_rancher_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_log_monitor_prod_slack" {
  description = "If set to true, alarm with slack integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_disk_usage_log_monitor_dev" {
  type    = bool
  default = false
}

variable "dd_disk_usage_log_monitor_rancher_dev" {
  type    = bool
  default = false
}

### Inodes usage monitors

variable "dd_inodes_usage_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_inodes_usage_monitor_prod_slack" {
  description = "If set to true, alarm with slack integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_inodes_usage_monitor_dev" {
  type    = bool
  default = false
}

### Memory usage monitors

variable "dd_memory_monitor_prod_slack" {
  description = "If set to true, alarm only with slack integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_memory_monitor_prod_pd" {
  description = "If set to true, alarm with PD integration will be deployed"
  type        = bool
  default     = false
}

variable "dd_memory_monitor_dev" {
  type    = bool
  default = false
}

variable "dd_load_alarm_slack_channel" {
  default = ""
}

variable "dd_loadavg_monitor_pd" {
  type    = bool
  default = false
}

variable "dd_loadavg_monitor_prod" {
  type    = bool
  default = false
}

variable "dd_loadavg_monitor_dev" {
  type    = bool
  default = false
}

### CPU credit balance monitors

variable "dd_cpu_credit_usage_monitor_prod" {
  type    = bool
  default = false
}

variable "dd_cpu_credit_balance_usage_monitor_thresholds" {
  type    = map(number)
  default = {
    "critical" = 50
    "warning"  = 70
  }
}

### CPU temperature monitors

variable "dd_cpu_temperature_monitor_prod" {
  type    = bool
  default = false
}

variable "dd_cpu_temperature_monitor_thresholds" {
  type    = map(number)
  default = {
    "critical" = 80
    "warning"  = 70
  }
}

variable "dd_memory_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.1
    "warning"  = 0.15
  }
}

variable "dd_memory_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.1
    "warning"  = 0.15
  }
}

variable "dd_memory_monitor_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.1
    "warning"  = 0.15
  }
}

variable "dd_loadavg_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 4
    "warning"  = 3.8
  }
}

variable "dd_loadavg_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 4
    "warning"  = 3.8
  }
}

variable "dd_loadavg_monitor_thresholds" {
  type = map(number)

  default = {
    "critical" = 4
    "warning"  = 3.8
  }
}

variable "dd_inodes_usage_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.8
  }
}

variable "dd_inodes_usage_monitor_slack_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.8
  }
}

variable "dd_inodes_usage_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.8
  }
}

variable "dd_disk_usage_docker_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_docker_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_docker_monitor_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_log_monitor_rancher_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_log_monitor_rancher_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_log_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_log_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_log_monitor_slack_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_aws_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_aws_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_aws_rancher_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_root_monitor_aws_rancher_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_boot_monitor_slack_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_boot_monitor_dev_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_disk_usage_boot_monitor_pd_thresholds" {
  type = map(number)

  default = {
    "critical" = 0.9
    "warning"  = 0.85
  }
}

variable "dd_no_data_receive_monitor_pd_extra_tags" {
  default = []
}

variable "dd_no_data_receive_monitor_pd_low_extra_tags" {
  default = []
}

variable "dd_no_data_receive_monitor_slack_extra_tags" {
  default = []
}

variable "dd_no_data_receive_monitor_cluster_extra_tags" {
  default = []
}

variable "dd_no_data_receive_monitor_dev_extra_tags" {
  default = []
}

variable "dd_no_data_receive_monitor_autorestart_hetz_extra_tags" {
  default = []
}

variable "dd_conntrack_table_monitor_slack_extra_tags" {
  default = []
}

variable "dd_conntrack_table_monitor_pd_extra_tags" {
  default = []
}

variable "dd_conntrack_table_monitor_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_boot_monitor_slack_extra_tags" {
  default = []
}

variable "dd_disk_usage_boot_monitor_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_boot_monitor_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_aws_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_aws_rancher_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_aws_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_root_monitor_aws_rancher_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_log_monitor_slack_extra_tags" {
  default = []
}

variable "dd_disk_usage_log_monitor_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_log_monitor_rancher_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_log_monitor_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_log_monitor_rancher_dev_extra_tags" {
  default = []
}

variable "dd_disk_usage_docker_monitor_extra_tags" {
  default = []
}

variable "dd_disk_usage_docker_monitor_pd_extra_tags" {
  default = []
}

variable "dd_disk_usage_docker_monitor_dev_extra_tags" {
  default = []
}

variable "dd_inodes_usage_monitor_slack_extra_tags" {
  default = []
}

variable "dd_inodes_usage_monitor_pd_extra_tags" {
  default = []
}

variable "dd_inodes_usage_monitor_dev_extra_tags" {
  default = []
}

variable "dd_loadavg_monitor_pd_extra_tags" {
  default = []
}

variable "dd_loadavg_monitor_extra_tags" {
  default = []
}

variable "dd_loadavg_monitor_dev_extra_tags" {
  default = []
}

variable "dd_memory_monitor_extra_tags" {
  default = []
}

variable "dd_memory_monitor_dev_extra_tags" {
  default = []
}

variable "dd_memory_monitor_pd_extra_tags" {
  default = []
}

variable "dd_cpu_credit_balance_monitor_extra_tags" {
  default = []
}

variable "dd_cpu_temperature_monitor_extra_tags" {
  default = []
}

variable "dd_no_data_receive_monitor_pd_name" {
  default = ""
}

variable "dd_no_data_receive_monitor_pd_low_name" {
  default = ""
}

variable "dd_no_data_receive_monitor_slack_name" {
  default = ""
}

variable "dd_no_data_receive_monitor_cluster_name" {
  default = ""
}

variable "dd_no_data_receive_monitor_dev_name" {
  default = ""
}

variable "dd_no_data_receive_monitor_autorestart_hetz_name" {
  default = ""
}

variable "dd_conntrack_table_monitor_slack_name" {
  default = ""
}

variable "dd_conntrack_table_monitor_pd_name" {
  default = ""
}

variable "dd_conntrack_table_monitor_dev_name" {
  default = ""
}

variable "dd_disk_usage_boot_monitor_slack_name" {
  default = ""
}

variable "dd_disk_usage_boot_monitor_pd_name" {
  default = ""
}

variable "dd_disk_usage_boot_monitor_dev_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_pd_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_dev_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_aws_pd_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_aws_rancher_pd_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_aws_dev_name" {
  default = ""
}

variable "dd_disk_usage_root_monitor_aws_rancher_dev_name" {
  default = ""
}

variable "dd_disk_usage_log_monitor_slack_name" {
  default = ""
}

variable "dd_disk_usage_log_monitor_pd_name" {
  default = ""
}

variable "dd_disk_usage_log_monitor_rancher_pd_name" {
  default = ""
}

variable "dd_disk_usage_log_monitor_dev_name" {
  default = ""
}

variable "dd_disk_usage_log_monitor_rancher_dev_name" {
  default = ""
}

variable "dd_disk_usage_docker_monitor_name" {
  default = ""
}

variable "dd_disk_usage_docker_monitor_pd_name" {
  default = ""
}

variable "dd_disk_usage_docker_monitor_dev_name" {
  default = ""
}

variable "dd_inodes_usage_monitor_slack_name" {
  default = ""
}

variable "dd_inodes_usage_monitor_pd_name" {
  default = ""
}

variable "dd_inodes_usage_monitor_dev_name" {
  default = ""
}

variable "dd_loadavg_monitor_pd_name" {
  default = ""
}

variable "dd_loadavg_monitor_name" {
  default = ""
}

variable "dd_loadavg_monitor_dev_name" {
  default = ""
}

variable "dd_memory_monitor_name" {
  default = ""
}

variable "dd_memory_monitor_dev_name" {
  default = ""
}

variable "dd_memory_monitor_pd_name" {
  default = ""
}

variable "dd_cpu_credit_balance_monitor_name" {
  default = ""
}

variable "dd_cpu_temperature_monitor_name" {
  default = ""
}

variable "dd_scope_group_selector" {
  default = "devops_group"
}

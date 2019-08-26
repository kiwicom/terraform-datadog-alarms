data "template_file" "dd_message_pd" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert}}\n{{#is_alert_recovery}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_prod_slack_channel
    dd_devops_pd_group    = var.dd_devops_pd_group
  }
}

data "template_file" "dd_message_pd_memory" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert}}\n{{#is_alert_recovery}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_memory_alarm_slack_channel != "" ? var.dd_memory_alarm_slack_channel : var.dd_prod_slack_channel
    dd_devops_pd_group    = var.dd_memory_alarm_pd_group != "" ? var.dd_memory_alarm_pd_group : var.dd_devops_pd_group
  }
}

data "template_file" "dd_message_pd_disk" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert}}\n{{#is_alert_recovery}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_disk_alarm_slack_channel != "" ? var.dd_disk_alarm_slack_channel : var.dd_prod_slack_channel
    dd_devops_pd_group    = var.dd_disk_alarm_pd_group != "" ? var.dd_disk_alarm_pd_group : var.dd_devops_pd_group
  }
}

data "template_file" "dd_message_pd_load" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert}}\n{{#is_alert_recovery}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_load_alarm_slack_channel != "" ? var.dd_load_alarm_slack_channel : var.dd_prod_slack_channel
    dd_devops_pd_group    = var.dd_load_alarm_pd_group != "" ? var.dd_load_alarm_pd_group : var.dd_devops_pd_group
  }
}

data "template_file" "dd_message_pd_low" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert}}{{#is_alert_recovery}}$${dd_prod_slack_channel} $${dd_devops_pd_group}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_prod_slack_channel
    dd_devops_pd_group    = var.dd_devops_low_urgency_pd_group
  }
}

data "template_file" "dd_message_slack_prod" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel}{{/is_alert}}{{#is_alert_recovery}}$${dd_prod_slack_channel}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_prod_slack_channel
  }
}

data "template_file" "dd_message_slack_prod_memory" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel}{{/is_alert}}{{#is_alert_recovery}}$${dd_prod_slack_channel}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_memory_alarm_slack_channel != "" ? var.dd_memory_alarm_slack_channel : var.dd_prod_slack_channel
  }
}

data "template_file" "dd_message_slack_prod_disk" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_prod_slack_channel}{{/is_alert}}{{#is_alert_recovery}}$${dd_prod_slack_channel}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider              = var.host_provider
    dd_prod_slack_channel = var.dd_disk_alarm_slack_channel != "" ? var.dd_disk_alarm_slack_channel : var.dd_prod_slack_channel
  }
}

data "template_file" "dd_message_slack_dev" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_dev_slack_channel}{{/is_alert}}{{#is_alert_recovery}}$${dd_dev_slack_channel}{{/is_alert_recovery}}\n[Dashboard - {{host.name}}](https://app.datadoghq.com/dash/integration/system_overview?tpl_var_scope=host:{{host.name}})"

  vars = {
    provider             = var.host_provider
    dd_dev_slack_channel = var.dd_dev_slack_channel
  }
}

data "template_file" "dd_message_sns" {
  template = "{{host.name}} - {{host.ip}} - $${provider}\n{{#is_alert}}$${dd_autorestart_sns}{{/is_alert}}"

  vars = {
    provider             = var.host_provider
    dd_autorestart_sns = var.dd_autorestart_sns
  }
}

resource "datadog_monitor" "dd_no_data_receive_monitor_pd" {
  message           = data.template_file.dd_message_pd.rendered
  name              = var.dd_no_data_receive_monitor_pd_name == "" ? "No data received for ${var.dd_group_name} group" : var.dd_no_data_receive_monitor_pd_name
  query             = "\"datadog.agent.up\".over(\"${var.dd_scope_group_selector}:${var.dd_group_name}\").by(\"host\").last(2).count_by_status()"
  type              = "service check"
  notify_no_data    = true
  no_data_timeframe = var.dd_no_data_receive_timeframe
  tags              = concat(list("service:devops"), var.dd_no_data_receive_monitor_pd_extra_tags)

  thresholds = {
    critical = 1
    warning  = 1
    ok       = 1
  }

  require_full_window = false
  include_tags        = false
  count               = var.dd_no_data_receive_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_no_data_receive_monitor_pd_low" {
  message           = data.template_file.dd_message_pd_low.rendered
  name              = var.dd_no_data_receive_monitor_pd_low_name == "" ? "No data received for ${var.dd_group_name} group" : var.dd_no_data_receive_monitor_pd_low_name
  query             = "\"datadog.agent.up\".over(\"${var.dd_scope_group_selector}:${var.dd_group_name}\").by(\"host\").last(2).count_by_status()"
  type              = "service check"
  notify_no_data    = true
  no_data_timeframe = var.dd_no_data_receive_timeframe
  tags              = concat(list("service:devops"), var.dd_no_data_receive_monitor_pd_low_extra_tags)

  thresholds = {
    critical = 1
    warning  = 1
    ok       = 1
  }

  require_full_window = false
  include_tags        = false
  count               = var.dd_no_data_receive_monitor_prod_pd_low ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_no_data_receive_monitor_slack" {
  message           = data.template_file.dd_message_slack_prod.rendered
  name              = var.dd_no_data_receive_monitor_slack_name == "" ? "No data received for ${var.dd_group_name} group" : var.dd_no_data_receive_monitor_slack_name
  query             = "\"datadog.agent.up\".over(\"${var.dd_scope_group_selector}:${var.dd_group_name}\").by(\"host\").last(2).count_by_status()"
  type              = "service check"
  notify_no_data    = true
  no_data_timeframe = var.dd_no_data_receive_timeframe
  tags              = concat(list("service:devops"), var.dd_no_data_receive_monitor_slack_extra_tags)

  thresholds = {
    critical = 1
    warning  = 1
    ok       = 1
  }

  require_full_window = false
  include_tags        = false
  count               = var.dd_no_data_receive_monitor_prod_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_no_data_receive_monitor_cluster" {
  message           = data.template_file.dd_message_pd.rendered
  name              = var.dd_no_data_receive_monitor_cluster_name == "" ? "No data received over ${var.dd_group_name} cluster" : var.dd_no_data_receive_monitor_cluster_name
  query             = "\"datadog.agent.up\".over(\"${var.dd_scope_group_selector}:${var.dd_group_name}\").by(\"*\").last(2).pct_by_status()"
  type              = "service check"
  notify_no_data    = true
  no_data_timeframe = var.dd_no_data_receive_timeframe
  tags              = concat(list("service:devops"), var.dd_no_data_receive_monitor_cluster_extra_tags)

  thresholds = {
    critical = var.dd_no_data_receive_cluster_threshold["critical"]
    warning  = var.dd_no_data_receive_cluster_threshold["warning"]
  }

  require_full_window = false
  include_tags        = false
  count               = var.dd_no_data_receive_monitor_prod_cluster ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_no_data_receive_monitor_dev" {
  message           = data.template_file.dd_message_slack_dev.rendered
  name              = var.dd_no_data_receive_monitor_dev_name == "" ? "No data received for ${var.dd_group_name} group" : var.dd_no_data_receive_monitor_dev_name
  query             = "\"datadog.agent.up\".over(\"${var.dd_scope_group_selector}:${var.dd_group_name}\").by(\"host\").last(2).count_by_status()"
  type              = "service check"
  notify_no_data    = true
  no_data_timeframe = var.dd_no_data_receive_timeframe
  tags              = concat(list("service:devops"), var.dd_no_data_receive_monitor_dev_extra_tags)

  thresholds = {
    critical = 1
    warning  = 1
    ok       = 1
  }

  require_full_window = false
  include_tags        = false
  count               = var.dd_no_data_receive_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_no_data_receive_monitor_autorestart_hetz" {
  message           = data.template_file.dd_message_sns.rendered
  name              = var.dd_no_data_receive_monitor_autorestart_hetz_name == "" ? "No data received for ${var.dd_group_name} group - SNS" : var.dd_no_data_receive_monitor_autorestart_hetz_name
  query             = "\"datadog.agent.up\".over(\"${var.dd_scope_group_selector}:${var.dd_group_name}\").by(\"host\").last(2).count_by_status()"
  type              = "service check"
  notify_no_data    = true
  no_data_timeframe = var.dd_no_data_receive_autorestart_timeframe
  tags              = concat(list("service:devops","type:autorestart_sns"), var.dd_no_data_receive_monitor_autorestart_hetz_extra_tags)

  thresholds = {
    critical = 1
    warning  = 1
    ok       = 1
  }

  require_full_window = false
  include_tags        = false
  count               = var.dd_no_data_receive_monitor_autorestart_hetz ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_conntrack_table_monitor_slack" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_conntrack_table_monitor_slack_name == "" ? "Conntrack table is almost full for ${var.dd_group_name} group" : var.dd_conntrack_table_monitor_slack_name
  query          = "avg(last_5m):avg:system.net.nf.conntrack_count{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} * 100 / avg:system.net.nf.conntrack_max{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} > ${var.dd_conntrack_table_threshold["critical"]}"
  type           = "query alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "iptables"), var.dd_conntrack_table_monitor_slack_extra_tags)

  thresholds = {
    critical = var.dd_conntrack_table_threshold["critical"]
    warning  = var.dd_conntrack_table_threshold["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_conntrack_table_monitor_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_conntrack_table_monitor_pd" {
  message        = data.template_file.dd_message_pd.rendered
  name           = var.dd_conntrack_table_monitor_pd_name == "" ? "Conntrack table is almost full for ${var.dd_group_name} group" : var.dd_conntrack_table_monitor_pd_name
  query          = "avg(last_5m):avg:system.net.nf.conntrack_count{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} * 100 / avg:system.net.nf.conntrack_max{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} > ${var.dd_conntrack_table_threshold["critical"]}"
  type           = "query alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "iptables"), var.dd_conntrack_table_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_conntrack_table_threshold["critical"]
    warning  = var.dd_conntrack_table_threshold["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_conntrack_table_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_conntrack_table_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_conntrack_table_monitor_dev_name == "" ? "Conntrack table is almost full for ${var.dd_group_name} group" : var.dd_conntrack_table_monitor_dev_name
  query          = "avg(last_5m):avg:system.net.nf.conntrack_count{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} * 100 / avg:system.net.nf.conntrack_max{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} > 90"
  type           = "query alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "iptables"), var.dd_conntrack_table_monitor_dev_extra_tags)

  thresholds = {
    critical = 90
    warning  = 80
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_conntrack_table_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_boot_monitor_slack" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_disk_usage_boot_monitor_slack_name == "" ? "Disk usage on /boot is high for ${var.dd_group_name} group" : var.dd_disk_usage_boot_monitor_slack_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:tmpfs,!device:udev,!device:/dev/md2} by {host} >= ${var.dd_disk_usage_boot_monitor_slack_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_boot_monitor_slack_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_boot_monitor_slack_thresholds["critical"]
    warning  = var.dd_disk_usage_boot_monitor_slack_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_boot_monitor_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_boot_monitor_pd" {
  message        = data.template_file.dd_message_pd_low.rendered
  name           = var.dd_disk_usage_boot_monitor_pd_name == "" ? "Disk usage on /boot is high for ${var.dd_group_name} group" : var.dd_disk_usage_boot_monitor_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:tmpfs,!device:udev,!device:/dev/md2} by {host} >= ${var.dd_disk_usage_boot_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_boot_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_boot_monitor_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_boot_monitor_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_boot_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_boot_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_boot_monitor_dev_name == "" ? "Disk usage on /boot is high for ${var.dd_group_name} group" : var.dd_disk_usage_boot_monitor_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:tmpfs,!device:udev,!device:/dev/md2} by {host} >= ${var.dd_disk_usage_boot_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_boot_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_boot_monitor_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_boot_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_boot_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_disk_usage_root_monitor_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:/dev/md1,!device:tmpfs,!device:udev} by {host} >= ${var.dd_disk_usage_root_monitor_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_prod_non_aws_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_disk_usage_root_monitor_pd_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:/dev/md1,!device:tmpfs,!device:udev} by {host} >= ${var.dd_disk_usage_root_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_pd_thresholds["warning"]
  }

  threshold_windows = {}

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_prod_non_aws_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_root_monitor_dev_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:/dev/md1,!device:tmpfs,!device:udev} by {host} >= ${var.dd_disk_usage_root_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_non_aws_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor_aws_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_disk_usage_root_monitor_aws_pd_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_aws_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb} by {host} >= ${var.dd_disk_usage_root_monitor_aws_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_aws_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_aws_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_aws_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_prod_aws_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor_aws_rancher_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_disk_usage_root_monitor_aws_rancher_pd_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_aws_rancher_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb,!device:/dev/xvdf} by {host} >= ${var.dd_disk_usage_root_monitor_aws_rancher_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_aws_rancher_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_aws_rancher_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_aws_rancher_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_prod_aws_rancher_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor_aws_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_root_monitor_aws_dev_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_aws_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb} by {host} >= ${var.dd_disk_usage_root_monitor_aws_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_aws_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_aws_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_aws_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_aws_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_root_monitor_aws_rancher_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_root_monitor_aws_rancher_dev_name == "" ? "Disk usage on / is high for ${var.dd_group_name} group" : var.dd_disk_usage_root_monitor_aws_rancher_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb,!device:/dev/xvdf} by {host} >= ${var.dd_disk_usage_root_monitor_aws_rancher_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_root_monitor_aws_rancher_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_root_monitor_aws_rancher_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_root_monitor_aws_rancher_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_root_monitor_aws_rancher_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_log_monitor_slack" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_disk_usage_log_monitor_slack_name == "" ? "Disk usage on /var/log is high for ${var.dd_group_name} group" : var.dd_disk_usage_log_monitor_slack_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvda1} by {host} >= ${var.dd_disk_usage_log_monitor_slack_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_log_monitor_slack_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_log_monitor_slack_thresholds["critical"]
    warning  = var.dd_disk_usage_log_monitor_slack_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_log_monitor_prod_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_log_monitor_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_disk_usage_log_monitor_pd_name == "" ? "Disk usage on /var/log is high for ${var.dd_group_name} group" : var.dd_disk_usage_log_monitor_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvda1} by {host} >= ${var.dd_disk_usage_log_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_log_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_log_monitor_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_log_monitor_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_log_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_log_monitor_rancher_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_disk_usage_log_monitor_rancher_pd_name == "" ? "Disk usage on /var/log is high for ${var.dd_group_name} group" : var.dd_disk_usage_log_monitor_rancher_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvda1,!device:/dev/xvdf} by {host} >= ${var.dd_disk_usage_log_monitor_rancher_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_log_monitor_rancher_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_log_monitor_rancher_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_log_monitor_rancher_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_log_monitor_rancher_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_log_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_log_monitor_dev_name == "" ? "Disk usage on /var/log is high for ${var.dd_group_name} group" : var.dd_disk_usage_log_monitor_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvda1} by {host} >= ${var.dd_disk_usage_log_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_log_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_log_monitor_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_log_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_log_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_log_monitor_rancher_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_log_monitor_rancher_dev_name == "" ? "Disk usage on /var/log is high for ${var.dd_group_name} group" : var.dd_disk_usage_log_monitor_rancher_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvda1,!device:/dev/xvdf} by {host} >= ${var.dd_disk_usage_log_monitor_rancher_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_log_monitor_rancher_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_log_monitor_rancher_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_log_monitor_rancher_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_log_monitor_rancher_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_docker_monitor" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_disk_usage_docker_monitor_name == "" ? "Disk usage on /var/lib/docker is high for ${var.dd_group_name} group" : var.dd_disk_usage_docker_monitor_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb,!device:/dev/xvda1} by {host} >= ${var.dd_disk_usage_docker_monitor_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_docker_monitor_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_docker_monitor_thresholds["critical"]
    warning  = var.dd_disk_usage_docker_monitor_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_docker_monitor_prod ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_docker_monitor_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_disk_usage_docker_monitor_pd_name == "" ? "Disk usage on /var/lib/docker is high for ${var.dd_group_name} group" : var.dd_disk_usage_docker_monitor_pd_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb,!device:/dev/xvda1} by {host} >= ${var.dd_disk_usage_docker_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_docker_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_docker_monitor_pd_thresholds["critical"]
    warning  = var.dd_disk_usage_docker_monitor_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_docker_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_disk_usage_docker_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_disk_usage_docker_monitor_dev_name == "" ? "Disk usage on /var/lib/docker is high for ${var.dd_group_name} group" : var.dd_disk_usage_docker_monitor_dev_name
  query          = "avg(last_15m):avg:system.disk.in_use{${var.dd_scope_group_selector}:${var.dd_group_name},!device:udev,!device:tmpfs,!device:/dev/xvdb,!device:/dev/xvda1} by {host} >= ${var.dd_disk_usage_docker_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_disk_usage_docker_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_disk_usage_docker_monitor_dev_thresholds["critical"]
    warning  = var.dd_disk_usage_docker_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_disk_usage_docker_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_inodes_usage_monitor_slack" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_inodes_usage_monitor_slack_name == "" ? "Inodes usage is high for ${var.dd_group_name} group" : var.dd_inodes_usage_monitor_slack_name
  query          = "avg(last_15m):avg:system.fs.inodes.in_use{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} >= ${var.dd_inodes_usage_monitor_slack_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_inodes_usage_monitor_slack_extra_tags)

  thresholds = {
    critical = var.dd_inodes_usage_monitor_slack_thresholds["critical"]
    warning  = var.dd_inodes_usage_monitor_slack_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_inodes_usage_monitor_prod_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_inodes_usage_monitor_pd" {
  message        = data.template_file.dd_message_pd_disk.rendered
  name           = var.dd_inodes_usage_monitor_pd_name == "" ? "Inodes usage is high for ${var.dd_group_name} group" : var.dd_inodes_usage_monitor_pd_name
  query          = "avg(last_15m):avg:system.fs.inodes.in_use{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} >= ${var.dd_inodes_usage_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_inodes_usage_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_inodes_usage_monitor_pd_thresholds["critical"]
    warning  = var.dd_inodes_usage_monitor_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_inodes_usage_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_inodes_usage_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_inodes_usage_monitor_dev_name == "" ? "Inodes usage is high for ${var.dd_group_name} group" : var.dd_inodes_usage_monitor_dev_name
  query          = "avg(last_15m):avg:system.fs.inodes.in_use{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} >= ${var.dd_inodes_usage_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "disk"), var.dd_inodes_usage_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_inodes_usage_monitor_dev_thresholds["critical"]
    warning  = var.dd_inodes_usage_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_inodes_usage_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_loadavg_monitor_pd" {
  message        = data.template_file.dd_message_pd_load.rendered
  name           = var.dd_loadavg_monitor_pd_name == "" ? "LoadAvg5 is high for ${var.dd_group_name} group" : var.dd_loadavg_monitor_pd_name
  query          = "avg(last_1h):avg:system.load.norm.5{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} >= ${var.dd_loadavg_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "cpu"), var.dd_loadavg_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_loadavg_monitor_pd_thresholds["critical"]
    warning  = var.dd_loadavg_monitor_pd_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_loadavg_monitor_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_loadavg_monitor" {
  message        = data.template_file.dd_message_slack_prod.rendered
  name           = var.dd_loadavg_monitor_name == "" ? "LoadAvg5 is high for ${var.dd_group_name} group" : var.dd_loadavg_monitor_name
  query          = "avg(last_1h):avg:system.load.norm.5{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} >= ${var.dd_loadavg_monitor_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "cpu"), var.dd_loadavg_monitor_extra_tags)

  thresholds = {
    critical = var.dd_loadavg_monitor_thresholds["critical"]
    warning  = var.dd_loadavg_monitor_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_loadavg_monitor_prod ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_loadavg_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_loadavg_monitor_dev_name == "" ? "LoadAvg5 is high for ${var.dd_group_name} group" : var.dd_loadavg_monitor_dev_name
  query          = "avg(last_1h):avg:system.load.norm.5{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} >= ${var.dd_loadavg_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "cpu"), var.dd_loadavg_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_loadavg_monitor_dev_thresholds["critical"]
    warning  = var.dd_loadavg_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_loadavg_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_memory_monitor" {
  message        = data.template_file.dd_message_slack_prod_memory.rendered
  name           = var.dd_memory_monitor_name == "" ? "Memory usage is high for ${var.dd_group_name} group" : var.dd_memory_monitor_name
  query          = "avg(last_10m):avg:system.mem.pct_usable{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} <= ${var.dd_memory_monitor_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "memory"), var.dd_memory_monitor_extra_tags)

  thresholds = {
    critical = var.dd_memory_monitor_thresholds["critical"]
    warning  = var.dd_memory_monitor_thresholds["warning"]
  }

  threshold_windows = {}

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_memory_monitor_prod_slack ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_memory_monitor_dev" {
  message        = data.template_file.dd_message_slack_dev.rendered
  name           = var.dd_memory_monitor_dev_name == "" ? "Memory usage is high for ${var.dd_group_name} group" : var.dd_memory_monitor_dev_name
  query          = "avg(last_10m):avg:system.mem.pct_usable{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} <= ${var.dd_memory_monitor_dev_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "memory"), var.dd_memory_monitor_dev_extra_tags)

  thresholds = {
    critical = var.dd_memory_monitor_dev_thresholds["critical"]
    warning  = var.dd_memory_monitor_dev_thresholds["warning"]
  }

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_memory_monitor_dev ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_memory_monitor_pd" {
  message        = data.template_file.dd_message_pd_memory.rendered
  name           = var.dd_memory_monitor_pd_name == "" ? "Memory usage is high for ${var.dd_group_name} group" : var.dd_memory_monitor_pd_name
  query          = "avg(last_10m):avg:system.mem.pct_usable{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} <= ${var.dd_memory_monitor_pd_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "memory"), var.dd_memory_monitor_pd_extra_tags)

  thresholds = {
    critical = var.dd_memory_monitor_pd_thresholds["critical"]
    warning  = var.dd_memory_monitor_pd_thresholds["warning"]
  }

  threshold_windows = {}

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_memory_monitor_prod_pd ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_cpu_credit_balance_monitor" {
  name           = var.dd_cpu_credit_balance_monitor_name == "" ? "CPU credit balance is low for ${var.dd_group_name} group" : var.dd_cpu_credit_balance_monitor_name
  message        = data.template_file.dd_message_slack_prod.rendered
  query          = "avg(last_1h):avg:aws.ec2.cpucredit_balance{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} < ${var.dd_cpu_credit_balance_usage_monitor_thresholds["critical"]}"
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "aws", "cpu", "credits"), var.dd_cpu_credit_balance_monitor_extra_tags)

  thresholds = {
    critical = var.dd_cpu_credit_balance_usage_monitor_thresholds["critical"]
    warning  = var.dd_cpu_credit_balance_usage_monitor_thresholds["warning"]
  }

  require_full_window = true
  include_tags        = false
  new_host_delay      = 300
  evaluation_delay    = 900
  count               = var.dd_cpu_credit_usage_monitor_prod ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

resource "datadog_monitor" "dd_cpu_temperature_monitor" {
  name           = var.dd_cpu_temperature_monitor_name == "" ? "CPU temperature is high on ${var.dd_group_name} group" : var.dd_cpu_temperature_monitor_name
  message        = "${data.template_file.dd_message_slack_prod.rendered} {{#is_alert}}@webhook-hetz_fan_replacement{{/is_alert}}"
  query          = "avg(last_1h):avg:sensors.temperatures.core_1.current{${var.dd_scope_group_selector}:${var.dd_group_name}} by {host} > ${var.dd_cpu_temperature_monitor_thresholds["critical"]} "
  type           = "metric alert"
  notify_no_data = false
  tags           = concat(list("service:devops", "hetz", "cpu", "temperature", "core_1"), var.dd_cpu_temperature_monitor_extra_tags)

  thresholds = {
    critical = var.dd_cpu_temperature_monitor_thresholds["critical"]
    warning  = var.dd_cpu_temperature_monitor_thresholds["warning"]
  }

  threshold_windows = {}

  require_full_window = false
  include_tags        = false
  new_host_delay      = 300
  count               = var.dd_cpu_temperature_monitor_prod ? 1 : 0

  lifecycle {
    ignore_changes = ["silenced"]
  }
}

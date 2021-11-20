#example template app dashboard
resource "datadog_dashboard" "template_dashboard" {
  title        = "template_Layout Dashboard"
  description  = "Created using the Datadog provider in Terraform"
  layout_type  = "ordered"
  is_read_only = true

  widget {
    group_definition {
      layout_type = "ordered"
      title = "templateApp"

      widget {
        timeseries_definition {
          request {
            q= "avg:system.cpu.system{*} by {host}.rollup(sum)"
            display_type = "line"
            style {
              line_type = "solid"
              line_width = "normal"
            }
          }
                 }
                }

                widget {
                        change_definition {
                           request {
                                q             = "avg:system.load.1{env:staging} by {account}"
                                change_type   = "absolute"
                        compare_to    = "week_before"
                        increase_good = true
                        order_by      = "name"
                        order_dir     = "desc"
                        show_present  = true
                        }
                        title     = "Widget Title"
                        live_span = "1h"
                  }
            }
        }
  }
}


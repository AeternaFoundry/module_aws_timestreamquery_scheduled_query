variable "timestreamquery_scheduled_queries" {
  description = <<EOT
Map of timestreamquery_scheduled_queries, attributes below
Required:
    - execution_role_arn
    - name
    - query_string
Optional:
    - kms_key_id
    - region
    - tags
    - error_report_configuration (block):
        - s3_configuration (optional, block):
            - bucket_name (required)
            - encryption_option (optional)
            - object_key_prefix (optional)
    - last_run_summary (block):
        - error_report_location (optional, block):
            - s3_report_location (optional, block):
        - execution_stats (optional, block):
        - query_insights_response (optional, block):
            - query_spatial_coverage (optional, block):
                - max (optional, block):
            - query_temporal_range (optional, block):
                - max (optional, block):
    - notification_configuration (block):
        - sns_configuration (optional, block):
            - topic_arn (required)
    - recently_failed_runs (block):
        - error_report_location (optional, block):
            - s3_report_location (optional, block):
        - execution_stats (optional, block):
        - query_insights_response (optional, block):
            - query_spatial_coverage (optional, block):
                - max (optional, block):
            - query_temporal_range (optional, block):
                - max (optional, block):
    - schedule_configuration (block):
        - schedule_expression (required)
    - target_configuration (block):
        - timestream_configuration (optional, block):
            - database_name (required)
            - dimension_mapping (optional, block):
                - dimension_value_type (required)
                - name (required)
            - measure_name_column (optional)
            - mixed_measure_mapping (optional, block):
                - measure_name (optional)
                - measure_value_type (required)
                - multi_measure_attribute_mapping (optional, block):
                    - measure_value_type (required)
                    - source_column (required)
                    - target_multi_measure_attribute_name (optional)
                - source_column (optional)
                - target_measure_name (optional)
            - multi_measure_mappings (optional, block):
                - multi_measure_attribute_mapping (optional, block):
                    - measure_value_type (required)
                    - source_column (required)
                    - target_multi_measure_attribute_name (optional)
                - target_multi_measure_name (optional)
            - table_name (required)
            - time_column (required)
EOT

  type = map(object({
    execution_role_arn = string
    name               = string
    query_string       = string
    kms_key_id         = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    error_report_configuration = optional(list(object({
      s3_configuration = optional(list(object({
        bucket_name       = string
        encryption_option = optional(string)
        object_key_prefix = optional(string)
      })))
    })))
    last_run_summary = optional(list(object({
      error_report_location = optional(list(object({
        s3_report_location = optional(list(object({
        })))
      })))
      execution_stats = optional(list(object({
      })))
      query_insights_response = optional(list(object({
        query_spatial_coverage = optional(list(object({
          max = optional(list(object({
          })))
        })))
        query_temporal_range = optional(list(object({
          max = optional(list(object({
          })))
        })))
      })))
    })))
    notification_configuration = optional(list(object({
      sns_configuration = optional(list(object({
        topic_arn = string
      })))
    })))
    recently_failed_runs = optional(list(object({
      error_report_location = optional(list(object({
        s3_report_location = optional(list(object({
        })))
      })))
      execution_stats = optional(list(object({
      })))
      query_insights_response = optional(list(object({
        query_spatial_coverage = optional(list(object({
          max = optional(list(object({
          })))
        })))
        query_temporal_range = optional(list(object({
          max = optional(list(object({
          })))
        })))
      })))
    })))
    schedule_configuration = optional(list(object({
      schedule_expression = string
    })))
    target_configuration = optional(list(object({
      timestream_configuration = optional(list(object({
        database_name = string
        dimension_mapping = optional(list(object({
          dimension_value_type = string
          name                 = string
        })))
        measure_name_column = optional(string)
        mixed_measure_mapping = optional(list(object({
          measure_name       = optional(string)
          measure_value_type = string
          multi_measure_attribute_mapping = optional(list(object({
            measure_value_type                  = string
            source_column                       = string
            target_multi_measure_attribute_name = optional(string)
          })))
          source_column       = optional(string)
          target_measure_name = optional(string)
        })))
        multi_measure_mappings = optional(list(object({
          multi_measure_attribute_mapping = optional(list(object({
            measure_value_type                  = string
            source_column                       = string
            target_multi_measure_attribute_name = optional(string)
          })))
          target_multi_measure_name = optional(string)
        })))
        table_name  = string
        time_column = string
      })))
    })))
  }))
}


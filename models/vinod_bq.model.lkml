connection: "vinod_bq_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vinod_bq_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vinod_bq_default_datagroup

explore: bollywood {}

explore: hollywood {}

explore: kollywood {}


connection: "localmariadb_testdb"

# include all the views
include: "*.view"

datagroup: testdb_local_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: testdb_local_default_datagroup

explore: order_items {}

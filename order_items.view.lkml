view: order_items {
  sql_table_name: test.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.shipping ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: order_shipping_amt {
    type: sum_distinct
    sql_distinct_key: ${order_id} ;;
    sql: ${shipping} ;;
  }
}

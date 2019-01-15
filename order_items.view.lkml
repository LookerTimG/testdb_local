view: order_items {
  sql_table_name: test.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: order_num {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: shipping {
    type: number
    sql: ${TABLE}.shipping ;;
  }

  dimension: shipping2 {
    type: number
    sql: ${shipping} ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: order_shipping_amt {
    type: sum_distinct
    sql_distinct_key: ${order_num} ;;
    sql: ${shipping} ;;
  }

  dimension: delete_me {
    type: string
    sql: ${id} ;;
  }

}

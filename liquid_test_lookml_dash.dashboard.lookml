- dashboard: liquid_test_lookml_dash
  layout: newspaper
  elements:
  - title: embed_test1
    name: embed_test1
    model: testdb_local
    explore: order_items
    type: looker_scatter
    fields:
    - order_items.order_shipping_amt
    - order_items.order_num
    sorts:
    - order_items.order_shipping_amt desc
    limit: 50
    query_timezone: America/Denver
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    note_state: collapsed
    note_display: below
    note_text: This is my test note on January 15
    row: 0
    col: 0
    width: 8
    height: 6

view: spiel {
  sql_table_name: boardgames.spiel ;;

  dimension: availability {
    type: string
    sql: ${TABLE}.Availability ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.MSRP ;;
  }

  dimension: msrp_currency {
    type: string
    sql: ${TABLE}.MSRP_Currency ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.Priority ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.Publisher ;;
  }

  dimension: show_price {
    type: number
    sql: ${TABLE}.Show_Price ;;
  }

  dimension: show_price_currency {
    type: string
    sql: ${TABLE}.Show_Price_Currency ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}

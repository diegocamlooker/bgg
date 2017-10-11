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

  dimension: hall {        # Create a dimension called "hall"
    type: string
    sql: SUBSTRING(${location},6,6) ;; # Perform a SQL calculation based on the "hall" dimension
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
    drill_fields: [title]
      }
    measure: total_price{
      type: sum
      sql: ${msrp} ;;     # Declare that the sum is based on the "msrp" dimension
      drill_fields: [title]

  }
}

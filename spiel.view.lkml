view: spiel {
  sql_table_name: boardgames.spiel ;;

  dimension: availability {
    label: "{% if spiel.availability._value == 'Demo' %} yes {% else %} no {% endif %}"
    type: string
    sql: ${TABLE}.Availability ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: hall {        # Create a dimension called "hall"
    type: string
    sql: SUBSTRING(${location},6,1) ;; # Perform a SQL calculation based on the "hall" dimension
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.MSRP ;;
  }

  dimension: msrp_currency {
    hidden: yes
    type: string
    sql: ${TABLE}.MSRP_Currency ;;
  }

  dimension: MRSP_tier {
    type:  tier
    tiers: [10,20,30,40,50,60,70,80,90,100]
    style: integer
    sql: ${msrp} ;;
    drill_fields: [title, msrp,msrp_currency]
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
    hidden: yes
    type: string
    sql: ${TABLE}.Show_Price_Currency ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
    drill_fields: [publisher,hall]
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: offer { # Create a measure called "offer"

    # Declare that "offer" has a type of number
    type: number
    # Declare that "offer" is the "msrp-show price" divided by the "msrp"
    sql: (${msrp}-${show_price}) / ${msrp} ;;

    # Declare that "male_percentage" is formatted as a percentage with no decimal points
    value_format_name: percent_0
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [title]
    html:
    <div style="color: black; background-color: lightblue; font-size:100%; text-align:center">{{ rendered_value }}</div>
      ;;}

    measure: total_price{
      type: sum
      sql: ${msrp} ;;     # Declare that the sum is based on the "msrp" dimension
      drill_fields: [title,msrp]

  }

  measure: average_price{
    type: average
    sql: ${msrp} ;;     # Declare that the sum is based on the "msrp" dimension
    drill_fields: [title,msrp]
    value_format_name: decimal_2

  }


}

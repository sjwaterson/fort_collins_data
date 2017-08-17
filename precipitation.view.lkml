view: precipitation {
  sql_table_name: fort_collins.precipitation ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: precipitation {
    type: number
    description: "in inches!"
    sql: ${TABLE}.precipitation ;;
  }

  dimension: station {
    type: string
    sql: ${TABLE}.station ;;
  }

  measure: measurements_count {
    type: count
    drill_fields: [name]
  }

  measure: precipitation_in_inches {
    type: sum
    sql: ${precipitation} ;;
  }
}

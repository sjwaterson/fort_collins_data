view: liquor_licenses {
  sql_table_name: fort_collins.liquor_licenses ;;

  dimension: establish {
    label: "Establishment Name"
    type: string
    sql: REPLACE(${TABLE}.establish, '"', '') ;;
  }

  dimension: establishment {
    type: number
    sql: ${TABLE}.establishment ;;
  }

  dimension: license_ty {
    label: "License Type"
    type: string
    sql: REPLACE(${TABLE}.license_ty, '"', '') ;;
  }

  dimension: address {
    label: "Street Address"
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${y};;
    sql_longitude: ${x};;
  }

  measure: count {
    type: count
    drill_fields: []
  }

}

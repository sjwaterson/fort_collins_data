view: council_districts {
  sql_table_name: fort_collins.council_districts ;;

  dimension: bccnum {
    type: number
    sql: ${TABLE}.bccnum ;;
  }

  dimension: dist {
    label: "District"
    type: string
    sql: ${TABLE}.dist ;;
  }

  dimension:  district_number {
    label: "District Number"
    type: number
    sql: SUBSTRING(${dist} FROM 10) + 0 ;;
  }

  dimension: dist_legend {
    type: string
    sql: ${TABLE}.dist_legend ;;
  }

  dimension: e_mail {
    label: "Council Email"
    type: string
    sql: ${TABLE}.e_mail ;;
  }

  dimension: house {
    type: number
    sql: ${TABLE}.house ;;
  }

  dimension: mayor {
    type: string
    sql: ${TABLE}.mayor ;;
  }

  dimension: mayor_e_mail {
    label: "Mayor Email"
    type: string
    sql: ${TABLE}.mayor_e_mail ;;
  }

  dimension: mayor_phone {
    type: string
    sql: ${TABLE}.mayor_phone ;;
  }

  dimension: mayor_term_expires {
    type: string
    sql: ${TABLE}.mayor_term_expires ;;
  }

  dimension: name {
    label: "Council Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: objectid {
    label: "Object ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
    map_layer_name: council_districts_map
  }

  dimension: phone {
    label: "Council Phone"
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: prec2002 {
    type: number
    sql: ${TABLE}.prec2002 ;;
  }

  dimension: precnum {
    label: "Precinct Code"
    type: string
    sql: ${TABLE}.precnum ;;
  }

  dimension: prect {
    label: "Precinct"
    type: number
    sql: ${TABLE}.prect ;;
  }

  dimension_group: revdate {
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
    sql: ${TABLE}.revdate ;;
  }

  dimension: senate {
    type: number
    sql: ${TABLE}.senate ;;
  }

  dimension: shape__area {
    type: number
    sql: ${TABLE}.shape__area ;;
  }

  dimension: shape__length {
    type: number
    sql: ${TABLE}.shape__length ;;
  }

  dimension: term_exp {
    label: "Council Term Expires"
    type: string
    sql: ${TABLE}.term_exp ;;
  }

  dimension: votercount {
    type: number
    sql: ${TABLE}.votercount ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: total_voters {
    type: sum
    sql: ${votercount} ;;
  }
}

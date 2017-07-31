view: building_permits {
  sql_table_name: fort_collins.building_permits ;;

  dimension: addr_type {
    type: string
    sql: ${TABLE}.addr_type ;;
  }

  dimension: address {
    description: "Address"
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: arc_single_line_input {
    type: string
    sql: ${TABLE}.arc_single_line_input ;;
  }

  dimension: b1_appl_status {
    type: string
    sql: ${TABLE}.b1_appl_status ;;
  }

  dimension: b1_hse_frac_nbr_start {
    type: string
    sql: ${TABLE}.b1_hse_frac_nbr_start ;;
  }

  dimension: b1_hse_nbr_start {
    type: number
    sql: ${TABLE}.b1_hse_nbr_start ;;
  }

  dimension: b1_per_group {
    type: string
    sql: ${TABLE}.b1_per_group ;;
  }

  dimension: b1_per_id1 {
    type: string
    sql: ${TABLE}.b1_per_id1 ;;
  }

  dimension: b1_per_id2 {
    type: string
    sql: ${TABLE}.b1_per_id2 ;;
  }

  dimension: b1_per_id3 {
    type: string
    sql: ${TABLE}.b1_per_id3 ;;
  }

  dimension: b1_str_dir {
    type: string
    sql: ${TABLE}.b1_str_dir ;;
  }

  dimension: b1_str_name {
    type: string
    sql: ${TABLE}.b1_str_name ;;
  }

  dimension: b1_str_suffix {
    type: string
    sql: ${TABLE}.b1_str_suffix ;;
  }

  dimension: b1_str_suffix_dir {
    type: string
    sql: ${TABLE}.b1_str_suffix_dir ;;
  }

  dimension: b1_unit_end {
    type: string
    sql: ${TABLE}.b1_unit_end ;;
  }

  dimension: b1_unit_type {
    type: string
    sql: ${TABLE}.b1_unit_type ;;
  }

  dimension: b1_work_desc {
    type: string
    sql: ${TABLE}.b1_work_desc ;;
  }

  dimension: match_addr {
    type: string
    sql: ${TABLE}.match_addr ;;
  }

  dimension: match_type {
    type: string
    sql: ${TABLE}.match_type ;;
  }


  dimension: permitnum {
    type: string
    sql: ${TABLE}.permitnum ;;
  }

  dimension: permittype {
    type: string
    sql: ${TABLE}.permittype ;;
  }

  dimension: ref_id {
    type: number
    sql: ${TABLE}.ref_id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.side ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subdivisionname {
    type: string
    sql: ${TABLE}.subdivisionname ;;
  }

  dimension: user_fld {
    type: string
    sql: ${TABLE}.user_fld ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
    link: {
      label: "View Permit"
      url: "{{web._value}}"
    }
  }

  dimension: web {
    type: string
    sql: ${TABLE}.web ;;
    link: {
      label: "Go to this URL"
      url: "{{value}}"
    }
  }

  dimension: link {
    hidden:  yes
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.x ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.y ;;
  }

  dimension: building_location {
    type:  location
    sql_latitude: ${y} ;;
    sql_longitude: ${x} ;;
  }

  measure: count {
    type: count
    drill_fields: [subdivisionname, b1_str_name]
  }
}

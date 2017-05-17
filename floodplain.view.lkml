view: floodplain {
  sql_table_name: fort_collins.floodplain ;;

  dimension: cst_mdl_id {
    type: string
    sql: ${TABLE}.cst_mdl_id ;;
  }

  dimension: fld_zone {
    type: string
    sql: ${TABLE}.fld_zone ;;
  }

  dimension: flood_type {
    type: string
    sql: ${TABLE}.flood_type ;;
  }

  dimension:  flood_type_category {
    type: number
    sql: CASE
      WHEN ${flood_type} = "500 YEAR OR 100 YEAR <1FT SHEET FLOW" THEN 1
      WHEN ${flood_type} = "100 YEAR FLOODPLAIN" THEN 2
      WHEN ${flood_type} = "0.5 FOOT FLOODWAY" THEN 3
      WHEN ${flood_type} = "FLOODWAY" THEN 4
      ELSE NULL
      END;;
  }

  dimension: floodway {
    type: yesno
    sql: ${TABLE}.floodway ;;
  }

  dimension: hydro_id {
    type: string
    sql: ${TABLE}.hydro_id ;;
  }

  dimension: objected {
    type: number
    label: "Object ID"
    sql: ${TABLE}.objected ;;
    map_layer_name: fema_floodplain_map
  }

  dimension: risk {
    type: string
    sql: ${TABLE}.risk ;;
  }

  dimension:  risk_category {
    type:  number
    sql: CASE
      WHEN ${risk} = 'HIGH FLOODWAY' THEN 3
      WHEN ${risk} = 'HIGH' THEN 2
      WHEN ${risk} = 'MODERATE' THEN 1
      ELSE NULL
      END;;
  }

  dimension: shape__area {
    type: number
    sql: ${TABLE}.shape__area ;;
  }

  dimension: shape__length {
    type: number
    sql: ${TABLE}.shape__length ;;
    }

  measure: count {
    type: count
    drill_fields: []
  }
}

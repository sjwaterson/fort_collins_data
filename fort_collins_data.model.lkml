connection: "fort_collins"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: building_permits {}
explore: council_districts {}
explore: floodplain {}
explore: liquor_licenses {}
explore: precipitation {}

map_layer: fema_floodplain_map {
  file: "FloodPlain_FEMA.json"
  property_key: "OBJECTID"
}

map_layer: council_districts_map {
  file: "District_Precinct.json"
  property_key: "OBJECTID"
}

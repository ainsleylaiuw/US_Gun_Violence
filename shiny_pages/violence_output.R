library(leaflet)
library(dplyr)

build_violence <- function(df, mapvar = "") {
  # data wrangling
  df <- df %>%
    # filters out weird 0 death/0 injury cases (threatening person report?)
    filter(!(n_killed == 0 & n_injured == 0)) %>%
    # makes "cityname, state" column that is displayed in popup
    mutate(city_name = paste0(city_or_county, ", ", state)) %>%
    # filters to searched state
    filter(grepl(tolower(mapvar), tolower(state)))

  # construct map, uses marker clusters
  violence_map <- leaflet(data = df) %>%
    addProviderTiles("CartoDB.Positron") %>%
    addMarkers(
      lat = ~latitude,
      lng = ~longitude,
      popup = ~paste("<b>Date:</b>", date, "<br>", # Date: D slash M slash YYYY
                     "<b>City:</b>", city_name, "<br>", # City: cityname, state
                     "<b>Killed:</b>", n_killed, "<br>", # Killed: X
                     "<b>Injured:</b>", n_injured), # Injured: Y
      clusterOptions = markerClusterOptions()
    )
  return(violence_map)
}

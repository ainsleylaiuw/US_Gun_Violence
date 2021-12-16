# This file is intended as a page for app_ui.R
# Centered around gun_violence_abridged.csv dataset

library(shiny)
library(leaflet)

violence_sidebar <- sidebarPanel(
  # Text and input that filters to specific state
  p("To document the location of gun violence,
    we used a map to mark",
    em("where"),
    "specific gun violence cases occurred."),
  textInput(
    inputId = "state_search",
    label = "Choose a State to specify (optional):"
  )
)

violence_main <- mainPanel(
  # visual output
  leafletOutput(
    outputId = "map"
  )
)

violence_page <- tabPanel(
  title = "Gun Violence", # name displayed on tab for pages
  titlePanel("2013-2018 Gun Violence"), # Longer name displayed on sidebar
  sidebarLayout(
    violence_sidebar,
    violence_main
  )
)

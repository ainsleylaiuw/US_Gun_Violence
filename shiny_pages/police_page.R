# This file is intended as a page for app_ui.R
# Centered around police_killings.csv dataset

library(shiny)

police_sidebar <- sidebarPanel(
  # Text and input
  p("This page aims to explore cases of ",
    strong("fatal police shootings."),
    " To do so, we use a bar chart to identify commonalities and trends in",
    "police shootings."),
  HTML("<br>"),
  # Chooses variable/column to examine in dataset
  selectInput(
    inputId = "policevar",
    label = "Choose a variable to examine:",
    choices = list("Alleged Weapon" = "alleged_weapon",
                   "Armed/Unarmed Status" = "armed_unarmed_status",
                   "Alleged Threat Level" = "alleged_threat_level",
                   "Race" = "victim_race"
                   ),
    selected = "Alleged Weapon"
  )
)

police_main <- mainPanel(
  # visual output
  plotlyOutput(
    outputId = "police_chart"
  )
)

police_page <- tabPanel(
  title = "Police", # name displayed on tab for pages
  titlePanel("Police Shootings"), # Longer name displayed on sidebar
  sidebarLayout(
    police_sidebar,
    police_main
  )
)

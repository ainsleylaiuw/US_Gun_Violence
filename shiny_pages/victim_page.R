# This file is intended as a page for app_ui.R
# Centered around firearm homicide data file

library(shiny)
library(plotly)

victim_sidebar <- sidebarPanel(
  p("On this is page you can see ",
    strong("the characteristics of the victims of firearm usage."),
    " We use a pie charts to
    demonstrate common features among victims. By doing so,
    we are able to target these factors to lower firearm deaths."),
  HTML("<br>"),
  selectInput(
    inputId = "charactor",
    label = "Choose a factor to examine:",
    choices = list("Intent" = "intent",
                   "Sex" = "sex",
                   "Race" = "race",
                   "Place" = "place",
                   "Education" = "education"
    ),
    selected = "Intent"
  )
)

victim_main <- mainPanel(
  # visual output
  plotlyOutput(
    outputId = "victim_pie_chart"
  )
)

victim_page <- tabPanel(
  title = "Victims", # name displayed on tab for pages
  titlePanel("Firearm Deaths/Victims"), # Longer name displayed on sidebar
  sidebarLayout(
    victim_sidebar,
    victim_main
  )
)

library(shiny)
library(plotly)
library(ggplot2)
####
# Write your section in your own R file so we can source() it in and
# avoid having to deal with merge conflicts.

source("shiny_pages/police_output.R")
source("shiny_pages/violence_output.R")
source("shiny_pages/victim_output.R")

server <- function(input, output) {
  # template:
  # output$<id name> <- <function returning graphic from other file>
  # exercise 19-7 exercise solution has example

  # Outputs for police page
  police_df <- read.csv("data/police_killings.csv", stringsAsFactors = FALSE)
  output$police_chart <- renderPlotly({
    return(build_police(police_df, input$policevar))
  })

  violence_df <- read.csv("data/gun_violence_abridged.csv",
                          stringsAsFactors = FALSE)
  output$map <- renderLeaflet({
    build_violence(violence_df, input$state_search)
  })
  victim_df <- read.csv("data/firearm_homicide.csv", stringsAsFactors = FALSE)
  output$victim_pie_chart <- renderPlotly({
  return(vitctim_pie(victim_df, input$charactor))
  })
}

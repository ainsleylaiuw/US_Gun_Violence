library(shiny)
library(plotly)
# Write your section in your own R file so we can source() it in and
# avoid having to deal with merge conflicts.
source("shiny_pages/police_page.R")
source("shiny_pages/violence_page.R")
source("shiny_pages/overview_page.R")
source("shiny_pages/victim_page.R")
#source(homicide dataset stuff)
source("shiny_pages/conclusion.R")

ui <- fluidPage(
  includeCSS("style.CSS"),

  navbarPage(

    title = "U.S. Gun Deaths & Violence",

    # Intro/overview sourced from other R file (might use fluidPage() instead
    # of a tabPanel() since a chart/graph isn't needed here),
    overview_page,
    # 1st tabPanel sourced from other R file,
    police_page,
    # 2nd tabPanel sourced from other R file,
    violence_page,
    # 3rd tabPanel sourced from other R file,
    victim_page,
    # Summary takeaways sourced from other R file
    conclusion_page
    # also might use fluidPage() instead since it doesn't need a reactive visual

  )
)

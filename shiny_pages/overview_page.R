# This file is intended as a page for app_ui.R
# Overview page

library(shiny)

overview_page <- tabPanel(
  title = "Overview",
  fluidPage(
    h1("INTRODUCTION"),
    p("Our report aims to study the prominent trends in gun violence and
    malignant usage in the United States. We chose to focus on this issue as
    it has been a hot topic in recent years, both regarding regular citizens
    and police forces. By studying data surrounding the topic,
    we hope to uncover insights regarding gun violence.
    This data can hopefully spread awareness and people can
    study and use the data to prevent future acts of gun violence."),

    # Data
    h1("DATA"),
    p("Below are our datasets:"),
    tags$li(a(strong("2013-2018 Gun Violence Data"),
              href = "https://www.kaggle.com/ericking310/us-gun-violence")),
    tags$li(a(strong("Police Shooting Data"),
              href = "https://mappingpoliceviolence.org/")),
    tags$li(a(strong("Gun Death Data"),
              href = "https://data.world/azel/gun-deaths-in-
              america/workspace/file?filename=full_data.csv")),

    HTML("<br>"),
    # Visual "flair"
    p("This is an image of a chart from the Gun Violence Archive
    about 2021 gun deaths"),
    tags$img(src = "overview_picture.png")
  )
)

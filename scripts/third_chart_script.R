# Name: Ainsley Lai
# This file should only contain function. Dataset will be loaded in index.Rmd
library("ggplot2")
library("plotly")

# Pre: Intended for firearm_homicide.csv
# Post: Displays pie chart of intent (X intent makes up Y% of firearm usage)
display_third_chart <- function(dataset) {
  fig <- plot_ly(dataset,
                 labels = ~intent,
                 values = ~1,
                 type = "pie")
  fig <- fig %>%
    layout(title = "2013-2018 Fatal Gun Usage",
                        xaxis = list(showgrid = FALSE,
                                     zeroline = FALSE,
                                     showticklabels = FALSE),
                        yaxis = list(showgrid = FALSE,
                                     zeroline = FALSE,
                                     showticklabels = FALSE))
  fig
}

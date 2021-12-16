# Name: Vincent
# This file should only contain function. Dataset will be loaded in index.Rmd
library("plotly")
library("dplyr")

# This function is created to work with the 2013-2018 gun violence dataframe
# Creates a stacked bar chart depicting number of injuries and deaths by state
second_chart <- function(dataset) {
  dataset <- dataset %>%
    filter(substr(date, 5, 8) == "2017") %>%
    select(state, n_injured, n_killed) %>%
    top_n(5000)
  
  fig <- plot_ly(dataset, x = ~state, y = ~n_killed, type = "bar", 
                 name ="Number of Deaths")
  fig <- fig %>% add_trace(y = ~n_injured, name ="Number of Injuries")
  fig <- fig %>% layout(yaxis = list(title = "Total Number of People Impacted"),
                        barmode = "stack")
  return(fig)
  
}

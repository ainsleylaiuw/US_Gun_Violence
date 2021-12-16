# Police output file
# Makes graph to be assigned to output$police_chart in app_server.R

library(dplyr)
library(plotly)
library(stringr)

build_police <- function(data, policevar) {
  # Data wrangling, gets # of cases for chosen var
  df <- data %>%
    mutate(across(
      .cols = c(alleged_threat_level,
                alleged_weapon,
                victim_race,
                armed_unarmed_status),
      .fns = str_to_title
    )) %>%
    mutate(across(
      .cols = c(alleged_threat_level,
                alleged_weapon,
                victim_race,
                armed_unarmed_status),
      .fns = trimws
    )) %>%
    filter(!!as.name(policevar) != "") %>%
    group_by_at(policevar) %>%
    summarise(num_cases = n()) %>%
    filter(num_cases > 9)

  # Plots in bar chart, xaxis = chosen var, yaxis = frequency
  police_p <- plot_ly(data = df,
                      x = ~get(policevar),
                      y = ~num_cases,
                      type = "bar") %>%
    layout(title = "Frequency of Police Shooting Variables",
           yaxis = list(title = "Number of Cases"),
           # ifelse() converts "Armed Unarmed" to "Armed/Unarmed"
           xaxis = list(title = ifelse(policevar == "armed_unarmed_status",
                                       gsub("Armed Unarmed", "Armed/Unarmed",
                                            str_to_title(
                                              gsub("_", " ", policevar))),
                                       str_to_title(
                                         gsub("_", " ", policevar)))))
  return(police_p)
}

library(dplyr)

# Intended use with firearm_homicide.csv
# Produces list with info on dataset
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

get_summary_info <- function(dataset) {
  result <- list()
  # Which year has the most deaths?
  result$year_highest_deaths <- dataset %>%
    group_by(year) %>%
    summarize(highest_death = max(get_mode(year))) %>%
    filter(highest_death == max(highest_death)) %>%
    pull(year)
  # Which year has the least deaths?
  result$year_lowest_deaths <- dataset %>%
    group_by(year) %>%
    summarize(least_death = min(get_mode(year))) %>%
    filter(least_death == min(least_death)) %>%
    pull(year)
  # Which month has the most deaths?
  result$month_highest_deaths <- dataset %>%
    group_by(month) %>%
    summarize(most_death = max(get_mode(month))) %>%
    filter(most_death == max(most_death)) %>%
    pull(month)
  # Which intent was the most common?
  result$most_intent <- dataset %>%
    filter(intent != "Undetermined") %>%
    group_by(intent) %>%
    summarize(most_common_intent = max(get_mode(intent))) %>%
    filter(most_common_intent == max(most_common_intent)) %>%
    pull(intent)
  # Which race was the most affected?
  result$most_race <- dataset %>%
    group_by(race) %>%
    summarize(most_common_race = max(get_mode(race))) %>%
    filter(most_common_race == max(most_common_race)) %>%
    pull(race)
  return(result)
}

## summary and analysis of three article 

library(dplyr)
library(ggplot2)



## grouped by city 
sum_city <- function(df){
  group_by(df, city)%>%
    summarize(
      num_of_case = n()
    )
}


## making scatter plot 
impacted_city <- function(df) {
  table <- sum_city(df)
  filter <-filter(police_df, alleged_threat_level !="attack")%>%
    sum_city()
  filter <- filter(police_df, alleged_threat_level !="attack")
  table1 <- sum_city(filter)
  table <- left_join(table, table1, by = "city")
  impacted_graph <- ggplot(table, 
                           aes(x= num_of_case.x, 
                               y= num_of_case.y, color = num_of_case.x)) +
    geom_point() + # Show dots 
    geom_text(
      label = table$city,
      nudge_x = 2, nudge_y = 2,
      check_overlap = T) +
    labs(x = "Number of Case",
         y = "Unresisting People",
         title = "Which City Is Most Impacted",
         colour = "Number of cases")
  print(impacted_graph)
}



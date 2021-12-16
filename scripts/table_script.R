# Name: MInoh
# This file should only contain function. Dataset will be loaded in index.Rmd
# libraray

library("dplyr")
library("ggplot2")
v_sum<- function(df, colnames, element){## find something with filter 
  filter(df, !!as.name(colnames) == element )%>%
    summarise(
      number =n()
    )
}

grouped_table <- function(df, race, education, ba, some_college,
                          hs_ged, less_than_hs) {
  g_fire <- df %>%
    group_by(!!as.name(race))
  table <- summarize(g_fire,
                     "Total number" = n())
  table1 <- v_sum(g_fire, education, ba)
  table <- left_join(table, table1, by = race)
  table2 <- v_sum(g_fire, education, some_college)
  table <- left_join(table, table2, by = race)
  table3 <- v_sum(g_fire, education, hs_ged)
  table <- left_join(table, table3, by = race)
  table4 <- v_sum(g_fire, education, less_than_hs)
  table <- left_join(table, table4, by = race)
  table <- rbind(table, Total = c("Total", sum(table$`Total number`),
                                   sum(table$number.x),
                                   sum(table$number.y),
                                   sum(table$number.x.x),
                                   sum(table$number.y.y)))
  table <- rename(table,
                 "Total" = "Total number",
                 "BA" = "number.x",
                 "college" = "number.y",
                 "Highschool" = "number.x.x",
                 "less than highschool" = "number.y.y")
}

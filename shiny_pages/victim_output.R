
library(dplyr)
library(plotly)
library(stringr)
## Data wrangling
vitctim_pie <- function(df, col) { # group info
  data <- df %>%
    group_by(!!as.name(col)) %>%
    summarize(
      count = n()
    )
  # Make the colname capital
  str <- str_to_title(col)
  # Make the plot
  fig <- plot_ly(data,
                 labels = ~get(col),
                 values = ~count,
                 type = "pie",
                 textposition = "inside",
                 textinfo = "label+percent",
                 insidetextfont = list(color = "#FFFFFF"),
                 hoverinfo = "text",
                 text = ~paste("<b>", get(col), "</b>",
                               "<br>",
                               "# of cases:", count),
                 marker = list(colors = colors,
                               line = list(color = "#FFFFFF", width = 1)),
                 showlegend = FALSE)
  fig <- fig %>%
    layout(title = paste0("The Proportion of Characteristics \"",
                          str,
                          "\" In Area"),
                        xaxis = list(showgrid = FALSE, zeroline = FALSE,
                                     showticklabels = FALSE),
                        yaxis = list(showgrid = FALSE, zeroline = FALSE,
                                     showticklabels = FALSE))
  return(fig)
}

# intended as page for app_ui.R
# Summary takeaways page

library("shiny")

conclusion_page <- tabPanel(
  title = "Summary Takeaways",
  fluidPage(
    # Police Shootings Data takeaways
    h1("Police Shootings Data"),

    # visual
    tags$img(src = "police_shootings_race.PNG"),

    # observation
    p("One of the notable observations in the police shootings data
      is that the race with the mostcases of victims in police shootings
      are white people."),

    # broad implications
    p("This surface level observation  could suggest that whites are targeted
      more often and as a result have a greater amount of victims in police
      shootings. In addition, it could potentially suggest that white people
      are more involved in activites or demonstrate behavior that causes
      officers to respond with firearms.
      However, it should be noted that whites make up
      the majority of the U.S population. As a result, there is simply more
      white people who could potentially be involved as victims in police
      shootings than people of other races. While the total number of cases
      for whites may be higher than other races, the rate at which they are
      involved in police shootings may potentially be lower than other races
      because of the total population."),

    # Gun violence 2013-2018 data takeaways
    h1("Gun Violence (2013-2018) Data "),

    # visual
    tags$img(src = "gun_violence_map.PNG"),

    # observation
    p("One of the major notable observations in the 2013-2018 gun violence
      data is that there are significantly more cases in the southeastern U.S
      states than the rest of the U.S."),

    # broad implications
    p("The observation of southeastern U.S experiencing significantly more cases
      of gun violence than other parts of the U.S suggests that gun regulation
      and laws in the southeastern states are not as effective in preventing gun
      violence as regulations and laws in the rest of the U.S. Another possible
      implication may be that there are underlying conditions in the eastern
      states that allow for more oppurtunities for gun violence. For instance,
      cultural differences or socio-economic difference may play a role in
      contributing to greater amounts of gun violence in the southeastern
      states."),

    # Homicides data takeaways
    h1("Firearm Deaths Data"),

    #visual
    tags$img(src = "victim.PNG"),

    p("One of the major takeaways from the firearm homicides data is most
      victims commited sucide in their homes"),

    p("At the observation on the surface level, the conclusion is that many
      people are choosing to commit suicide with guns at home. Also, the fact
      that many high school and under high school graduates die in gun
      accidents indicates that people with low education commit suicide using
      firearms.  There is a big social difference between high school graduates
      and college graduates. As a result, it can be seen that many people
      with low social status choose to commit suicide using firearms at home.")
  )
)

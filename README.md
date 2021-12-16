# Final Project

Minho Kim, Jaiden York, Vincent Lee, Ainsley Lai

---
## Domain of Interest

_**Why are you interested in this field/domain?**_  
Our group is interested in the gun violence/shootings in the United States domain due to the current events surrounding gun violence in the U.S. We also thought that it would an interesting domain to look into because the data can reveal a great deal of information about who is commiting gun violence crimes and who are the victims.

_**What other examples of data driven project have you found related to this domain?**_  
While researching the domain we encountered data projects that had information about:
- [Gun regulations](https://www.statefirearmlaws.org/state-state-firearm-law-data) by state via data visualizations and faceted searching to provide a broad view as well as give state-specific information.
- [Number of guns](https://www.kaggle.com/shivamb/deep-exploration-of-gun-violence-in-us) used in a violent crimes covered in a Kaggle notebook that explored trends found in a dataset. _Section 4.1_
- [Fatal police shooting](https://www.kaggle.com/washingtonpost/police-shootings) from 2015-present through compilation of data.

_**What data-driven questions do you hope to answer about this domain (share at least 3)?**_
- What is the connection between race and social status will gun violence?
- Where is the highest rate of gun violence occurring?
- Who are the victims of gun violence and what are their demographics?

_**How can these questions be answered using data?**_  
These questions can be answered by analyzing the gun violence data and comparing and cross-referencing sources to find a connection between different factors such as age, demographic and location to determine why gun violence is so prevalent in the United States. For instance, we can
- identify trends among race and social status with regards to gun violence.
- group gun violence/shootings by location and sort the results.
- arrange data to determine commonalities among victims.


---
## Finding Data

**Dataset 1:** https://mappingpoliceviolence.org/  
File is found in "data/2013_to_2020_police_killings.csv"
- Data Collection: The site lists the following in regards to their source of data:
	>"This information has been meticulously sourced from official police use of force data collection programs in states like California, Texas and Virginia, combined with nationwide data from the Fatal Encounters database, an impartial crowdsourced database on police killings. We've also done extensive original research to further improve the quality and completeness of the data; searching social media, obituaries, criminal records databases, police reports and other sources to identify the race of 90 percent of all victims in the database."  

- Data Observations: There are 9,116 observations (rows)
- Data Features: There are 34 features (columns)
- This dataset focuses on police shootings rather than general gun violence. With that in mind, the dataset may answer questions regarding race, location, and other factors from the police side (encounter reason, unarmed/armed, call for service).  

**Dataset 2:** https://www.kaggle.com/ericking310/us-gun-violence  
The data file is found in "data/archive.zip"

- Data Collection: This data is a collection of every recorded incident of gun violence in the U.S from 2013-2018. The dataset is originally gathered by _Gun Violence Archive_ from over 7,500 sources. There are multiple copies of this collected data reorganized into dataframes on Kaggle.
[Methodology of data collection described by GVA](https://www.gunviolencearchive.org/methodology):
	>"GVA began with the goal to provide a database of incidents of gun violence and gun crime. To that end we utilize automated queries, manual research through over 7,500 sources from local and state police, media, data aggregates, government and other sources daily. Each incident is verified by both initial researchers and secondary validation processes. Links to each incident are included in the incident report to provide further information on each incident for researchers, advocate groups, media and legislative interests. The incident reports provide a starting point for researchers, media and legislative interests to add texture to our raw data."

- Data Observations: There are 239677 rows of data
- Data Features: There are 29 columns of categories dividing the data.
- Since this dataset provides a record of all gun-related incidents in the U.S from 2013-2018, the dataset can help answer questions regarding factors that are related to gun-violence such as gender, location, age, victims, extent of harm, gun type, etc.

**Dataset 3:** [Data-world website link](https://data.world/azel/gun-deaths-in-america/workspace/file?filename=full_data.csv)
[USA CDC website link](https://www.cdc.gov/nchs/fastats/homicide.htm)  
File is found in "data/firearm_homicides.csv"
- Data Collection: This data is a collection of firearm homicides victims from 2012 to 2014. The data is from Data-world, which is a website that offers datasets in various areas. And the dataset is collected by the Centers for Disease Control and Prevention, which is a federal government department that works for public health and safety. The Centers for Disease Control and Prevention generated the dataset based on the reports from hospitals and police. The aggregator of the data, FiveThirtyEight, states:
	>"The data in this interactive graphic comes primarily from the Centers for Disease Control and Prevention’s Multiple Cause of Death database, which is derived from death certificates from all 50 states and the District of Columbia and is widely considered the most comprehensive estimate of firearm deaths. In keeping with the CDC’s practice, deaths of non-U.S. residents that take place in the U.S. (about 50 per year) are excluded. All figures are averages from the years 2012 to 2014, except for police shootings of civilians, which are from 2014."

- Data Observations: There are 100798 observations (rows)
- Data Features: There are 11 features (columns).
- Our team can answers the questions, "Who are the victims of gun violence and what are their demographics?"

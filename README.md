# Crime in the Time of Corona
Communication Protocols: Team members will meet during Monday evening and Wednesday evening sessions, as well as an additional call on Sunday mornings as needed to touch base.

## Presentation

Project is presented via Google Slides, linked [HERE](https://docs.google.com/presentation/d/1x2qhGkETnMjPA9_aBLomAbw2vduWJ3hdudnhB3qyIYo/edit#slide=id.gc6f9e470d_0_5).

## Topic

This project will explore crime trends in Stanislaus County as they relate to unemployment rates, specifically focusing on the time period before and during the COVID-19 outbreak.  The data from Mendocino Police Department will be compared to data from the FBI in order to see if there are trends state- or nation-wide.

## Reason

As we are living during an unprecidented time, we feel that comparing the trends during Shelter-in-Place to trends during other economic downturns will provide us the best insights to predicting how crime will evolve during COVID-19.  Understanding how the Shelter-in-Place will effect the frequency and types of crimes occuring will be relevant for law enforcement agencies to be able to proactively allocate their resources.

## Data Source

Local crime records obtained through the Modesto Police Department, queried by Anita and saved to a csv file.  This data will be compared to public records from greater areas to validate and/or notate any major differences.  Data source for greater areas will be pulled from the FBI.

4/22/2020. Based on data released by the Employment Development Department, in March of 2020, Stanislaus County saw an unemployment rate increase just under 2% over the course of one month. February 2020 was reported to be about 6.6% and rose to nearly 8.3% by close of March 2020. In this time, the city of Modesto, California experienced a 39% increase in reported aggravated assaults, from February 2020 to March 2020. In Modesto, domestic violence makes up anywhere from 40% to 60% of monthly reported aggravated assaults.

On March 19th, 2020 Governor Gavin Newsom of California issued among the earliest and most aggressive statewide Stay At Home Orders which in effect, closed businesses that were not essential under specific guidelines. Many businesses reduced hours or closed completely, schools and daycares also closed, sending kids home and families making adjustments to cover childcare. The sudden change in employment, the stress of an entire state on lockdown and a virus for which there is no vaccine are all catalysts for increasing tension among family members.

The unemployment rate dataset was gathered from the Bureau of Labor services and contains the unemployment broken down by year, state and month and includes a yearly average. The years for this dataset are from 1980 to 2018 to coincide with the available crime data from the FBI website.

The crime dataset chosen for this assignment consists of what the FBI Uniform Crime Report classifies as “Part 1” crime. Part 1 crimes are the more serious offenses and are broken into two main categories: Violent Crimes and Property Crimes.

UCR assigns a two digit code to crime classifications as follows:

- 01 - Homicide
- 02 - Rape
- 03 - Robbery
- 04 - Assault (Includes aggravated (weapon), domestic violence and non-aggravated simple assault)

Population for each state by year is also provided in this dataset



## Questions to Answer

- What crimes have changed since the start of 2020?
  - Frequency of crimes
  - Types of crimes
  - Suspect demographics
  - Areas of incidence
- Do the current trends correlate with other periods of high unemployment?
- Can we use the data to predict needs of law enforcement over the next several weeks or months during Coronavirus?

## Machine Learning Model
- Description of Data:
  - Unemployment data from the Bureau of Labor Services:
    - Years - 1980 - 2018
    - State - All 50 States of the US
    - Monthly Unemployment Rate (Jan - Dec)
    - Yearly Average Unemployment Rate
  - Crime Data from the FBI Uniform Crime Report:
    - Years - 1980 - 2018
    - State - All 50 States of the US
    - Violent Crime - Total containing homicide, rape, robbery, aggravated assault
    - Individual Violent Crimes
  - Preprocessing:
    - Data will need to be scaled, the population and total crime numbers are into the thousands where the unemployment rate is a one or two digit number
    - Both datasets have comprehensive totals (average unemployment rate, total violent crime) as well as the individual totals that make up these numbers, so it is likely several features will be dropped and run through the model differently.
  - Description of preliminary feature engineering and preliminary feature selection, including their decision-making process
    - In this model, we are looking to predict the number of aggravated assaults based on the unemployment rate. This will incorporate the use of features such as:
      - the unemployment rate of each state for each year from 1980-2018
      - the population of each state for each year from 1980 to 2018
      - the number of aggravated assaults reported for each state for each year between 1980 and 2018
  - Description of how data was split into training and testing sets
  - Explanation of model choice, including limitations and benefits
    - Linear regression was chosen for this model, the number of crime is a continuous variable
      - Limitations: When dealing with crime, several factors are at play, not just unemployment and population. We’re interested in domestic violence, however it is a subset of aggravated assault and the specific breakdown is not provided by the FBI, though is believed to account for 40% to 60% of reported aggravated assault. Also, the occurrence of domestic violence also stratifies across all socioeconomic backgrounds, so the unemployment rate would only represent a fraction of households affected.
      - Benefits: The data is easily accessible and current. National crime data is usually behind 6 months to a year, however at a local level is accessible immediately. Though households with unemployed persons is only a fraction of households affected by domestic violence, it is a population that can benefit from access to programs that can be made available at the time of filing for unemployment benefits.
  - Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
  - Description of how the model was trained (or retrained if the team used an existing model)
  - Description and explanation of model’s confusion matrix, including final accuracy score
  - **Important:** If statistical analysis is not included as part of the current analysis, the team should add a description of how it would be included in the next phases of the project.

## Database Integration
The MockUpDatabase folder in the CircleRole branch contains the files show below.

- Mockup Crimes Database.md describes the tables and files.
- DatabaseDesignWithQuickDBD.pdf shows the database design with QuickDBD.
- EntityRelationshipDiagram-QuickDBD.png is a picture of the relational structure of the database with QuickDBD.
- crimes.csv is the raw data file containing one hundred mock up rows with values for all fields in the database.
- ETL.ipynb contains the Python code to load the crimes.csv and parse it into the needed tables for the database. The codes generates the four additional tables and exports as CSV. This code also creates and populates tables in a PostgreSQL database named "crime_corona."
  - This Python ETL script assumes your PostgreSQL is in a config.py file stored in this MockUpDatabase folder. You do need the password to your own PostgreSQL server in order to populate the tables. You will first need to create an empty database in PostgreSQL named crime_corona.

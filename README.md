# Crime in the Time of Corona
## Topic

This project will explore crime trends in Stanislaus County before and during the COVID-19 outbreak.

## Reason

We feel like this will be an interesting analysis to understand how the Shelter-in-Place will effect the frequency and types of crimes occuring during the recent months.  This pandemic is unlike anything that we have experienced in our lifetime, and it will be relevant to notate and predict how demands on local law enforcement may shift during such an event.

## Data Source

Local crime records obtained through the Modesto Police Department, queried by Anita and saved to a csv file.  This data will be compared to public records from greater areas to validate and/or notate any major differences.

## Questions to Answer

- What crimes have changed since the start of 2020?
  - Frequency of crimes
  - Types of crimes
  - Suspect demographics
- Have the Shelter-in-Place orders increased the frequency of crimes within the home (domestic disputes)?
  - If so, has there been a parallel decrease in the number of crimes among strangers?
- Can we use the data to predict needs of law enforcement over the next several weeks or months during Coronavirus?

## Machine Learning Model
For this assignment we have chosen to use linear regression as our model. 

Using linear regression we will explore whether we have experienced an increase in crimes such as but not limited to domestic violence since the establishment of shelter-in-place orders in California, and if so the rate at which it has increased. 

With this linear regression model we also hope to predict the continued impact the current situation has on these crimes should shelter-in-place orders continue for a uncertain amount of time. 

Based on the data available for victim demographics, we may also apply the use of k-clustering to draw additional conclusions regarding the impact of the coronavirus on crime. 

## Database Integration
The MockUpDatabase folder in the CircleRole branch contains the files show below.

- Mockup Crimes Database.md describes the tables and files.
- DatabaseDesignWithQuickDBD.pdf shows the database design with QuickDBD.
- EntityRelationshipDiagram-QuickDBD.png is a picture of the relational structure of the database with QuickDBD.
- crimes.csv is the raw data file containing one hundred mock up rows with values for all fields in the database.
- ETL.ipynb contains the Python code to load the crimes.csv and parse it into the needed tables for the database. The codes generates the four additional tables and exports as CSV. This code also creates and populates tables in a PostgreSQL database named "crime_corona."
  - This Python ETL script assumes your PostgreSQL is in a config.py file stored in this MockUpDatabase folder. You do need the password to your own PostgreSQL server in order to populate the tables. You will first need to create an empty database in PostgreSQL named crime_corona.

# Crime in the Time of Corona
Analysis of crime in Stanislaus County before and during the COVID-19 outbreak.

## Topic

## Reason for selecting the topic

## Description of source of data

## Questions they hope to answer with the data

## Machine Learning Model
Team members are expected to presenta  provisional machine learning model that stands in for the final machine learning model and accomplishes the following:
- Takes in data from the provisional database
- Outputs label for input data

## Database Integration
The MockUpDatabase folder in the CircleRole branch contains the files show below.
- Mockup Crimes Database.md describes the tables and files.
- DatabaseDesignWithQuickDBD.pdf shows the database design with QuickDBD.
- EntityRelationshipDiagram-QuickDBD.png is a picture of the relational structure of the database with QuickDBD.
- crimes.csv is the raw data file containing one hundred mock up rows with values for all fields in the database.
- ETL.ipynb contains the Python code to load the crimes.csv and parse it into the needed tables for the database. The codes generates the four additional tables and exports as CSV.   This code also creates and populates tables in a PostgreSQL database named "crime_corona." 
  - This Python ETL script assumes your PostgreSQL is in a config.py file stored in this MockUpDatabase folder.  You do need the password to your own PostgreSQL server in order to populate the tables. You will first need to create an empty database in PostgreSQL named crime_corona.

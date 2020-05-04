# Crime in the Time of Corona


## Project Overview

#### Topic

This project will explore crime trends in Stanislaus County as they relate to unemployment rates, specifically focusing on the time period before and during the COVID-19 outbreak.  The data from Mendocino Police Department will be compared to data from the FBI in order to see if there are trends state- or nation-wide.

#### Reason

As we are living during an unprecidented time, we feel that comparing the trends during Shelter-in-Place to trends during other economic downturns will provide us the best insights to predicting how crime will evolve during COVID-19.  Understanding how the Shelter-in-Place will effect the frequency and types of crimes occuring will be relevant for law enforcement agencies to be able to proactively allocate their resources.



## Data

#### Source

Local crime data sourced from Modesto Police Department, presented in comparison with national/state crime statistics from the FBI and national/state unemployment rates from last forty years.

#### Analysis

[Exploratory Data Analysis](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/ExploratoryDataAnalysis.md)

[Secondary Data Analysis](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/SecondaryFBICrimeAndEmploymentDataAnalysis.md)



## Process

#### Database

[Database Structure for Quick DBD](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/Database/CrimeCoronaDBStructureForQuickDBD.txt)

![Database ERD](https://raw.githubusercontent.com/alysonrussell/Crime-in-the-Time-of-Corona/master/Database/EntityRelationshipDiagram-QuickDBD.png)

[Database Schema](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/Database/CrimeCoronaDatabaseSchema.md)

[Database PostgreSQL](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/Database/Build_crime_corona_db_postGresql.sql)

#### Machine Learning

[ML Process](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/ML_Doc.md)

Scripts:

- [Unemployment EDA](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/ML_Scripts/Unemployment_FBICrime_EDA_ML.ipynb)
- [Crime Clustering](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/ML_Scripts/Unemp_FBICrime_ML_Clustering.ipynb)
- [MPD Linear Regression](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/ML_Scripts/LinearRegression_LocalData.ipynb)

[ML Findings](https://github.com/alysonrussell/Crime-in-the-Time-of-Corona/blob/master/MachineLearningFindings)



## Final Product

Project is presented via Google Slides, linked [HERE](https://docs.google.com/presentation/d/1x2qhGkETnMjPA9_aBLomAbw2vduWJ3hdudnhB3qyIYo/edit#slide=id.gc6f9e470d_0_5).

Interactive dashboard of findings linked [HERE](https://datastudio.google.com/open/1oE4FtObIcGgdxFQkgxe7S7SQZI0tfHFs).
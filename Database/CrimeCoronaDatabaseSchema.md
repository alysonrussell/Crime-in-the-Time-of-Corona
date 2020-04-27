# Crimes Incidents

##  Tables

- **Incidents**  Table of 1,789 reported incidents from Dec 31, 2019 to April 14, 2020.  The twenty six fields are mostly text, including three boolean fields, two date fields, and two location integer fields.
  - **Number** - text. Primary key. Unique. E.g. "MP19037614"
  - **dateReported** - datetime.  E.g. "Dec 31, 2019,  7:10:57 PM"
  - **startDate** - datetime.  E.g. "Dec 31, 2019,  7:00:00 PM "
  - **offenseCode**** -  text.  E.g. "245 (A)(1) PC"
  - **offenseDescription** - text. E.g. "245 (A)(1) PC FORCE  OR ADW NOT FIREARM:GBI LIKELY: FELONY 04 Aggravated Assault 1231"
  - **streetAddress** - text. E.g. "OAKDALE RD &  FLOYD AVE"
  - **cityDescription** - text. E.g. "MODESTO" or "MO"
  - **stateDescription** - text. E.g. "CALIFORNIA" 
  - **zipCode** - numeric. E.g. "95355" 
  - **longitude**** - integer. E.g. "-120.958" 
  - **latitude**** - integer. E.g. "37.67808" 
  - **Booked** - Boolean "0" or "1"
  - **DAComplaint** - Boolean "0" or "1" 
  - **Cited** - Boolean "0" or "1" 
  - **burglaryFactor** -text. E.g. "RESIDENCE - DAY  (6AM - 6PM)"
  - **felonyMisdemeanor** - text. E.g. "FELONY" or "MISDEMEANOR"
  - **dateIncident** - date. E.g. "12/31/2019"
  - **weekNumber** - integer. E.g. "13"
  
- **Suspects**  
  
  - **caseID** - text. Relates to Number field in Incidents table. E.g. MP20010240"
  - **person_ID** - numeric. Primary key.  Unique. E.g. "3877"
  - **Age** - numeric.  E.g. "23"
  - ***Sex**** - text.  E.g. "MALE" or "FEMALE"
  
- **Victims**  
  
  - **caseID** - text. Relates to Number field in Incidents table. E.g. MP20010240"
  - **person_ID** - numeric. Primary key.  Unique. E.g. "3877"
  - **Age** - numeric.  E.g. "23"
  - ***Sex**** - text.  E.g. "MALE" or "FEMALE"
  
- **Penal Codes****  

  - **Penal_Code** - text. Primary key.  Unique. Relates to offense code field in Incidents table. E.g. "460(B) PC"
  - **Penal_Desc** - text.  E.g. "460(B) PC BURGLARY:  VEHICLE/LARCENY 06 Theft 2190"*

  **FBICrimes****  

  - **PID** - text. Primay key. Unique. Combination of Year and State Abbreviation. Relates to PID in Employment table.  E.g. "1980-AL"
  - **year** - date.  E.g. "1980"
  - **state_abbr** - text.  E.g. "AL"
  - ***population**** - numeric.  E.g. "3861466"
  - ***violent_crime**** - numeric.  E.g. "17320"
  - ***homicide**** - numeric.  E.g. "509"
  - ***rape_legacy**** - numeric.  E.g. "1158"
  - ***rape_revised**** - numeric.  E.g. "1850"
  - ***robbery**** - numeric.  E.g. "5102"
  - ***aggravated_assault**** - numeric.  E.g. "4989"

  **Employment****  

  - **PID** - text. Primay key. Unique. Combination of Year and State Abbreviation. Relates to PID in FBICrimes table.  E.g. "1980-AL"
  - **Year** - date.  E.g. "1980"
  - **Jan** - integer.  E.g. "7.2"
  - **Feb** - integer.  E.g. "7.1"
  - **Mar** - integer.  E.g. "7.2"
  - **Apr** - integer.  E.g. "7.2"
  - **May** - integer.  E.g. "7.2"
  - **Jun** - integer.  E.g. "7.2"
  - **Jul** - integer.  E.g. "7.2"
  - **Aug** - integer.  E.g. "7.2"
  - **Sep** - integer.  E.g. "7.2"
  - **Oct** - integer.  E.g. "7.2"
  - **Nov** - integer.  E.g. "7.2"
  - **Dec**** - integer.  E.g. "7.2"
  - **Yr Avg****** - integer.  E.g. "6.7"

  **CrimeEmpYear****  

  - **year** - date. Primary Unique E.g. "1980"
  - ***population*** - numeric.  E.g. "222877773"
  - ***violent_crime**** - numeric.  E.g. "1335465"
  - ***homicide**** - numeric.  E.g. "22679"
  - ***rape_legacy**** - numeric.  E.g. "82327"
  - ***rape_revised**** - numeric.  E.g. "104327"
  - ***robbery**** - numeric.  E.g. "531102"
  - ***aggravated_assault**** - numeric.  E.g. "904752"
  - ***emp_rate**** - integer.  E.g. "4.1234"

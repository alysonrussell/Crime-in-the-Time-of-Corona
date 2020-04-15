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
  - **felonyMisdemeanor** - text. E.g. "FELONY" or "MISDEMEANOR"**
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

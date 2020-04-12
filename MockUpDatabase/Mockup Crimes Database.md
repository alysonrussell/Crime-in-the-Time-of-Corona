# Mockup Crimes database

##  Tables

- **Crimes**  Table of crimes created from publicly available csv. Contains all the crime incident information.

  - **CID** - Case #**, integer. Unique in crimes table and outcomes table.
  - **SID - Suspect ID**, integer. Unique in Suspects table. Randomly generated for Mockup.
  - **Sus_Gen**, text. 
  - **Sus_Age**, text. 
  - **VID - Victim ID**, integer. Unique in Victim table. Randomly generated for Mockup.
  - **Vic_Gen**, text. 
  - **Vic_Age**, text. 
  - **Penal_Code**, text.  Unique in Penal_Codes Table
  - **Penal_Desc**, text. Expect to match with Penal Codes descriptions. 
  - **Crime_Desc**, text. Text description of crime.
  - **Date_Time****, datetime.
  - **Loc_Add**, text.  Incident Address.
  - **Loc_City****, text.  Incident City.
  - **Loc_State****, text. 
  - **Loc_Zip**, integer.
  - **Loc_Lat**, integer.  Latitude
  - **Loc_Lng**, integer.  Longitude
  - **Mis_Fel**, text.  Misdemeanor or Felony
  - **Inc_Result**, text. Booking vs citation vs DA Referral**

- **Suspects**  Dataset to be supplied by local criminologist.  Linked to Crimes table by Suspect_ID.

  - **SID - Suspect ID**, integer. Unique
  - **Sus_Gender**, text. 
  - **Sus_Age**, int.

  **Victims**  Dataset to be supplied by local criminologist.  Linked to Crimes table by Victim_ID.

  - **VID - Victim ID**, integer. Unique
  - **Gender**, text. 
  - **Age**, int

- **Penal_Codes ** Table of penal codes and their descriptions.  Question: perusal of mockup incident data  includes both PC and Vehicle Code (VC) incidents.  Linked to Crimes table by Penal Code.

  - **Penal_Code**, text.     Unique in Penal_Codes Table
  - **Penal_Desc**, text. Expect to match with Penal Codes descriptions.  

- **Outcomes** Table of crime outcomes and their descriptions. Linked to Crimes table by Case ID.

  - **CID** - Case #**, integer. Unique.
  - **Inc_Result**, text.
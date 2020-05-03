-- Crime in the Tine of Corona
/*
CREATE TABLE incidents (
    "CID" varchar NOT NULL,
    "Number" varchar  NOT NULL,
    "dateReported" date,
    "startDate" date,
    "offenseCode" varchar   NOT NULL,
    "offenseDescription" varchar,
    "streetAddress" varchar,
    "cityDescription" varchar,
    "stateDescription" varchar,
    "zipCode" varchar,
    "longitude" int,
    "latitude" int,
    "Booked" int,
    "DAComplaint" int,
    "Cited" int,
    "burglaryFactor" varchar,
    "felonyMisdemeanor" varchar,
    "dateIncident" date,
    "weekNumber" int,
    CONSTRAINT pk_CID PRIMARY KEY (
        "CID"
     )
);
*/

/*
CREATE TABLE suspects (
    caseID text   NOT NULL,
    person_ID int   NOT NULL,
    Age int,
    Sex varchar,
    CONSTRAINT pk_Suspects PRIMARY KEY (
        person_ID
     )
);

*/
/*
CREATE TABLE victims (
    caseID text   NOT NULL,
    person_ID int   NOT NULL,
    Age int   NOT NULL,
    Sex varchar   NOT NULL,
    CONSTRAINT pk_Victims PRIMARY KEY (
        person_ID
     )
);
*/

/*
CREATE TABLE penal_codes (
    Penal_Code varchar   NOT NULL,
    Penal_Desc varchar,
    CONSTRAINT pk_Penal_Codes PRIMARY KEY (
        Penal_Code
     )
);
*/

/*
CREATE TABLE public.fbi_crimes
(
    PID varchar,
	year date,
    state_abbr varchar,
    population int,
    violent_crime int,
    homicide int,
    rape_legacy int,
    rape_revised int,
    robbery int,
    aggravated_assault int
);
*/

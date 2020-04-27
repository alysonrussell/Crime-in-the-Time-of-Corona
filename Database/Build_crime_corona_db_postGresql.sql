-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Crime in the Tine of Corona
-- Entity Relationship for use with QuickDBD
CREATE TABLE "Incidents" (
    "Number" varchar   NOT NULL,
    "dateReported" date   NOT NULL,
    "startDate" date   NOT NULL,
    "offenseCode" varchar   NOT NULL,
    "offenseDescription" varchar   NOT NULL,
    "streetAddress" varchar   NOT NULL,
    "cityDescription" varchar   NOT NULL,
    "stateDescription" varchar   NOT NULL,
    "zipCode" int   NOT NULL,
    "longitude" int   NOT NULL,
    "latitude" int   NOT NULL,
    "Booked" bool   NOT NULL,
    "DAComplaint" bool   NOT NULL,
    "Cited" bool   NOT NULL,
    "burglaryFactor" varchar   NOT NULL,
    "felonyMisdemeanor" varchar   NOT NULL,
    "dateIncident" date   NOT NULL,
    "weekNumber" int   NOT NULL,
    CONSTRAINT "pk_Incidents" PRIMARY KEY (
        "Number"
     )
);

CREATE TABLE "Suspects" (
    "caseID" text   NOT NULL,
    "person_ID" int   NOT NULL,
    "Age" int   NOT NULL,
    "Sex" varchar   NOT NULL,
    CONSTRAINT "pk_Suspects" PRIMARY KEY (
        "person_ID"
     )
);

CREATE TABLE "Victims" (
    "caseID" text   NOT NULL,
    "person_ID" int   NOT NULL,
    "Age" int   NOT NULL,
    "Sex" varchar   NOT NULL,
    CONSTRAINT "pk_Victims" PRIMARY KEY (
        "person_ID"
     )
);

CREATE TABLE "Penal_Codes" (
    "Penal_Code" varchar   NOT NULL,
    "Penal_Desc" varchar   NOT NULL,
    CONSTRAINT "pk_Penal_Codes" PRIMARY KEY (
        "Penal_Code"
     )
);

CREATE TABLE "FBICrimes" (
    "PID" varchar   NOT NULL,
    "year" date   NOT NULL,
    "state_abbr" text   NOT NULL,
    "population" int   NOT NULL,
    "violent_crime" int   NOT NULL,
    "homicide" int   NOT NULL,
    "rape_legacy" int   NOT NULL,
    "rape_revised" int   NOT NULL,
    "robbery" int   NOT NULL,
    "aggravated_assault" int   NOT NULL,
    CONSTRAINT "pk_FBICrimes" PRIMARY KEY (
        "PID"
     )
);

CREATE TABLE "Employment" (
    "PID" varchar   NOT NULL,
    "Year" date   NOT NULL,
    "Jan" int   NOT NULL,
    "Feb" int   NOT NULL,
    "Mar" int   NOT NULL,
    "Apr" int   NOT NULL,
    "May" int   NOT NULL,
    "Jun" int   NOT NULL,
    "Jul" int   NOT NULL,
    "Aug" int   NOT NULL,
    "Sep" int   NOT NULL,
    "Oct" int   NOT NULL,
    "Nov" int   NOT NULL,
    "Dec" int   NOT NULL,
    "YrAvg" int   NOT NULL,
    CONSTRAINT "pk_Employment" PRIMARY KEY (
        "PID"
     )
);

CREATE TABLE "CrimeEmpYear" (
    "year" date   NOT NULL,
    "population" int   NOT NULL,
    "violent_crime" int   NOT NULL,
    "homicide" int   NOT NULL,
    "rape_legacy" int   NOT NULL,
    "rape_revised" int   NOT NULL,
    "robbery" int   NOT NULL,
    "aggravated_assault" int   NOT NULL,
    "emp_rate" int   NOT NULL,
    CONSTRAINT "pk_CrimeEmpYear" PRIMARY KEY (
        "year"
     )
);

-- ALTER TABLE "Suspects" ADD CONSTRAINT "fk_Suspects_caseID" FOREIGN KEY("caseID")
-- REFERENCES "Incidents" ("Number");

-- ALTER TABLE "Victims" ADD CONSTRAINT "fk_Victims_caseID" FOREIGN KEY("caseID")
--  REFERENCES "Incidents" ("Number");

-- ALTER TABLE "Penal_Codes" ADD CONSTRAINT "fk_Penal_Codes_Penal_Code" FOREIGN KEY("Penal_Code")
-- REFERENCES "Incidents" ("offenseCode");

-- ALTER TABLE "FBICrimes" ADD CONSTRAINT "fk_FBICrimes_PID" FOREIGN KEY("PID")
-- REFERENCES "Employment" ("PID");

-- ALTER TABLE "CrimeEmpYear" ADD CONSTRAINT "fk_CrimeEmpYear_year" FOREIGN KEY("year")
-- REFERENCES "FBICrimes" ("year");


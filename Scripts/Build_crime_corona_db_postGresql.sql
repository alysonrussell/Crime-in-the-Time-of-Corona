---- Crime in the Tine of Corona.  Database build script 

CREATE DATABASE crime_corona
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

--  Build tables. Five tables from Modesto crime data - tables relateable.

-- Unique Cases Table
CREATE TABLE public.unique_cases
(
    "CID" text COLLATE pg_catalog."default" NOT NULL,
    "Number" text COLLATE pg_catalog."default",
    CONSTRAINT pk_unique_cases PRIMARY KEY ("CID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.unique_cases
    OWNER to postgres;

CREATE DATABASE crime_corona
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- All Cases Table with all details. Essentially cleaned original Incidents table.

CREATE TABLE public.incidents
(
    "CID" text COLLATE pg_catalog."default" NOT NULL,
    "Number" text COLLATE pg_catalog."default",
    "dateReported" text COLLATE pg_catalog."default",
    "startDate" text COLLATE pg_catalog."default",
    "offenseCode" text COLLATE pg_catalog."default",
    "offenseDescription" text COLLATE pg_catalog."default",
    "streetAddress" text COLLATE pg_catalog."default",
    "cityDescription" text COLLATE pg_catalog."default",
    "stateDescription" text COLLATE pg_catalog."default",
    "zipCode" text COLLATE pg_catalog."default",
    longitude text COLLATE pg_catalog."default",
    latitude text COLLATE pg_catalog."default",
    "Booked" bigint,
    "DAComplaint" bigint,
    "Cited" bigint,
    "burglaryFactor" text COLLATE pg_catalog."default",
    "felonyMisdemeanor" text COLLATE pg_catalog."default",
    "dateIncident" date,
    "weekNumber" bigint,
    CONSTRAINT pk_incidents PRIMARY KEY ("CID"),
    CONSTRAINT fk_incidents_penal_codes FOREIGN KEY ("offenseCode")
        REFERENCES public.penal_codes ("Penal_Code") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_incidents_unique_cases FOREIGN KEY ("CID")
        REFERENCES public.unique_cases ("CID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.incidents
    OWNER to postgres;
	
-- People table	- unique people list
	
CREATE TABLE public.people
(
    "personID" bigint NOT NULL,
    age text COLLATE pg_catalog."default",
    sex text COLLATE pg_catalog."default",
    CONSTRAINT pk_people PRIMARY KEY ("personID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.people
    OWNER to postgres;

-- Case People and Cases - Victims and Suspects

CREATE TABLE public.case_people
(
    "Number" text COLLATE pg_catalog."default" NOT NULL,
    "involvementType" text COLLATE pg_catalog."default" NOT NULL,
    "personID" bigint NOT NULL,
    CONSTRAINT pk_case_people PRIMARY KEY ("Number", "involvementType", "personID"),
    CONSTRAINT fk_case_people_people FOREIGN KEY ("personID")
        REFERENCES public.people ("personID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.case_people
    OWNER to postgres;


CREATE INDEX fki_fk_case_people_people
    ON public.case_people USING btree
    ("personID" ASC NULLS LAST)
    TABLESPACE pg_default;


-- Create Penal Codes

CREATE TABLE public.penal_codes
(
    "Penal_Code" text COLLATE pg_catalog."default" NOT NULL,
    "Penal_Desc" text COLLATE pg_catalog."default",
    CONSTRAINT pk_penal_codes PRIMARY KEY ("Penal_Code")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.penal_codes
    OWNER to postgres;


---
--- Now the National Crime and Employment Data.
---

-- Create Summary Table of FBI Crimes and Employment

CREATE TABLE public.crime_emp_year
(
    year bigint NOT NULL,
    population bigint,
    violent_crime bigint,
    "violent_crime_perCap" double precision,
    homicide bigint,
    "homicide_perCap" double precision,
    rape_legacy double precision,
    "rape_leg_perCap" double precision,
    robbery bigint,
    "robbery_perCap" double precision,
    aggravated_assault bigint,
    "aggr_assa_perCap" double precision,
    emp_rate double precision,
    high_emp bigint,
    CONSTRAINT pk_crime_emp PRIMARY KEY (year)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.crime_emp_year
    OWNER to postgres;


-- Create fbi_crimes from national data

CREATE TABLE public.fbi_crimes
(
    "PID" text COLLATE pg_catalog."default" NOT NULL,
    year bigint,
    state_abbr text COLLATE pg_catalog."default",
    population bigint,
    violent_crime bigint,
    homicide bigint,
    rape_legacy double precision,
    rape_revised double precision,
    robbery bigint,
    aggravated_assault bigint,
    CONSTRAINT pk_fbi_crimes PRIMARY KEY ("PID"),
    CONSTRAINT fk_fbi_crimes_crime_emp FOREIGN KEY (year)
        REFERENCES public.crime_emp_year (year) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fbi_crimes
    OWNER to postgres;

-- Index: fki_fk_fbi_crimes_crime_emp

-- DROP INDEX public.fki_fk_fbi_crimes_crime_emp;

CREATE INDEX fki_fk_fbi_crimes_crime_emp
    ON public.fbi_crimes USING btree
    (year ASC NULLS LAST)
    TABLESPACE pg_default;


-- Index: ix_fbi_crimes_PID

-- DROP INDEX public."ix_fbi_crimes_PID";

CREATE INDEX "ix_fbi_crimes_PID"
    ON public.fbi_crimes USING btree
    ("PID" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
	
	
-- Create Employment table	

CREATE TABLE public.employment
(
    "PID" text COLLATE pg_catalog."default" NOT NULL,
    "Year" bigint,
    "State" text COLLATE pg_catalog."default",
    "Jan" double precision,
    "Feb" double precision,
    "Mar" double precision,
    "Apr" double precision,
    "May" double precision,
    "Jun" double precision,
    "Jul" double precision,
    "Aug" double precision,
    "Sep" double precision,
    "Oct" double precision,
    "Nov" double precision,
    "Dec" double precision,
    emp_rate double precision,
    high_emp bigint,
    CONSTRAINT pk_employment PRIMARY KEY ("PID"),
    CONSTRAINT fk_employment_crime_emp_year FOREIGN KEY ("Year")
        REFERENCES public.crime_emp_year (year) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.employment
    OWNER to postgres;

-- Index: fki_fk_employment_crime_emp_year

-- DROP INDEX public.fki_fk_employment_crime_emp_year;

CREATE INDEX fki_fk_employment_crime_emp_year
    ON public.employment USING btree
    ("Year" ASC NULLS LAST)
    TABLESPACE pg_default;


-- Index: ix_employment_PID

-- DROP INDEX public."ix_employment_PID";

CREATE INDEX "ix_employment_PID"
    ON public.employment USING btree
    ("PID" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
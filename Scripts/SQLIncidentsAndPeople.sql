-- Create a combined table of incidents and people and export to CSV for presentation.

SELECT *
FROM incidents inc
JOIN case_people cp on inc."Number" = cp."Number"
LEFT JOIN people p on p."personID" = cp."personID";

--

-- The below is not working because Number field is in both case_people and people tables with identical name.
-- Will sort this conflict out later. For now export the output to CSV and manually remove two dupe columns with Excel.
-- This should create a new table of combined data. 

SELECT * INTO incidents_people
FROM incidents inc
JOIN case_people cp on inc."Number" = cp."Number"
LEFT JOIN people p on p."personID" = cp."personID";
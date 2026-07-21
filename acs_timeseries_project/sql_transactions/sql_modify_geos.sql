-- Modifications to geography ACS tables in acs_timeseries database,
-- Create a bridge table with comparable geographies
-- Frank Donnelly, July 2025

BEGIN;

-- Table that relates places where codes changed between 2014 and 2019
CREATE TABLE geos_update_missing (
geo2014 TEXT UNIQUE,
name2014 TEXT,
geo2019 TEXT UNIQUE,
name2019 TEXT);

COPY geos_update_missing
FROM '/acs_timeseries_project/input/geo_fixing/geos_missing_bridge.txt'
WITH DELIMITER AS '	' CSV HEADER;

-- Table with metro areas that changed in composition between 2014 and 2019
CREATE TABLE geos_metros_drop (
geoid TEXT PRIMARY KEY,
name TEXT,
namelsad TEXT,
lsad varchar(2));

COPY geos_metro_drop 
FROM '/acs_timeseries_project/input/geo_fixing/geos_metros_todrop.txt'
WITH DELIMITER AS '	' CSV HEADER;

-- Table that bridges 2014 and 2019 geocodes
CREATE TABLE acs_geos_join AS 
SELECT a.geoid AS geo2014, a.name AS name2014, b.geoid AS geo2019, b.name AS name2019, 
b.stusab AS stusab2019, b.sumlevel AS sumlevel2019
FROM acs2019_geos b
LEFT JOIN acs2014_geos a ON b.geoid = a.geoid
ORDER BY b.geoid;

-- Adds codes and names to NULL 2014 fields where 2019 had no matching records
UPDATE acs_geos_join AS j
SET geo2014 = u.geo2014,
name2014 = u.name2014
FROM geos_update_missing AS u
WHERE j.geo2019=u.geo2019;

-- These states redistricted and their congressional districts aren't comparable
DELETE FROM acs_geos_join
WHERE sumlevel2019 = '500' AND stusab2019 IN ('FL','NC','PA','VA');

-- Delete the combined statistical metro areas, too many changed and aren't comparable
DELETE FROM acs_geos_join
WHERE sumlevel2019 = '330';

-- Delete metro areas that changed and are not comparable
DELETE FROM acs_geos_join
WHERE sumlevel2019 ='310' AND geo2019 IN
(SELECT geoid
FROM geos_metros_drop);

-- Delete census tracts that consist entirely of water
DELETE FROM acs_geos_join
WHERE sumlevel2019 = '140' AND geo2019 LIKE '%99____';

-- Delete census block groups that consist entirely of water
DELETE FROM acs_geos_join
WHERE sumlevel2019 = '150' AND geo2019 LIKE '%99_____';

-- Remove any remaining records for which there were no matches
DELETE FROM acs_geos_join
WHERE geo2014 IS NULL;

-- Enforce constraint
ALTER TABLE acs_geos_join
ADD CONSTRAINT geo_unique UNIQUE (geo2014,geo2019);

END;


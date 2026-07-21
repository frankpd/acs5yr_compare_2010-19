-- Modifications to original ACS tables in acs_timeseries database
-- Adjust for inflation and for changes to variables between time periods
-- Frank Donnelly, July 2025

BEGIN;

-- Median Household Income (adjust for inflation 2014 to 2019 $s)
CREATE TABLE acs2014_b19013_mod AS
SELECT *
FROM acs2014_b19013
ORDER BY logrecno;

UPDATE acs2014_b19013_mod
SET b19013_001e = CAST(ROUND(b19013_001e*1.09) AS integer);

UPDATE acs2014_b19013_mod
SET b19013_001m = CAST(ROUND(SQRT((b19013_001e^2 * 0^2)+(1.09^2 * b19013_001m^2)))as integer);

-- Median Gross Rent (adjust for inflation 2014 to 2019 $s)
CREATE TABLE acs2014_b25064_mod AS
SELECT *
FROM acs2014_b25064
ORDER BY logrecno;

UPDATE acs2014_b25064_mod
SET b25064_001e = CAST(ROUND(b25064_001e*1.09) AS integer);

UPDATE acs2014_b25064_mod
SET b25064_001m = CAST(ROUND(SQRT((b25064_001e^2 * 0^2)+(1.09^2 * b25064_001m^2))) AS integer);

-- Median Home Value (adjust for inflation 2014 to 2019 $s)
CREATE TABLE acs2014_b25077_mod AS
SELECT *
FROM acs2014_b25077
ORDER BY logrecno;

UPDATE acs2014_b25077_mod
SET b25077_001e = CAST(ROUND(b25077_001e*1.09) AS integer);

UPDATE acs2014_b25077_mod
SET b25077_001m = CAST(ROUND(SQRT((b25077_001e^2 * 0^2)+(1.09^2 * b25077_001m^2))) AS integer);

-- Place of Birth by Nativity and Citizenship Status (adjust var ID to match 2019)
CREATE TABLE acs2014_b05002_mod AS
SELECT *
FROM acs2014_b05002;

ALTER TABLE acs2014_b05002_mod
RENAME COLUMN b05002_015e TO b05002_021e;

ALTER TABLE acs2014_b05002_mod
RENAME COLUMN b05002_015m TO b05002_021m;

-- Gross Rent (adjust and aggregate categories to match 2014)
CREATE TABLE acs2019_b25063_mod AS
SELECT *
FROM acs2019_b25063;

UPDATE acs2019_b25063_mod
SET b25063_023e = b25063_023e + b25063_024e + b25063_025e + b25063_026e;

UPDATE acs2019_b25063_mod
SET b25063_023m = CAST(ROUND(SQRT(b25063_023m^2 + b25063_024m^2 + b25063_025m^2 + b25063_026m^2)) AS integer);

ALTER TABLE acs2019_b25063_mod
DROP COLUMN b25063_024e,
DROP COLUMN b25063_024m,
DROP COLUMN b25063_025e,
DROP COLUMN b25063_025m,
DROP COLUMN b25063_026e,
DROP COLUMN b25063_026m;

ALTER TABLE acs2019_b25063_mod
RENAME COLUMN b25063_027e TO b25063_024e;

ALTER TABLE acs2019_b25063_mod
RENAME COLUMN b25063_027m TO b25063_024m;

-- Update Variables Tables Based on Changes Above

CREATE TABLE acs2014_variables_temp AS
SELECT *
FROM acs2014_variables;

UPDATE acs2014_variables_temp
SET var_lbl = REPLACE(var_lbl,'IN 2014','IN 2019')
WHERE var_id = 'B19013_001';

UPDATE acs2014_variables_temp
SET var_id = 'B05002_021'
WHERE var_id = 'B05002_015';

CREATE TABLE acs2014_variables_mod AS
SELECT *
FROM acs2014_variables_temp
ORDER BY var_id;

DROP TABLE acs2014_variables_temp;

CREATE TABLE acs2019_variables_temp AS
SELECT *
FROM acs2019_variables;

UPDATE acs2019_variables_temp
SET var_lbl = 'GROSS RENT% With cash rent:% $2,000 or more'
WHERE var_id = 'B25063_023';

DELETE FROM acs2019_variables_temp
WHERE var_id IN ('B25063_024','B25063_025','B25063_026');

UPDATE acs2019_variables_temp
SET var_id = 'B25063_024'
WHERE var_id = 'B25063_027';

CREATE TABLE acs2019_variables_mod AS
SELECT *
FROM acs2019_variables_temp
ORDER BY var_id;

DROP TABLE acs2019_variables_temp;

COMMIT;


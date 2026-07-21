-- Statements with hardcoded values for testing and checking results, used for writing sql_create_tabstats.py
-- Frank Donnelly, July 21, 2025

-- Change, percent change, statistical difference
SELECT g.geo2019 AS geoid,
e2.b09001_001e - e1.b09001_001e AS b09001_001c,
CAST(ROUND(SQRT((e1.b09001_001m^2)+(e2.b09001_001m^2))) AS integer) AS b09001_001mc,
ROUND((e2.b09001_001e-e1.b09001_001e)/CAST(NULLIF(e1.b09001_001e,0) AS NUMERIC)*100,1) AS b09001_001p,
ROUND(CAST(((SQRT(e2.b09001_001m^2+((e2.b09001_001e/CAST(NULLIF(e1.b09001_001e,0) as NUMERIC))^2*e1.b09001_001m^2)))/e1.b09001_001e)*100 AS NUMERIC),1) AS b09001_001mp,
ROUND(ABS((e2.b09001_001e-e1.b09001_001e)/NULLIF((SQRT((e1.b09001_001m/1.645)^2+(e2.b09001_001m/1.645)^2)),0)),3) AS b09001_001sd
FROM acs_geos_join g
INNER JOIN acs2014_b09001 e1
ON g.geo2014=e1.geoid
INNER JOIN acs2019_b09001 e2
ON g.geo2019=e2.geoid
ORDER BY g.geo2019;

-- CVs for estimates, change, and percent change
SELECT c.geoid,
ROUND(ABS((e1.b09001_001m/1.645)/CAST(NULLIF(e1.b09001_001e,0) as numeric))*100,1) AS b09001_001e1_cv,
ROUND(ABS((e2.b09001_001m/1.645)/CAST(NULLIF(e2.b09001_001e,0) as numeric))*100,1) AS b09001_001e2_cv,
ROUND(ABS((b09001_001mc/1.645)/CAST(NULLIF(b09001_001c,0) as numeric))*100,1) AS b09001_001c_cv,
ROUND(ABS((b09001_001mp/1.645)/CAST(NULLIF(b09001_001p,0) as numeric))*100,1) AS b09001_001p_cv
FROM test_change c
INNER JOIN acs_geos_join j
ON c.geoid=j.geo2019
INNER JOIN acs2014_b09001 e1
ON j.geo2014=e1.geoid
INNER JOIN acs2019_b09001 e2
ON j.geo2019=e2.geoid
ORDER BY c.geoid;

-- Summary categories
SELECT ch.geoid,
CASE
    WHEN b09001_001sd > 1.645 THEN True
    WHEN b09001_001sd <= 1.645 THEN False
    ELSE NULL
END AS b_09001_001sd_tf,
CASE
	WHEN b09001_001c_cv < 15 Then 'high'
	WHEN b09001_001c_cv >= 15 and b09001_001c_cv < 30 Then 'medium'
	WHEN b09001_001c_cv >= 30 Then 'low'
	ELSE NULL
END AS b_09001_001c_cat,
CASE
	WHEN b09001_001p_cv < 15 Then 'high'
	WHEN b09001_001p_cv >= 15 and b09001_001p_cv < 30 Then 'medium'
	WHEN b09001_001p_cv >= 30 Then 'low'
	ELSE NULL
END AS b_09001_001p_cat
FROM test_change ch
INNER JOIN test_cvs cv ON ch.geoid=cv.geoid
ORDER BY ch.geoid; 

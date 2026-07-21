-- Create Views with difference true/false and cv categories 
BEGIN;
DROP VIEW IF EXISTS acs_b01001_cvsummary;
    CREATE VIEW acs_b01001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b01001_001e1_cv < 15 Then 'high'
    	WHEN cv.b01001_001e1_cv >= 15 and b01001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_001e1_cv_cat,

    CASE
    	WHEN cv.b01001_001e2_cv < 15 Then 'high'
    	WHEN cv.b01001_001e2_cv >= 15 and b01001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_001e2_cv_cat,

    CASE
    	WHEN cv.b01001_001c_cv < 15 Then 'high'
    	WHEN cv.b01001_001c_cv >= 15 and b01001_001c_cv < 30 Then 'medium'
    	WHEN cv.b01001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_001c_cv_cat,

    CASE
    	WHEN cv.b01001_001p_cv < 15 Then 'high'
    	WHEN cv.b01001_001p_cv >= 15 and b01001_001p_cv < 30 Then 'medium'
    	WHEN cv.b01001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_001p_cv_cat,
CASE
    WHEN ch.b01001_001sd > 1.645 THEN True
    WHEN ch.b01001_001sd <= 1.645 THEN False
    WHEN ch.b01001_001sd IS NULL AND cv.b01001_001c_cv = 0 AND ch.b01001_001cm = 0 THEN True
    ELSE NULL
    END AS b01001_001sd_tf,

    CASE
    	WHEN cv.b01001_002e1_cv < 15 Then 'high'
    	WHEN cv.b01001_002e1_cv >= 15 and b01001_002e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_002e1_cv_cat,

    CASE
    	WHEN cv.b01001_002e2_cv < 15 Then 'high'
    	WHEN cv.b01001_002e2_cv >= 15 and b01001_002e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_002e2_cv_cat,

    CASE
    	WHEN cv.b01001_002c_cv < 15 Then 'high'
    	WHEN cv.b01001_002c_cv >= 15 and b01001_002c_cv < 30 Then 'medium'
    	WHEN cv.b01001_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_002c_cv_cat,

    CASE
    	WHEN cv.b01001_002p_cv < 15 Then 'high'
    	WHEN cv.b01001_002p_cv >= 15 and b01001_002p_cv < 30 Then 'medium'
    	WHEN cv.b01001_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_002p_cv_cat,
CASE
    WHEN ch.b01001_002sd > 1.645 THEN True
    WHEN ch.b01001_002sd <= 1.645 THEN False
    WHEN ch.b01001_002sd IS NULL AND cv.b01001_002c_cv = 0 AND ch.b01001_002cm = 0 THEN True
    ELSE NULL
    END AS b01001_002sd_tf,

    CASE
    	WHEN cv.b01001_003e1_cv < 15 Then 'high'
    	WHEN cv.b01001_003e1_cv >= 15 and b01001_003e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_003e1_cv_cat,

    CASE
    	WHEN cv.b01001_003e2_cv < 15 Then 'high'
    	WHEN cv.b01001_003e2_cv >= 15 and b01001_003e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_003e2_cv_cat,

    CASE
    	WHEN cv.b01001_003c_cv < 15 Then 'high'
    	WHEN cv.b01001_003c_cv >= 15 and b01001_003c_cv < 30 Then 'medium'
    	WHEN cv.b01001_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_003c_cv_cat,

    CASE
    	WHEN cv.b01001_003p_cv < 15 Then 'high'
    	WHEN cv.b01001_003p_cv >= 15 and b01001_003p_cv < 30 Then 'medium'
    	WHEN cv.b01001_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_003p_cv_cat,
CASE
    WHEN ch.b01001_003sd > 1.645 THEN True
    WHEN ch.b01001_003sd <= 1.645 THEN False
    WHEN ch.b01001_003sd IS NULL AND cv.b01001_003c_cv = 0 AND ch.b01001_003cm = 0 THEN True
    ELSE NULL
    END AS b01001_003sd_tf,

    CASE
    	WHEN cv.b01001_004e1_cv < 15 Then 'high'
    	WHEN cv.b01001_004e1_cv >= 15 and b01001_004e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_004e1_cv_cat,

    CASE
    	WHEN cv.b01001_004e2_cv < 15 Then 'high'
    	WHEN cv.b01001_004e2_cv >= 15 and b01001_004e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_004e2_cv_cat,

    CASE
    	WHEN cv.b01001_004c_cv < 15 Then 'high'
    	WHEN cv.b01001_004c_cv >= 15 and b01001_004c_cv < 30 Then 'medium'
    	WHEN cv.b01001_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_004c_cv_cat,

    CASE
    	WHEN cv.b01001_004p_cv < 15 Then 'high'
    	WHEN cv.b01001_004p_cv >= 15 and b01001_004p_cv < 30 Then 'medium'
    	WHEN cv.b01001_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_004p_cv_cat,
CASE
    WHEN ch.b01001_004sd > 1.645 THEN True
    WHEN ch.b01001_004sd <= 1.645 THEN False
    WHEN ch.b01001_004sd IS NULL AND cv.b01001_004c_cv = 0 AND ch.b01001_004cm = 0 THEN True
    ELSE NULL
    END AS b01001_004sd_tf,

    CASE
    	WHEN cv.b01001_005e1_cv < 15 Then 'high'
    	WHEN cv.b01001_005e1_cv >= 15 and b01001_005e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_005e1_cv_cat,

    CASE
    	WHEN cv.b01001_005e2_cv < 15 Then 'high'
    	WHEN cv.b01001_005e2_cv >= 15 and b01001_005e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_005e2_cv_cat,

    CASE
    	WHEN cv.b01001_005c_cv < 15 Then 'high'
    	WHEN cv.b01001_005c_cv >= 15 and b01001_005c_cv < 30 Then 'medium'
    	WHEN cv.b01001_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_005c_cv_cat,

    CASE
    	WHEN cv.b01001_005p_cv < 15 Then 'high'
    	WHEN cv.b01001_005p_cv >= 15 and b01001_005p_cv < 30 Then 'medium'
    	WHEN cv.b01001_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_005p_cv_cat,
CASE
    WHEN ch.b01001_005sd > 1.645 THEN True
    WHEN ch.b01001_005sd <= 1.645 THEN False
    WHEN ch.b01001_005sd IS NULL AND cv.b01001_005c_cv = 0 AND ch.b01001_005cm = 0 THEN True
    ELSE NULL
    END AS b01001_005sd_tf,

    CASE
    	WHEN cv.b01001_006e1_cv < 15 Then 'high'
    	WHEN cv.b01001_006e1_cv >= 15 and b01001_006e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_006e1_cv_cat,

    CASE
    	WHEN cv.b01001_006e2_cv < 15 Then 'high'
    	WHEN cv.b01001_006e2_cv >= 15 and b01001_006e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_006e2_cv_cat,

    CASE
    	WHEN cv.b01001_006c_cv < 15 Then 'high'
    	WHEN cv.b01001_006c_cv >= 15 and b01001_006c_cv < 30 Then 'medium'
    	WHEN cv.b01001_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_006c_cv_cat,

    CASE
    	WHEN cv.b01001_006p_cv < 15 Then 'high'
    	WHEN cv.b01001_006p_cv >= 15 and b01001_006p_cv < 30 Then 'medium'
    	WHEN cv.b01001_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_006p_cv_cat,
CASE
    WHEN ch.b01001_006sd > 1.645 THEN True
    WHEN ch.b01001_006sd <= 1.645 THEN False
    WHEN ch.b01001_006sd IS NULL AND cv.b01001_006c_cv = 0 AND ch.b01001_006cm = 0 THEN True
    ELSE NULL
    END AS b01001_006sd_tf,

    CASE
    	WHEN cv.b01001_007e1_cv < 15 Then 'high'
    	WHEN cv.b01001_007e1_cv >= 15 and b01001_007e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_007e1_cv_cat,

    CASE
    	WHEN cv.b01001_007e2_cv < 15 Then 'high'
    	WHEN cv.b01001_007e2_cv >= 15 and b01001_007e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_007e2_cv_cat,

    CASE
    	WHEN cv.b01001_007c_cv < 15 Then 'high'
    	WHEN cv.b01001_007c_cv >= 15 and b01001_007c_cv < 30 Then 'medium'
    	WHEN cv.b01001_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_007c_cv_cat,

    CASE
    	WHEN cv.b01001_007p_cv < 15 Then 'high'
    	WHEN cv.b01001_007p_cv >= 15 and b01001_007p_cv < 30 Then 'medium'
    	WHEN cv.b01001_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_007p_cv_cat,
CASE
    WHEN ch.b01001_007sd > 1.645 THEN True
    WHEN ch.b01001_007sd <= 1.645 THEN False
    WHEN ch.b01001_007sd IS NULL AND cv.b01001_007c_cv = 0 AND ch.b01001_007cm = 0 THEN True
    ELSE NULL
    END AS b01001_007sd_tf,

    CASE
    	WHEN cv.b01001_008e1_cv < 15 Then 'high'
    	WHEN cv.b01001_008e1_cv >= 15 and b01001_008e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_008e1_cv_cat,

    CASE
    	WHEN cv.b01001_008e2_cv < 15 Then 'high'
    	WHEN cv.b01001_008e2_cv >= 15 and b01001_008e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_008e2_cv_cat,

    CASE
    	WHEN cv.b01001_008c_cv < 15 Then 'high'
    	WHEN cv.b01001_008c_cv >= 15 and b01001_008c_cv < 30 Then 'medium'
    	WHEN cv.b01001_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_008c_cv_cat,

    CASE
    	WHEN cv.b01001_008p_cv < 15 Then 'high'
    	WHEN cv.b01001_008p_cv >= 15 and b01001_008p_cv < 30 Then 'medium'
    	WHEN cv.b01001_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_008p_cv_cat,
CASE
    WHEN ch.b01001_008sd > 1.645 THEN True
    WHEN ch.b01001_008sd <= 1.645 THEN False
    WHEN ch.b01001_008sd IS NULL AND cv.b01001_008c_cv = 0 AND ch.b01001_008cm = 0 THEN True
    ELSE NULL
    END AS b01001_008sd_tf,

    CASE
    	WHEN cv.b01001_009e1_cv < 15 Then 'high'
    	WHEN cv.b01001_009e1_cv >= 15 and b01001_009e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_009e1_cv_cat,

    CASE
    	WHEN cv.b01001_009e2_cv < 15 Then 'high'
    	WHEN cv.b01001_009e2_cv >= 15 and b01001_009e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_009e2_cv_cat,

    CASE
    	WHEN cv.b01001_009c_cv < 15 Then 'high'
    	WHEN cv.b01001_009c_cv >= 15 and b01001_009c_cv < 30 Then 'medium'
    	WHEN cv.b01001_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_009c_cv_cat,

    CASE
    	WHEN cv.b01001_009p_cv < 15 Then 'high'
    	WHEN cv.b01001_009p_cv >= 15 and b01001_009p_cv < 30 Then 'medium'
    	WHEN cv.b01001_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_009p_cv_cat,
CASE
    WHEN ch.b01001_009sd > 1.645 THEN True
    WHEN ch.b01001_009sd <= 1.645 THEN False
    WHEN ch.b01001_009sd IS NULL AND cv.b01001_009c_cv = 0 AND ch.b01001_009cm = 0 THEN True
    ELSE NULL
    END AS b01001_009sd_tf,

    CASE
    	WHEN cv.b01001_010e1_cv < 15 Then 'high'
    	WHEN cv.b01001_010e1_cv >= 15 and b01001_010e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_010e1_cv_cat,

    CASE
    	WHEN cv.b01001_010e2_cv < 15 Then 'high'
    	WHEN cv.b01001_010e2_cv >= 15 and b01001_010e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_010e2_cv_cat,

    CASE
    	WHEN cv.b01001_010c_cv < 15 Then 'high'
    	WHEN cv.b01001_010c_cv >= 15 and b01001_010c_cv < 30 Then 'medium'
    	WHEN cv.b01001_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_010c_cv_cat,

    CASE
    	WHEN cv.b01001_010p_cv < 15 Then 'high'
    	WHEN cv.b01001_010p_cv >= 15 and b01001_010p_cv < 30 Then 'medium'
    	WHEN cv.b01001_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_010p_cv_cat,
CASE
    WHEN ch.b01001_010sd > 1.645 THEN True
    WHEN ch.b01001_010sd <= 1.645 THEN False
    WHEN ch.b01001_010sd IS NULL AND cv.b01001_010c_cv = 0 AND ch.b01001_010cm = 0 THEN True
    ELSE NULL
    END AS b01001_010sd_tf,

    CASE
    	WHEN cv.b01001_011e1_cv < 15 Then 'high'
    	WHEN cv.b01001_011e1_cv >= 15 and b01001_011e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_011e1_cv_cat,

    CASE
    	WHEN cv.b01001_011e2_cv < 15 Then 'high'
    	WHEN cv.b01001_011e2_cv >= 15 and b01001_011e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_011e2_cv_cat,

    CASE
    	WHEN cv.b01001_011c_cv < 15 Then 'high'
    	WHEN cv.b01001_011c_cv >= 15 and b01001_011c_cv < 30 Then 'medium'
    	WHEN cv.b01001_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_011c_cv_cat,

    CASE
    	WHEN cv.b01001_011p_cv < 15 Then 'high'
    	WHEN cv.b01001_011p_cv >= 15 and b01001_011p_cv < 30 Then 'medium'
    	WHEN cv.b01001_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_011p_cv_cat,
CASE
    WHEN ch.b01001_011sd > 1.645 THEN True
    WHEN ch.b01001_011sd <= 1.645 THEN False
    WHEN ch.b01001_011sd IS NULL AND cv.b01001_011c_cv = 0 AND ch.b01001_011cm = 0 THEN True
    ELSE NULL
    END AS b01001_011sd_tf,

    CASE
    	WHEN cv.b01001_012e1_cv < 15 Then 'high'
    	WHEN cv.b01001_012e1_cv >= 15 and b01001_012e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_012e1_cv_cat,

    CASE
    	WHEN cv.b01001_012e2_cv < 15 Then 'high'
    	WHEN cv.b01001_012e2_cv >= 15 and b01001_012e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_012e2_cv_cat,

    CASE
    	WHEN cv.b01001_012c_cv < 15 Then 'high'
    	WHEN cv.b01001_012c_cv >= 15 and b01001_012c_cv < 30 Then 'medium'
    	WHEN cv.b01001_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_012c_cv_cat,

    CASE
    	WHEN cv.b01001_012p_cv < 15 Then 'high'
    	WHEN cv.b01001_012p_cv >= 15 and b01001_012p_cv < 30 Then 'medium'
    	WHEN cv.b01001_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_012p_cv_cat,
CASE
    WHEN ch.b01001_012sd > 1.645 THEN True
    WHEN ch.b01001_012sd <= 1.645 THEN False
    WHEN ch.b01001_012sd IS NULL AND cv.b01001_012c_cv = 0 AND ch.b01001_012cm = 0 THEN True
    ELSE NULL
    END AS b01001_012sd_tf,

    CASE
    	WHEN cv.b01001_013e1_cv < 15 Then 'high'
    	WHEN cv.b01001_013e1_cv >= 15 and b01001_013e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_013e1_cv_cat,

    CASE
    	WHEN cv.b01001_013e2_cv < 15 Then 'high'
    	WHEN cv.b01001_013e2_cv >= 15 and b01001_013e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_013e2_cv_cat,

    CASE
    	WHEN cv.b01001_013c_cv < 15 Then 'high'
    	WHEN cv.b01001_013c_cv >= 15 and b01001_013c_cv < 30 Then 'medium'
    	WHEN cv.b01001_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_013c_cv_cat,

    CASE
    	WHEN cv.b01001_013p_cv < 15 Then 'high'
    	WHEN cv.b01001_013p_cv >= 15 and b01001_013p_cv < 30 Then 'medium'
    	WHEN cv.b01001_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_013p_cv_cat,
CASE
    WHEN ch.b01001_013sd > 1.645 THEN True
    WHEN ch.b01001_013sd <= 1.645 THEN False
    WHEN ch.b01001_013sd IS NULL AND cv.b01001_013c_cv = 0 AND ch.b01001_013cm = 0 THEN True
    ELSE NULL
    END AS b01001_013sd_tf,

    CASE
    	WHEN cv.b01001_014e1_cv < 15 Then 'high'
    	WHEN cv.b01001_014e1_cv >= 15 and b01001_014e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_014e1_cv_cat,

    CASE
    	WHEN cv.b01001_014e2_cv < 15 Then 'high'
    	WHEN cv.b01001_014e2_cv >= 15 and b01001_014e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_014e2_cv_cat,

    CASE
    	WHEN cv.b01001_014c_cv < 15 Then 'high'
    	WHEN cv.b01001_014c_cv >= 15 and b01001_014c_cv < 30 Then 'medium'
    	WHEN cv.b01001_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_014c_cv_cat,

    CASE
    	WHEN cv.b01001_014p_cv < 15 Then 'high'
    	WHEN cv.b01001_014p_cv >= 15 and b01001_014p_cv < 30 Then 'medium'
    	WHEN cv.b01001_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_014p_cv_cat,
CASE
    WHEN ch.b01001_014sd > 1.645 THEN True
    WHEN ch.b01001_014sd <= 1.645 THEN False
    WHEN ch.b01001_014sd IS NULL AND cv.b01001_014c_cv = 0 AND ch.b01001_014cm = 0 THEN True
    ELSE NULL
    END AS b01001_014sd_tf,

    CASE
    	WHEN cv.b01001_015e1_cv < 15 Then 'high'
    	WHEN cv.b01001_015e1_cv >= 15 and b01001_015e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_015e1_cv_cat,

    CASE
    	WHEN cv.b01001_015e2_cv < 15 Then 'high'
    	WHEN cv.b01001_015e2_cv >= 15 and b01001_015e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_015e2_cv_cat,

    CASE
    	WHEN cv.b01001_015c_cv < 15 Then 'high'
    	WHEN cv.b01001_015c_cv >= 15 and b01001_015c_cv < 30 Then 'medium'
    	WHEN cv.b01001_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_015c_cv_cat,

    CASE
    	WHEN cv.b01001_015p_cv < 15 Then 'high'
    	WHEN cv.b01001_015p_cv >= 15 and b01001_015p_cv < 30 Then 'medium'
    	WHEN cv.b01001_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_015p_cv_cat,
CASE
    WHEN ch.b01001_015sd > 1.645 THEN True
    WHEN ch.b01001_015sd <= 1.645 THEN False
    WHEN ch.b01001_015sd IS NULL AND cv.b01001_015c_cv = 0 AND ch.b01001_015cm = 0 THEN True
    ELSE NULL
    END AS b01001_015sd_tf,

    CASE
    	WHEN cv.b01001_016e1_cv < 15 Then 'high'
    	WHEN cv.b01001_016e1_cv >= 15 and b01001_016e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_016e1_cv_cat,

    CASE
    	WHEN cv.b01001_016e2_cv < 15 Then 'high'
    	WHEN cv.b01001_016e2_cv >= 15 and b01001_016e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_016e2_cv_cat,

    CASE
    	WHEN cv.b01001_016c_cv < 15 Then 'high'
    	WHEN cv.b01001_016c_cv >= 15 and b01001_016c_cv < 30 Then 'medium'
    	WHEN cv.b01001_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_016c_cv_cat,

    CASE
    	WHEN cv.b01001_016p_cv < 15 Then 'high'
    	WHEN cv.b01001_016p_cv >= 15 and b01001_016p_cv < 30 Then 'medium'
    	WHEN cv.b01001_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_016p_cv_cat,
CASE
    WHEN ch.b01001_016sd > 1.645 THEN True
    WHEN ch.b01001_016sd <= 1.645 THEN False
    WHEN ch.b01001_016sd IS NULL AND cv.b01001_016c_cv = 0 AND ch.b01001_016cm = 0 THEN True
    ELSE NULL
    END AS b01001_016sd_tf,

    CASE
    	WHEN cv.b01001_017e1_cv < 15 Then 'high'
    	WHEN cv.b01001_017e1_cv >= 15 and b01001_017e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_017e1_cv_cat,

    CASE
    	WHEN cv.b01001_017e2_cv < 15 Then 'high'
    	WHEN cv.b01001_017e2_cv >= 15 and b01001_017e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_017e2_cv_cat,

    CASE
    	WHEN cv.b01001_017c_cv < 15 Then 'high'
    	WHEN cv.b01001_017c_cv >= 15 and b01001_017c_cv < 30 Then 'medium'
    	WHEN cv.b01001_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_017c_cv_cat,

    CASE
    	WHEN cv.b01001_017p_cv < 15 Then 'high'
    	WHEN cv.b01001_017p_cv >= 15 and b01001_017p_cv < 30 Then 'medium'
    	WHEN cv.b01001_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_017p_cv_cat,
CASE
    WHEN ch.b01001_017sd > 1.645 THEN True
    WHEN ch.b01001_017sd <= 1.645 THEN False
    WHEN ch.b01001_017sd IS NULL AND cv.b01001_017c_cv = 0 AND ch.b01001_017cm = 0 THEN True
    ELSE NULL
    END AS b01001_017sd_tf,

    CASE
    	WHEN cv.b01001_018e1_cv < 15 Then 'high'
    	WHEN cv.b01001_018e1_cv >= 15 and b01001_018e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_018e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_018e1_cv_cat,

    CASE
    	WHEN cv.b01001_018e2_cv < 15 Then 'high'
    	WHEN cv.b01001_018e2_cv >= 15 and b01001_018e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_018e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_018e2_cv_cat,

    CASE
    	WHEN cv.b01001_018c_cv < 15 Then 'high'
    	WHEN cv.b01001_018c_cv >= 15 and b01001_018c_cv < 30 Then 'medium'
    	WHEN cv.b01001_018c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_018c_cv_cat,

    CASE
    	WHEN cv.b01001_018p_cv < 15 Then 'high'
    	WHEN cv.b01001_018p_cv >= 15 and b01001_018p_cv < 30 Then 'medium'
    	WHEN cv.b01001_018p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_018p_cv_cat,
CASE
    WHEN ch.b01001_018sd > 1.645 THEN True
    WHEN ch.b01001_018sd <= 1.645 THEN False
    WHEN ch.b01001_018sd IS NULL AND cv.b01001_018c_cv = 0 AND ch.b01001_018cm = 0 THEN True
    ELSE NULL
    END AS b01001_018sd_tf,

    CASE
    	WHEN cv.b01001_019e1_cv < 15 Then 'high'
    	WHEN cv.b01001_019e1_cv >= 15 and b01001_019e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_019e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_019e1_cv_cat,

    CASE
    	WHEN cv.b01001_019e2_cv < 15 Then 'high'
    	WHEN cv.b01001_019e2_cv >= 15 and b01001_019e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_019e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_019e2_cv_cat,

    CASE
    	WHEN cv.b01001_019c_cv < 15 Then 'high'
    	WHEN cv.b01001_019c_cv >= 15 and b01001_019c_cv < 30 Then 'medium'
    	WHEN cv.b01001_019c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_019c_cv_cat,

    CASE
    	WHEN cv.b01001_019p_cv < 15 Then 'high'
    	WHEN cv.b01001_019p_cv >= 15 and b01001_019p_cv < 30 Then 'medium'
    	WHEN cv.b01001_019p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_019p_cv_cat,
CASE
    WHEN ch.b01001_019sd > 1.645 THEN True
    WHEN ch.b01001_019sd <= 1.645 THEN False
    WHEN ch.b01001_019sd IS NULL AND cv.b01001_019c_cv = 0 AND ch.b01001_019cm = 0 THEN True
    ELSE NULL
    END AS b01001_019sd_tf,

    CASE
    	WHEN cv.b01001_020e1_cv < 15 Then 'high'
    	WHEN cv.b01001_020e1_cv >= 15 and b01001_020e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_020e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_020e1_cv_cat,

    CASE
    	WHEN cv.b01001_020e2_cv < 15 Then 'high'
    	WHEN cv.b01001_020e2_cv >= 15 and b01001_020e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_020e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_020e2_cv_cat,

    CASE
    	WHEN cv.b01001_020c_cv < 15 Then 'high'
    	WHEN cv.b01001_020c_cv >= 15 and b01001_020c_cv < 30 Then 'medium'
    	WHEN cv.b01001_020c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_020c_cv_cat,

    CASE
    	WHEN cv.b01001_020p_cv < 15 Then 'high'
    	WHEN cv.b01001_020p_cv >= 15 and b01001_020p_cv < 30 Then 'medium'
    	WHEN cv.b01001_020p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_020p_cv_cat,
CASE
    WHEN ch.b01001_020sd > 1.645 THEN True
    WHEN ch.b01001_020sd <= 1.645 THEN False
    WHEN ch.b01001_020sd IS NULL AND cv.b01001_020c_cv = 0 AND ch.b01001_020cm = 0 THEN True
    ELSE NULL
    END AS b01001_020sd_tf,

    CASE
    	WHEN cv.b01001_021e1_cv < 15 Then 'high'
    	WHEN cv.b01001_021e1_cv >= 15 and b01001_021e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_021e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_021e1_cv_cat,

    CASE
    	WHEN cv.b01001_021e2_cv < 15 Then 'high'
    	WHEN cv.b01001_021e2_cv >= 15 and b01001_021e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_021e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_021e2_cv_cat,

    CASE
    	WHEN cv.b01001_021c_cv < 15 Then 'high'
    	WHEN cv.b01001_021c_cv >= 15 and b01001_021c_cv < 30 Then 'medium'
    	WHEN cv.b01001_021c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_021c_cv_cat,

    CASE
    	WHEN cv.b01001_021p_cv < 15 Then 'high'
    	WHEN cv.b01001_021p_cv >= 15 and b01001_021p_cv < 30 Then 'medium'
    	WHEN cv.b01001_021p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_021p_cv_cat,
CASE
    WHEN ch.b01001_021sd > 1.645 THEN True
    WHEN ch.b01001_021sd <= 1.645 THEN False
    WHEN ch.b01001_021sd IS NULL AND cv.b01001_021c_cv = 0 AND ch.b01001_021cm = 0 THEN True
    ELSE NULL
    END AS b01001_021sd_tf,

    CASE
    	WHEN cv.b01001_022e1_cv < 15 Then 'high'
    	WHEN cv.b01001_022e1_cv >= 15 and b01001_022e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_022e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_022e1_cv_cat,

    CASE
    	WHEN cv.b01001_022e2_cv < 15 Then 'high'
    	WHEN cv.b01001_022e2_cv >= 15 and b01001_022e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_022e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_022e2_cv_cat,

    CASE
    	WHEN cv.b01001_022c_cv < 15 Then 'high'
    	WHEN cv.b01001_022c_cv >= 15 and b01001_022c_cv < 30 Then 'medium'
    	WHEN cv.b01001_022c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_022c_cv_cat,

    CASE
    	WHEN cv.b01001_022p_cv < 15 Then 'high'
    	WHEN cv.b01001_022p_cv >= 15 and b01001_022p_cv < 30 Then 'medium'
    	WHEN cv.b01001_022p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_022p_cv_cat,
CASE
    WHEN ch.b01001_022sd > 1.645 THEN True
    WHEN ch.b01001_022sd <= 1.645 THEN False
    WHEN ch.b01001_022sd IS NULL AND cv.b01001_022c_cv = 0 AND ch.b01001_022cm = 0 THEN True
    ELSE NULL
    END AS b01001_022sd_tf,

    CASE
    	WHEN cv.b01001_023e1_cv < 15 Then 'high'
    	WHEN cv.b01001_023e1_cv >= 15 and b01001_023e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_023e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_023e1_cv_cat,

    CASE
    	WHEN cv.b01001_023e2_cv < 15 Then 'high'
    	WHEN cv.b01001_023e2_cv >= 15 and b01001_023e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_023e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_023e2_cv_cat,

    CASE
    	WHEN cv.b01001_023c_cv < 15 Then 'high'
    	WHEN cv.b01001_023c_cv >= 15 and b01001_023c_cv < 30 Then 'medium'
    	WHEN cv.b01001_023c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_023c_cv_cat,

    CASE
    	WHEN cv.b01001_023p_cv < 15 Then 'high'
    	WHEN cv.b01001_023p_cv >= 15 and b01001_023p_cv < 30 Then 'medium'
    	WHEN cv.b01001_023p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_023p_cv_cat,
CASE
    WHEN ch.b01001_023sd > 1.645 THEN True
    WHEN ch.b01001_023sd <= 1.645 THEN False
    WHEN ch.b01001_023sd IS NULL AND cv.b01001_023c_cv = 0 AND ch.b01001_023cm = 0 THEN True
    ELSE NULL
    END AS b01001_023sd_tf,

    CASE
    	WHEN cv.b01001_024e1_cv < 15 Then 'high'
    	WHEN cv.b01001_024e1_cv >= 15 and b01001_024e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_024e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_024e1_cv_cat,

    CASE
    	WHEN cv.b01001_024e2_cv < 15 Then 'high'
    	WHEN cv.b01001_024e2_cv >= 15 and b01001_024e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_024e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_024e2_cv_cat,

    CASE
    	WHEN cv.b01001_024c_cv < 15 Then 'high'
    	WHEN cv.b01001_024c_cv >= 15 and b01001_024c_cv < 30 Then 'medium'
    	WHEN cv.b01001_024c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_024c_cv_cat,

    CASE
    	WHEN cv.b01001_024p_cv < 15 Then 'high'
    	WHEN cv.b01001_024p_cv >= 15 and b01001_024p_cv < 30 Then 'medium'
    	WHEN cv.b01001_024p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_024p_cv_cat,
CASE
    WHEN ch.b01001_024sd > 1.645 THEN True
    WHEN ch.b01001_024sd <= 1.645 THEN False
    WHEN ch.b01001_024sd IS NULL AND cv.b01001_024c_cv = 0 AND ch.b01001_024cm = 0 THEN True
    ELSE NULL
    END AS b01001_024sd_tf,

    CASE
    	WHEN cv.b01001_025e1_cv < 15 Then 'high'
    	WHEN cv.b01001_025e1_cv >= 15 and b01001_025e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_025e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_025e1_cv_cat,

    CASE
    	WHEN cv.b01001_025e2_cv < 15 Then 'high'
    	WHEN cv.b01001_025e2_cv >= 15 and b01001_025e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_025e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_025e2_cv_cat,

    CASE
    	WHEN cv.b01001_025c_cv < 15 Then 'high'
    	WHEN cv.b01001_025c_cv >= 15 and b01001_025c_cv < 30 Then 'medium'
    	WHEN cv.b01001_025c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_025c_cv_cat,

    CASE
    	WHEN cv.b01001_025p_cv < 15 Then 'high'
    	WHEN cv.b01001_025p_cv >= 15 and b01001_025p_cv < 30 Then 'medium'
    	WHEN cv.b01001_025p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_025p_cv_cat,
CASE
    WHEN ch.b01001_025sd > 1.645 THEN True
    WHEN ch.b01001_025sd <= 1.645 THEN False
    WHEN ch.b01001_025sd IS NULL AND cv.b01001_025c_cv = 0 AND ch.b01001_025cm = 0 THEN True
    ELSE NULL
    END AS b01001_025sd_tf,

    CASE
    	WHEN cv.b01001_026e1_cv < 15 Then 'high'
    	WHEN cv.b01001_026e1_cv >= 15 and b01001_026e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_026e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_026e1_cv_cat,

    CASE
    	WHEN cv.b01001_026e2_cv < 15 Then 'high'
    	WHEN cv.b01001_026e2_cv >= 15 and b01001_026e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_026e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_026e2_cv_cat,

    CASE
    	WHEN cv.b01001_026c_cv < 15 Then 'high'
    	WHEN cv.b01001_026c_cv >= 15 and b01001_026c_cv < 30 Then 'medium'
    	WHEN cv.b01001_026c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_026c_cv_cat,

    CASE
    	WHEN cv.b01001_026p_cv < 15 Then 'high'
    	WHEN cv.b01001_026p_cv >= 15 and b01001_026p_cv < 30 Then 'medium'
    	WHEN cv.b01001_026p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_026p_cv_cat,
CASE
    WHEN ch.b01001_026sd > 1.645 THEN True
    WHEN ch.b01001_026sd <= 1.645 THEN False
    WHEN ch.b01001_026sd IS NULL AND cv.b01001_026c_cv = 0 AND ch.b01001_026cm = 0 THEN True
    ELSE NULL
    END AS b01001_026sd_tf,

    CASE
    	WHEN cv.b01001_027e1_cv < 15 Then 'high'
    	WHEN cv.b01001_027e1_cv >= 15 and b01001_027e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_027e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_027e1_cv_cat,

    CASE
    	WHEN cv.b01001_027e2_cv < 15 Then 'high'
    	WHEN cv.b01001_027e2_cv >= 15 and b01001_027e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_027e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_027e2_cv_cat,

    CASE
    	WHEN cv.b01001_027c_cv < 15 Then 'high'
    	WHEN cv.b01001_027c_cv >= 15 and b01001_027c_cv < 30 Then 'medium'
    	WHEN cv.b01001_027c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_027c_cv_cat,

    CASE
    	WHEN cv.b01001_027p_cv < 15 Then 'high'
    	WHEN cv.b01001_027p_cv >= 15 and b01001_027p_cv < 30 Then 'medium'
    	WHEN cv.b01001_027p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_027p_cv_cat,
CASE
    WHEN ch.b01001_027sd > 1.645 THEN True
    WHEN ch.b01001_027sd <= 1.645 THEN False
    WHEN ch.b01001_027sd IS NULL AND cv.b01001_027c_cv = 0 AND ch.b01001_027cm = 0 THEN True
    ELSE NULL
    END AS b01001_027sd_tf,

    CASE
    	WHEN cv.b01001_028e1_cv < 15 Then 'high'
    	WHEN cv.b01001_028e1_cv >= 15 and b01001_028e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_028e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_028e1_cv_cat,

    CASE
    	WHEN cv.b01001_028e2_cv < 15 Then 'high'
    	WHEN cv.b01001_028e2_cv >= 15 and b01001_028e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_028e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_028e2_cv_cat,

    CASE
    	WHEN cv.b01001_028c_cv < 15 Then 'high'
    	WHEN cv.b01001_028c_cv >= 15 and b01001_028c_cv < 30 Then 'medium'
    	WHEN cv.b01001_028c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_028c_cv_cat,

    CASE
    	WHEN cv.b01001_028p_cv < 15 Then 'high'
    	WHEN cv.b01001_028p_cv >= 15 and b01001_028p_cv < 30 Then 'medium'
    	WHEN cv.b01001_028p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_028p_cv_cat,
CASE
    WHEN ch.b01001_028sd > 1.645 THEN True
    WHEN ch.b01001_028sd <= 1.645 THEN False
    WHEN ch.b01001_028sd IS NULL AND cv.b01001_028c_cv = 0 AND ch.b01001_028cm = 0 THEN True
    ELSE NULL
    END AS b01001_028sd_tf,

    CASE
    	WHEN cv.b01001_029e1_cv < 15 Then 'high'
    	WHEN cv.b01001_029e1_cv >= 15 and b01001_029e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_029e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_029e1_cv_cat,

    CASE
    	WHEN cv.b01001_029e2_cv < 15 Then 'high'
    	WHEN cv.b01001_029e2_cv >= 15 and b01001_029e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_029e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_029e2_cv_cat,

    CASE
    	WHEN cv.b01001_029c_cv < 15 Then 'high'
    	WHEN cv.b01001_029c_cv >= 15 and b01001_029c_cv < 30 Then 'medium'
    	WHEN cv.b01001_029c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_029c_cv_cat,

    CASE
    	WHEN cv.b01001_029p_cv < 15 Then 'high'
    	WHEN cv.b01001_029p_cv >= 15 and b01001_029p_cv < 30 Then 'medium'
    	WHEN cv.b01001_029p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_029p_cv_cat,
CASE
    WHEN ch.b01001_029sd > 1.645 THEN True
    WHEN ch.b01001_029sd <= 1.645 THEN False
    WHEN ch.b01001_029sd IS NULL AND cv.b01001_029c_cv = 0 AND ch.b01001_029cm = 0 THEN True
    ELSE NULL
    END AS b01001_029sd_tf,

    CASE
    	WHEN cv.b01001_030e1_cv < 15 Then 'high'
    	WHEN cv.b01001_030e1_cv >= 15 and b01001_030e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_030e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_030e1_cv_cat,

    CASE
    	WHEN cv.b01001_030e2_cv < 15 Then 'high'
    	WHEN cv.b01001_030e2_cv >= 15 and b01001_030e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_030e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_030e2_cv_cat,

    CASE
    	WHEN cv.b01001_030c_cv < 15 Then 'high'
    	WHEN cv.b01001_030c_cv >= 15 and b01001_030c_cv < 30 Then 'medium'
    	WHEN cv.b01001_030c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_030c_cv_cat,

    CASE
    	WHEN cv.b01001_030p_cv < 15 Then 'high'
    	WHEN cv.b01001_030p_cv >= 15 and b01001_030p_cv < 30 Then 'medium'
    	WHEN cv.b01001_030p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_030p_cv_cat,
CASE
    WHEN ch.b01001_030sd > 1.645 THEN True
    WHEN ch.b01001_030sd <= 1.645 THEN False
    WHEN ch.b01001_030sd IS NULL AND cv.b01001_030c_cv = 0 AND ch.b01001_030cm = 0 THEN True
    ELSE NULL
    END AS b01001_030sd_tf,

    CASE
    	WHEN cv.b01001_031e1_cv < 15 Then 'high'
    	WHEN cv.b01001_031e1_cv >= 15 and b01001_031e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_031e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_031e1_cv_cat,

    CASE
    	WHEN cv.b01001_031e2_cv < 15 Then 'high'
    	WHEN cv.b01001_031e2_cv >= 15 and b01001_031e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_031e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_031e2_cv_cat,

    CASE
    	WHEN cv.b01001_031c_cv < 15 Then 'high'
    	WHEN cv.b01001_031c_cv >= 15 and b01001_031c_cv < 30 Then 'medium'
    	WHEN cv.b01001_031c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_031c_cv_cat,

    CASE
    	WHEN cv.b01001_031p_cv < 15 Then 'high'
    	WHEN cv.b01001_031p_cv >= 15 and b01001_031p_cv < 30 Then 'medium'
    	WHEN cv.b01001_031p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_031p_cv_cat,
CASE
    WHEN ch.b01001_031sd > 1.645 THEN True
    WHEN ch.b01001_031sd <= 1.645 THEN False
    WHEN ch.b01001_031sd IS NULL AND cv.b01001_031c_cv = 0 AND ch.b01001_031cm = 0 THEN True
    ELSE NULL
    END AS b01001_031sd_tf,

    CASE
    	WHEN cv.b01001_032e1_cv < 15 Then 'high'
    	WHEN cv.b01001_032e1_cv >= 15 and b01001_032e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_032e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_032e1_cv_cat,

    CASE
    	WHEN cv.b01001_032e2_cv < 15 Then 'high'
    	WHEN cv.b01001_032e2_cv >= 15 and b01001_032e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_032e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_032e2_cv_cat,

    CASE
    	WHEN cv.b01001_032c_cv < 15 Then 'high'
    	WHEN cv.b01001_032c_cv >= 15 and b01001_032c_cv < 30 Then 'medium'
    	WHEN cv.b01001_032c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_032c_cv_cat,

    CASE
    	WHEN cv.b01001_032p_cv < 15 Then 'high'
    	WHEN cv.b01001_032p_cv >= 15 and b01001_032p_cv < 30 Then 'medium'
    	WHEN cv.b01001_032p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_032p_cv_cat,
CASE
    WHEN ch.b01001_032sd > 1.645 THEN True
    WHEN ch.b01001_032sd <= 1.645 THEN False
    WHEN ch.b01001_032sd IS NULL AND cv.b01001_032c_cv = 0 AND ch.b01001_032cm = 0 THEN True
    ELSE NULL
    END AS b01001_032sd_tf,

    CASE
    	WHEN cv.b01001_033e1_cv < 15 Then 'high'
    	WHEN cv.b01001_033e1_cv >= 15 and b01001_033e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_033e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_033e1_cv_cat,

    CASE
    	WHEN cv.b01001_033e2_cv < 15 Then 'high'
    	WHEN cv.b01001_033e2_cv >= 15 and b01001_033e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_033e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_033e2_cv_cat,

    CASE
    	WHEN cv.b01001_033c_cv < 15 Then 'high'
    	WHEN cv.b01001_033c_cv >= 15 and b01001_033c_cv < 30 Then 'medium'
    	WHEN cv.b01001_033c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_033c_cv_cat,

    CASE
    	WHEN cv.b01001_033p_cv < 15 Then 'high'
    	WHEN cv.b01001_033p_cv >= 15 and b01001_033p_cv < 30 Then 'medium'
    	WHEN cv.b01001_033p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_033p_cv_cat,
CASE
    WHEN ch.b01001_033sd > 1.645 THEN True
    WHEN ch.b01001_033sd <= 1.645 THEN False
    WHEN ch.b01001_033sd IS NULL AND cv.b01001_033c_cv = 0 AND ch.b01001_033cm = 0 THEN True
    ELSE NULL
    END AS b01001_033sd_tf,

    CASE
    	WHEN cv.b01001_034e1_cv < 15 Then 'high'
    	WHEN cv.b01001_034e1_cv >= 15 and b01001_034e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_034e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_034e1_cv_cat,

    CASE
    	WHEN cv.b01001_034e2_cv < 15 Then 'high'
    	WHEN cv.b01001_034e2_cv >= 15 and b01001_034e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_034e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_034e2_cv_cat,

    CASE
    	WHEN cv.b01001_034c_cv < 15 Then 'high'
    	WHEN cv.b01001_034c_cv >= 15 and b01001_034c_cv < 30 Then 'medium'
    	WHEN cv.b01001_034c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_034c_cv_cat,

    CASE
    	WHEN cv.b01001_034p_cv < 15 Then 'high'
    	WHEN cv.b01001_034p_cv >= 15 and b01001_034p_cv < 30 Then 'medium'
    	WHEN cv.b01001_034p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_034p_cv_cat,
CASE
    WHEN ch.b01001_034sd > 1.645 THEN True
    WHEN ch.b01001_034sd <= 1.645 THEN False
    WHEN ch.b01001_034sd IS NULL AND cv.b01001_034c_cv = 0 AND ch.b01001_034cm = 0 THEN True
    ELSE NULL
    END AS b01001_034sd_tf,

    CASE
    	WHEN cv.b01001_035e1_cv < 15 Then 'high'
    	WHEN cv.b01001_035e1_cv >= 15 and b01001_035e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_035e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_035e1_cv_cat,

    CASE
    	WHEN cv.b01001_035e2_cv < 15 Then 'high'
    	WHEN cv.b01001_035e2_cv >= 15 and b01001_035e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_035e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_035e2_cv_cat,

    CASE
    	WHEN cv.b01001_035c_cv < 15 Then 'high'
    	WHEN cv.b01001_035c_cv >= 15 and b01001_035c_cv < 30 Then 'medium'
    	WHEN cv.b01001_035c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_035c_cv_cat,

    CASE
    	WHEN cv.b01001_035p_cv < 15 Then 'high'
    	WHEN cv.b01001_035p_cv >= 15 and b01001_035p_cv < 30 Then 'medium'
    	WHEN cv.b01001_035p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_035p_cv_cat,
CASE
    WHEN ch.b01001_035sd > 1.645 THEN True
    WHEN ch.b01001_035sd <= 1.645 THEN False
    WHEN ch.b01001_035sd IS NULL AND cv.b01001_035c_cv = 0 AND ch.b01001_035cm = 0 THEN True
    ELSE NULL
    END AS b01001_035sd_tf,

    CASE
    	WHEN cv.b01001_036e1_cv < 15 Then 'high'
    	WHEN cv.b01001_036e1_cv >= 15 and b01001_036e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_036e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_036e1_cv_cat,

    CASE
    	WHEN cv.b01001_036e2_cv < 15 Then 'high'
    	WHEN cv.b01001_036e2_cv >= 15 and b01001_036e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_036e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_036e2_cv_cat,

    CASE
    	WHEN cv.b01001_036c_cv < 15 Then 'high'
    	WHEN cv.b01001_036c_cv >= 15 and b01001_036c_cv < 30 Then 'medium'
    	WHEN cv.b01001_036c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_036c_cv_cat,

    CASE
    	WHEN cv.b01001_036p_cv < 15 Then 'high'
    	WHEN cv.b01001_036p_cv >= 15 and b01001_036p_cv < 30 Then 'medium'
    	WHEN cv.b01001_036p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_036p_cv_cat,
CASE
    WHEN ch.b01001_036sd > 1.645 THEN True
    WHEN ch.b01001_036sd <= 1.645 THEN False
    WHEN ch.b01001_036sd IS NULL AND cv.b01001_036c_cv = 0 AND ch.b01001_036cm = 0 THEN True
    ELSE NULL
    END AS b01001_036sd_tf,

    CASE
    	WHEN cv.b01001_037e1_cv < 15 Then 'high'
    	WHEN cv.b01001_037e1_cv >= 15 and b01001_037e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_037e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_037e1_cv_cat,

    CASE
    	WHEN cv.b01001_037e2_cv < 15 Then 'high'
    	WHEN cv.b01001_037e2_cv >= 15 and b01001_037e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_037e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_037e2_cv_cat,

    CASE
    	WHEN cv.b01001_037c_cv < 15 Then 'high'
    	WHEN cv.b01001_037c_cv >= 15 and b01001_037c_cv < 30 Then 'medium'
    	WHEN cv.b01001_037c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_037c_cv_cat,

    CASE
    	WHEN cv.b01001_037p_cv < 15 Then 'high'
    	WHEN cv.b01001_037p_cv >= 15 and b01001_037p_cv < 30 Then 'medium'
    	WHEN cv.b01001_037p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_037p_cv_cat,
CASE
    WHEN ch.b01001_037sd > 1.645 THEN True
    WHEN ch.b01001_037sd <= 1.645 THEN False
    WHEN ch.b01001_037sd IS NULL AND cv.b01001_037c_cv = 0 AND ch.b01001_037cm = 0 THEN True
    ELSE NULL
    END AS b01001_037sd_tf,

    CASE
    	WHEN cv.b01001_038e1_cv < 15 Then 'high'
    	WHEN cv.b01001_038e1_cv >= 15 and b01001_038e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_038e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_038e1_cv_cat,

    CASE
    	WHEN cv.b01001_038e2_cv < 15 Then 'high'
    	WHEN cv.b01001_038e2_cv >= 15 and b01001_038e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_038e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_038e2_cv_cat,

    CASE
    	WHEN cv.b01001_038c_cv < 15 Then 'high'
    	WHEN cv.b01001_038c_cv >= 15 and b01001_038c_cv < 30 Then 'medium'
    	WHEN cv.b01001_038c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_038c_cv_cat,

    CASE
    	WHEN cv.b01001_038p_cv < 15 Then 'high'
    	WHEN cv.b01001_038p_cv >= 15 and b01001_038p_cv < 30 Then 'medium'
    	WHEN cv.b01001_038p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_038p_cv_cat,
CASE
    WHEN ch.b01001_038sd > 1.645 THEN True
    WHEN ch.b01001_038sd <= 1.645 THEN False
    WHEN ch.b01001_038sd IS NULL AND cv.b01001_038c_cv = 0 AND ch.b01001_038cm = 0 THEN True
    ELSE NULL
    END AS b01001_038sd_tf,

    CASE
    	WHEN cv.b01001_039e1_cv < 15 Then 'high'
    	WHEN cv.b01001_039e1_cv >= 15 and b01001_039e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_039e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_039e1_cv_cat,

    CASE
    	WHEN cv.b01001_039e2_cv < 15 Then 'high'
    	WHEN cv.b01001_039e2_cv >= 15 and b01001_039e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_039e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_039e2_cv_cat,

    CASE
    	WHEN cv.b01001_039c_cv < 15 Then 'high'
    	WHEN cv.b01001_039c_cv >= 15 and b01001_039c_cv < 30 Then 'medium'
    	WHEN cv.b01001_039c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_039c_cv_cat,

    CASE
    	WHEN cv.b01001_039p_cv < 15 Then 'high'
    	WHEN cv.b01001_039p_cv >= 15 and b01001_039p_cv < 30 Then 'medium'
    	WHEN cv.b01001_039p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_039p_cv_cat,
CASE
    WHEN ch.b01001_039sd > 1.645 THEN True
    WHEN ch.b01001_039sd <= 1.645 THEN False
    WHEN ch.b01001_039sd IS NULL AND cv.b01001_039c_cv = 0 AND ch.b01001_039cm = 0 THEN True
    ELSE NULL
    END AS b01001_039sd_tf,

    CASE
    	WHEN cv.b01001_040e1_cv < 15 Then 'high'
    	WHEN cv.b01001_040e1_cv >= 15 and b01001_040e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_040e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_040e1_cv_cat,

    CASE
    	WHEN cv.b01001_040e2_cv < 15 Then 'high'
    	WHEN cv.b01001_040e2_cv >= 15 and b01001_040e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_040e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_040e2_cv_cat,

    CASE
    	WHEN cv.b01001_040c_cv < 15 Then 'high'
    	WHEN cv.b01001_040c_cv >= 15 and b01001_040c_cv < 30 Then 'medium'
    	WHEN cv.b01001_040c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_040c_cv_cat,

    CASE
    	WHEN cv.b01001_040p_cv < 15 Then 'high'
    	WHEN cv.b01001_040p_cv >= 15 and b01001_040p_cv < 30 Then 'medium'
    	WHEN cv.b01001_040p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_040p_cv_cat,
CASE
    WHEN ch.b01001_040sd > 1.645 THEN True
    WHEN ch.b01001_040sd <= 1.645 THEN False
    WHEN ch.b01001_040sd IS NULL AND cv.b01001_040c_cv = 0 AND ch.b01001_040cm = 0 THEN True
    ELSE NULL
    END AS b01001_040sd_tf,

    CASE
    	WHEN cv.b01001_041e1_cv < 15 Then 'high'
    	WHEN cv.b01001_041e1_cv >= 15 and b01001_041e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_041e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_041e1_cv_cat,

    CASE
    	WHEN cv.b01001_041e2_cv < 15 Then 'high'
    	WHEN cv.b01001_041e2_cv >= 15 and b01001_041e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_041e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_041e2_cv_cat,

    CASE
    	WHEN cv.b01001_041c_cv < 15 Then 'high'
    	WHEN cv.b01001_041c_cv >= 15 and b01001_041c_cv < 30 Then 'medium'
    	WHEN cv.b01001_041c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_041c_cv_cat,

    CASE
    	WHEN cv.b01001_041p_cv < 15 Then 'high'
    	WHEN cv.b01001_041p_cv >= 15 and b01001_041p_cv < 30 Then 'medium'
    	WHEN cv.b01001_041p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_041p_cv_cat,
CASE
    WHEN ch.b01001_041sd > 1.645 THEN True
    WHEN ch.b01001_041sd <= 1.645 THEN False
    WHEN ch.b01001_041sd IS NULL AND cv.b01001_041c_cv = 0 AND ch.b01001_041cm = 0 THEN True
    ELSE NULL
    END AS b01001_041sd_tf,

    CASE
    	WHEN cv.b01001_042e1_cv < 15 Then 'high'
    	WHEN cv.b01001_042e1_cv >= 15 and b01001_042e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_042e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_042e1_cv_cat,

    CASE
    	WHEN cv.b01001_042e2_cv < 15 Then 'high'
    	WHEN cv.b01001_042e2_cv >= 15 and b01001_042e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_042e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_042e2_cv_cat,

    CASE
    	WHEN cv.b01001_042c_cv < 15 Then 'high'
    	WHEN cv.b01001_042c_cv >= 15 and b01001_042c_cv < 30 Then 'medium'
    	WHEN cv.b01001_042c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_042c_cv_cat,

    CASE
    	WHEN cv.b01001_042p_cv < 15 Then 'high'
    	WHEN cv.b01001_042p_cv >= 15 and b01001_042p_cv < 30 Then 'medium'
    	WHEN cv.b01001_042p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_042p_cv_cat,
CASE
    WHEN ch.b01001_042sd > 1.645 THEN True
    WHEN ch.b01001_042sd <= 1.645 THEN False
    WHEN ch.b01001_042sd IS NULL AND cv.b01001_042c_cv = 0 AND ch.b01001_042cm = 0 THEN True
    ELSE NULL
    END AS b01001_042sd_tf,

    CASE
    	WHEN cv.b01001_043e1_cv < 15 Then 'high'
    	WHEN cv.b01001_043e1_cv >= 15 and b01001_043e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_043e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_043e1_cv_cat,

    CASE
    	WHEN cv.b01001_043e2_cv < 15 Then 'high'
    	WHEN cv.b01001_043e2_cv >= 15 and b01001_043e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_043e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_043e2_cv_cat,

    CASE
    	WHEN cv.b01001_043c_cv < 15 Then 'high'
    	WHEN cv.b01001_043c_cv >= 15 and b01001_043c_cv < 30 Then 'medium'
    	WHEN cv.b01001_043c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_043c_cv_cat,

    CASE
    	WHEN cv.b01001_043p_cv < 15 Then 'high'
    	WHEN cv.b01001_043p_cv >= 15 and b01001_043p_cv < 30 Then 'medium'
    	WHEN cv.b01001_043p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_043p_cv_cat,
CASE
    WHEN ch.b01001_043sd > 1.645 THEN True
    WHEN ch.b01001_043sd <= 1.645 THEN False
    WHEN ch.b01001_043sd IS NULL AND cv.b01001_043c_cv = 0 AND ch.b01001_043cm = 0 THEN True
    ELSE NULL
    END AS b01001_043sd_tf,

    CASE
    	WHEN cv.b01001_044e1_cv < 15 Then 'high'
    	WHEN cv.b01001_044e1_cv >= 15 and b01001_044e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_044e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_044e1_cv_cat,

    CASE
    	WHEN cv.b01001_044e2_cv < 15 Then 'high'
    	WHEN cv.b01001_044e2_cv >= 15 and b01001_044e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_044e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_044e2_cv_cat,

    CASE
    	WHEN cv.b01001_044c_cv < 15 Then 'high'
    	WHEN cv.b01001_044c_cv >= 15 and b01001_044c_cv < 30 Then 'medium'
    	WHEN cv.b01001_044c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_044c_cv_cat,

    CASE
    	WHEN cv.b01001_044p_cv < 15 Then 'high'
    	WHEN cv.b01001_044p_cv >= 15 and b01001_044p_cv < 30 Then 'medium'
    	WHEN cv.b01001_044p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_044p_cv_cat,
CASE
    WHEN ch.b01001_044sd > 1.645 THEN True
    WHEN ch.b01001_044sd <= 1.645 THEN False
    WHEN ch.b01001_044sd IS NULL AND cv.b01001_044c_cv = 0 AND ch.b01001_044cm = 0 THEN True
    ELSE NULL
    END AS b01001_044sd_tf,

    CASE
    	WHEN cv.b01001_045e1_cv < 15 Then 'high'
    	WHEN cv.b01001_045e1_cv >= 15 and b01001_045e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_045e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_045e1_cv_cat,

    CASE
    	WHEN cv.b01001_045e2_cv < 15 Then 'high'
    	WHEN cv.b01001_045e2_cv >= 15 and b01001_045e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_045e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_045e2_cv_cat,

    CASE
    	WHEN cv.b01001_045c_cv < 15 Then 'high'
    	WHEN cv.b01001_045c_cv >= 15 and b01001_045c_cv < 30 Then 'medium'
    	WHEN cv.b01001_045c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_045c_cv_cat,

    CASE
    	WHEN cv.b01001_045p_cv < 15 Then 'high'
    	WHEN cv.b01001_045p_cv >= 15 and b01001_045p_cv < 30 Then 'medium'
    	WHEN cv.b01001_045p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_045p_cv_cat,
CASE
    WHEN ch.b01001_045sd > 1.645 THEN True
    WHEN ch.b01001_045sd <= 1.645 THEN False
    WHEN ch.b01001_045sd IS NULL AND cv.b01001_045c_cv = 0 AND ch.b01001_045cm = 0 THEN True
    ELSE NULL
    END AS b01001_045sd_tf,

    CASE
    	WHEN cv.b01001_046e1_cv < 15 Then 'high'
    	WHEN cv.b01001_046e1_cv >= 15 and b01001_046e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_046e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_046e1_cv_cat,

    CASE
    	WHEN cv.b01001_046e2_cv < 15 Then 'high'
    	WHEN cv.b01001_046e2_cv >= 15 and b01001_046e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_046e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_046e2_cv_cat,

    CASE
    	WHEN cv.b01001_046c_cv < 15 Then 'high'
    	WHEN cv.b01001_046c_cv >= 15 and b01001_046c_cv < 30 Then 'medium'
    	WHEN cv.b01001_046c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_046c_cv_cat,

    CASE
    	WHEN cv.b01001_046p_cv < 15 Then 'high'
    	WHEN cv.b01001_046p_cv >= 15 and b01001_046p_cv < 30 Then 'medium'
    	WHEN cv.b01001_046p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_046p_cv_cat,
CASE
    WHEN ch.b01001_046sd > 1.645 THEN True
    WHEN ch.b01001_046sd <= 1.645 THEN False
    WHEN ch.b01001_046sd IS NULL AND cv.b01001_046c_cv = 0 AND ch.b01001_046cm = 0 THEN True
    ELSE NULL
    END AS b01001_046sd_tf,

    CASE
    	WHEN cv.b01001_047e1_cv < 15 Then 'high'
    	WHEN cv.b01001_047e1_cv >= 15 and b01001_047e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_047e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_047e1_cv_cat,

    CASE
    	WHEN cv.b01001_047e2_cv < 15 Then 'high'
    	WHEN cv.b01001_047e2_cv >= 15 and b01001_047e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_047e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_047e2_cv_cat,

    CASE
    	WHEN cv.b01001_047c_cv < 15 Then 'high'
    	WHEN cv.b01001_047c_cv >= 15 and b01001_047c_cv < 30 Then 'medium'
    	WHEN cv.b01001_047c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_047c_cv_cat,

    CASE
    	WHEN cv.b01001_047p_cv < 15 Then 'high'
    	WHEN cv.b01001_047p_cv >= 15 and b01001_047p_cv < 30 Then 'medium'
    	WHEN cv.b01001_047p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_047p_cv_cat,
CASE
    WHEN ch.b01001_047sd > 1.645 THEN True
    WHEN ch.b01001_047sd <= 1.645 THEN False
    WHEN ch.b01001_047sd IS NULL AND cv.b01001_047c_cv = 0 AND ch.b01001_047cm = 0 THEN True
    ELSE NULL
    END AS b01001_047sd_tf,

    CASE
    	WHEN cv.b01001_048e1_cv < 15 Then 'high'
    	WHEN cv.b01001_048e1_cv >= 15 and b01001_048e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_048e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_048e1_cv_cat,

    CASE
    	WHEN cv.b01001_048e2_cv < 15 Then 'high'
    	WHEN cv.b01001_048e2_cv >= 15 and b01001_048e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_048e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_048e2_cv_cat,

    CASE
    	WHEN cv.b01001_048c_cv < 15 Then 'high'
    	WHEN cv.b01001_048c_cv >= 15 and b01001_048c_cv < 30 Then 'medium'
    	WHEN cv.b01001_048c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_048c_cv_cat,

    CASE
    	WHEN cv.b01001_048p_cv < 15 Then 'high'
    	WHEN cv.b01001_048p_cv >= 15 and b01001_048p_cv < 30 Then 'medium'
    	WHEN cv.b01001_048p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_048p_cv_cat,
CASE
    WHEN ch.b01001_048sd > 1.645 THEN True
    WHEN ch.b01001_048sd <= 1.645 THEN False
    WHEN ch.b01001_048sd IS NULL AND cv.b01001_048c_cv = 0 AND ch.b01001_048cm = 0 THEN True
    ELSE NULL
    END AS b01001_048sd_tf,

    CASE
    	WHEN cv.b01001_049e1_cv < 15 Then 'high'
    	WHEN cv.b01001_049e1_cv >= 15 and b01001_049e1_cv < 30 Then 'medium'
    	WHEN cv.b01001_049e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_049e1_cv_cat,

    CASE
    	WHEN cv.b01001_049e2_cv < 15 Then 'high'
    	WHEN cv.b01001_049e2_cv >= 15 and b01001_049e2_cv < 30 Then 'medium'
    	WHEN cv.b01001_049e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_049e2_cv_cat,

    CASE
    	WHEN cv.b01001_049c_cv < 15 Then 'high'
    	WHEN cv.b01001_049c_cv >= 15 and b01001_049c_cv < 30 Then 'medium'
    	WHEN cv.b01001_049c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_049c_cv_cat,

    CASE
    	WHEN cv.b01001_049p_cv < 15 Then 'high'
    	WHEN cv.b01001_049p_cv >= 15 and b01001_049p_cv < 30 Then 'medium'
    	WHEN cv.b01001_049p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01001_049p_cv_cat,
CASE
    WHEN ch.b01001_049sd > 1.645 THEN True
    WHEN ch.b01001_049sd <= 1.645 THEN False
    WHEN ch.b01001_049sd IS NULL AND cv.b01001_049c_cv = 0 AND ch.b01001_049cm = 0 THEN True
    ELSE NULL
    END AS b01001_049sd_tf

    FROM acs_b01001_cvs cv
    INNER JOIN acs_b01001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b01002_cvsummary;
    CREATE VIEW acs_b01002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b01002_001e1_cv < 15 Then 'high'
    	WHEN cv.b01002_001e1_cv >= 15 and b01002_001e1_cv < 30 Then 'medium'
    	WHEN cv.b01002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_001e1_cv_cat,

    CASE
    	WHEN cv.b01002_001e2_cv < 15 Then 'high'
    	WHEN cv.b01002_001e2_cv >= 15 and b01002_001e2_cv < 30 Then 'medium'
    	WHEN cv.b01002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_001e2_cv_cat,

    CASE
    	WHEN cv.b01002_001c_cv < 15 Then 'high'
    	WHEN cv.b01002_001c_cv >= 15 and b01002_001c_cv < 30 Then 'medium'
    	WHEN cv.b01002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_001c_cv_cat,

    CASE
    	WHEN cv.b01002_001p_cv < 15 Then 'high'
    	WHEN cv.b01002_001p_cv >= 15 and b01002_001p_cv < 30 Then 'medium'
    	WHEN cv.b01002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_001p_cv_cat,
CASE
    WHEN ch.b01002_001sd > 1.645 THEN True
    WHEN ch.b01002_001sd <= 1.645 THEN False
    WHEN ch.b01002_001sd IS NULL AND cv.b01002_001c_cv = 0 AND ch.b01002_001cm = 0 THEN True
    ELSE NULL
    END AS b01002_001sd_tf,

    CASE
    	WHEN cv.b01002_002e1_cv < 15 Then 'high'
    	WHEN cv.b01002_002e1_cv >= 15 and b01002_002e1_cv < 30 Then 'medium'
    	WHEN cv.b01002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_002e1_cv_cat,

    CASE
    	WHEN cv.b01002_002e2_cv < 15 Then 'high'
    	WHEN cv.b01002_002e2_cv >= 15 and b01002_002e2_cv < 30 Then 'medium'
    	WHEN cv.b01002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_002e2_cv_cat,

    CASE
    	WHEN cv.b01002_002c_cv < 15 Then 'high'
    	WHEN cv.b01002_002c_cv >= 15 and b01002_002c_cv < 30 Then 'medium'
    	WHEN cv.b01002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_002c_cv_cat,

    CASE
    	WHEN cv.b01002_002p_cv < 15 Then 'high'
    	WHEN cv.b01002_002p_cv >= 15 and b01002_002p_cv < 30 Then 'medium'
    	WHEN cv.b01002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_002p_cv_cat,
CASE
    WHEN ch.b01002_002sd > 1.645 THEN True
    WHEN ch.b01002_002sd <= 1.645 THEN False
    WHEN ch.b01002_002sd IS NULL AND cv.b01002_002c_cv = 0 AND ch.b01002_002cm = 0 THEN True
    ELSE NULL
    END AS b01002_002sd_tf,

    CASE
    	WHEN cv.b01002_003e1_cv < 15 Then 'high'
    	WHEN cv.b01002_003e1_cv >= 15 and b01002_003e1_cv < 30 Then 'medium'
    	WHEN cv.b01002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_003e1_cv_cat,

    CASE
    	WHEN cv.b01002_003e2_cv < 15 Then 'high'
    	WHEN cv.b01002_003e2_cv >= 15 and b01002_003e2_cv < 30 Then 'medium'
    	WHEN cv.b01002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_003e2_cv_cat,

    CASE
    	WHEN cv.b01002_003c_cv < 15 Then 'high'
    	WHEN cv.b01002_003c_cv >= 15 and b01002_003c_cv < 30 Then 'medium'
    	WHEN cv.b01002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_003c_cv_cat,

    CASE
    	WHEN cv.b01002_003p_cv < 15 Then 'high'
    	WHEN cv.b01002_003p_cv >= 15 and b01002_003p_cv < 30 Then 'medium'
    	WHEN cv.b01002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b01002_003p_cv_cat,
CASE
    WHEN ch.b01002_003sd > 1.645 THEN True
    WHEN ch.b01002_003sd <= 1.645 THEN False
    WHEN ch.b01002_003sd IS NULL AND cv.b01002_003c_cv = 0 AND ch.b01002_003cm = 0 THEN True
    ELSE NULL
    END AS b01002_003sd_tf

    FROM acs_b01002_cvs cv
    INNER JOIN acs_b01002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b02001_cvsummary;
    CREATE VIEW acs_b02001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b02001_001e1_cv < 15 Then 'high'
    	WHEN cv.b02001_001e1_cv >= 15 and b02001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_001e1_cv_cat,

    CASE
    	WHEN cv.b02001_001e2_cv < 15 Then 'high'
    	WHEN cv.b02001_001e2_cv >= 15 and b02001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_001e2_cv_cat,

    CASE
    	WHEN cv.b02001_001c_cv < 15 Then 'high'
    	WHEN cv.b02001_001c_cv >= 15 and b02001_001c_cv < 30 Then 'medium'
    	WHEN cv.b02001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_001c_cv_cat,

    CASE
    	WHEN cv.b02001_001p_cv < 15 Then 'high'
    	WHEN cv.b02001_001p_cv >= 15 and b02001_001p_cv < 30 Then 'medium'
    	WHEN cv.b02001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_001p_cv_cat,
CASE
    WHEN ch.b02001_001sd > 1.645 THEN True
    WHEN ch.b02001_001sd <= 1.645 THEN False
    WHEN ch.b02001_001sd IS NULL AND cv.b02001_001c_cv = 0 AND ch.b02001_001cm = 0 THEN True
    ELSE NULL
    END AS b02001_001sd_tf,

    CASE
    	WHEN cv.b02001_002e1_cv < 15 Then 'high'
    	WHEN cv.b02001_002e1_cv >= 15 and b02001_002e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_002e1_cv_cat,

    CASE
    	WHEN cv.b02001_002e2_cv < 15 Then 'high'
    	WHEN cv.b02001_002e2_cv >= 15 and b02001_002e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_002e2_cv_cat,

    CASE
    	WHEN cv.b02001_002c_cv < 15 Then 'high'
    	WHEN cv.b02001_002c_cv >= 15 and b02001_002c_cv < 30 Then 'medium'
    	WHEN cv.b02001_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_002c_cv_cat,

    CASE
    	WHEN cv.b02001_002p_cv < 15 Then 'high'
    	WHEN cv.b02001_002p_cv >= 15 and b02001_002p_cv < 30 Then 'medium'
    	WHEN cv.b02001_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_002p_cv_cat,
CASE
    WHEN ch.b02001_002sd > 1.645 THEN True
    WHEN ch.b02001_002sd <= 1.645 THEN False
    WHEN ch.b02001_002sd IS NULL AND cv.b02001_002c_cv = 0 AND ch.b02001_002cm = 0 THEN True
    ELSE NULL
    END AS b02001_002sd_tf,

    CASE
    	WHEN cv.b02001_003e1_cv < 15 Then 'high'
    	WHEN cv.b02001_003e1_cv >= 15 and b02001_003e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_003e1_cv_cat,

    CASE
    	WHEN cv.b02001_003e2_cv < 15 Then 'high'
    	WHEN cv.b02001_003e2_cv >= 15 and b02001_003e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_003e2_cv_cat,

    CASE
    	WHEN cv.b02001_003c_cv < 15 Then 'high'
    	WHEN cv.b02001_003c_cv >= 15 and b02001_003c_cv < 30 Then 'medium'
    	WHEN cv.b02001_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_003c_cv_cat,

    CASE
    	WHEN cv.b02001_003p_cv < 15 Then 'high'
    	WHEN cv.b02001_003p_cv >= 15 and b02001_003p_cv < 30 Then 'medium'
    	WHEN cv.b02001_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_003p_cv_cat,
CASE
    WHEN ch.b02001_003sd > 1.645 THEN True
    WHEN ch.b02001_003sd <= 1.645 THEN False
    WHEN ch.b02001_003sd IS NULL AND cv.b02001_003c_cv = 0 AND ch.b02001_003cm = 0 THEN True
    ELSE NULL
    END AS b02001_003sd_tf,

    CASE
    	WHEN cv.b02001_004e1_cv < 15 Then 'high'
    	WHEN cv.b02001_004e1_cv >= 15 and b02001_004e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_004e1_cv_cat,

    CASE
    	WHEN cv.b02001_004e2_cv < 15 Then 'high'
    	WHEN cv.b02001_004e2_cv >= 15 and b02001_004e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_004e2_cv_cat,

    CASE
    	WHEN cv.b02001_004c_cv < 15 Then 'high'
    	WHEN cv.b02001_004c_cv >= 15 and b02001_004c_cv < 30 Then 'medium'
    	WHEN cv.b02001_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_004c_cv_cat,

    CASE
    	WHEN cv.b02001_004p_cv < 15 Then 'high'
    	WHEN cv.b02001_004p_cv >= 15 and b02001_004p_cv < 30 Then 'medium'
    	WHEN cv.b02001_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_004p_cv_cat,
CASE
    WHEN ch.b02001_004sd > 1.645 THEN True
    WHEN ch.b02001_004sd <= 1.645 THEN False
    WHEN ch.b02001_004sd IS NULL AND cv.b02001_004c_cv = 0 AND ch.b02001_004cm = 0 THEN True
    ELSE NULL
    END AS b02001_004sd_tf,

    CASE
    	WHEN cv.b02001_005e1_cv < 15 Then 'high'
    	WHEN cv.b02001_005e1_cv >= 15 and b02001_005e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_005e1_cv_cat,

    CASE
    	WHEN cv.b02001_005e2_cv < 15 Then 'high'
    	WHEN cv.b02001_005e2_cv >= 15 and b02001_005e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_005e2_cv_cat,

    CASE
    	WHEN cv.b02001_005c_cv < 15 Then 'high'
    	WHEN cv.b02001_005c_cv >= 15 and b02001_005c_cv < 30 Then 'medium'
    	WHEN cv.b02001_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_005c_cv_cat,

    CASE
    	WHEN cv.b02001_005p_cv < 15 Then 'high'
    	WHEN cv.b02001_005p_cv >= 15 and b02001_005p_cv < 30 Then 'medium'
    	WHEN cv.b02001_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_005p_cv_cat,
CASE
    WHEN ch.b02001_005sd > 1.645 THEN True
    WHEN ch.b02001_005sd <= 1.645 THEN False
    WHEN ch.b02001_005sd IS NULL AND cv.b02001_005c_cv = 0 AND ch.b02001_005cm = 0 THEN True
    ELSE NULL
    END AS b02001_005sd_tf,

    CASE
    	WHEN cv.b02001_006e1_cv < 15 Then 'high'
    	WHEN cv.b02001_006e1_cv >= 15 and b02001_006e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_006e1_cv_cat,

    CASE
    	WHEN cv.b02001_006e2_cv < 15 Then 'high'
    	WHEN cv.b02001_006e2_cv >= 15 and b02001_006e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_006e2_cv_cat,

    CASE
    	WHEN cv.b02001_006c_cv < 15 Then 'high'
    	WHEN cv.b02001_006c_cv >= 15 and b02001_006c_cv < 30 Then 'medium'
    	WHEN cv.b02001_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_006c_cv_cat,

    CASE
    	WHEN cv.b02001_006p_cv < 15 Then 'high'
    	WHEN cv.b02001_006p_cv >= 15 and b02001_006p_cv < 30 Then 'medium'
    	WHEN cv.b02001_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_006p_cv_cat,
CASE
    WHEN ch.b02001_006sd > 1.645 THEN True
    WHEN ch.b02001_006sd <= 1.645 THEN False
    WHEN ch.b02001_006sd IS NULL AND cv.b02001_006c_cv = 0 AND ch.b02001_006cm = 0 THEN True
    ELSE NULL
    END AS b02001_006sd_tf,

    CASE
    	WHEN cv.b02001_007e1_cv < 15 Then 'high'
    	WHEN cv.b02001_007e1_cv >= 15 and b02001_007e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_007e1_cv_cat,

    CASE
    	WHEN cv.b02001_007e2_cv < 15 Then 'high'
    	WHEN cv.b02001_007e2_cv >= 15 and b02001_007e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_007e2_cv_cat,

    CASE
    	WHEN cv.b02001_007c_cv < 15 Then 'high'
    	WHEN cv.b02001_007c_cv >= 15 and b02001_007c_cv < 30 Then 'medium'
    	WHEN cv.b02001_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_007c_cv_cat,

    CASE
    	WHEN cv.b02001_007p_cv < 15 Then 'high'
    	WHEN cv.b02001_007p_cv >= 15 and b02001_007p_cv < 30 Then 'medium'
    	WHEN cv.b02001_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_007p_cv_cat,
CASE
    WHEN ch.b02001_007sd > 1.645 THEN True
    WHEN ch.b02001_007sd <= 1.645 THEN False
    WHEN ch.b02001_007sd IS NULL AND cv.b02001_007c_cv = 0 AND ch.b02001_007cm = 0 THEN True
    ELSE NULL
    END AS b02001_007sd_tf,

    CASE
    	WHEN cv.b02001_008e1_cv < 15 Then 'high'
    	WHEN cv.b02001_008e1_cv >= 15 and b02001_008e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_008e1_cv_cat,

    CASE
    	WHEN cv.b02001_008e2_cv < 15 Then 'high'
    	WHEN cv.b02001_008e2_cv >= 15 and b02001_008e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_008e2_cv_cat,

    CASE
    	WHEN cv.b02001_008c_cv < 15 Then 'high'
    	WHEN cv.b02001_008c_cv >= 15 and b02001_008c_cv < 30 Then 'medium'
    	WHEN cv.b02001_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_008c_cv_cat,

    CASE
    	WHEN cv.b02001_008p_cv < 15 Then 'high'
    	WHEN cv.b02001_008p_cv >= 15 and b02001_008p_cv < 30 Then 'medium'
    	WHEN cv.b02001_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_008p_cv_cat,
CASE
    WHEN ch.b02001_008sd > 1.645 THEN True
    WHEN ch.b02001_008sd <= 1.645 THEN False
    WHEN ch.b02001_008sd IS NULL AND cv.b02001_008c_cv = 0 AND ch.b02001_008cm = 0 THEN True
    ELSE NULL
    END AS b02001_008sd_tf,

    CASE
    	WHEN cv.b02001_009e1_cv < 15 Then 'high'
    	WHEN cv.b02001_009e1_cv >= 15 and b02001_009e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_009e1_cv_cat,

    CASE
    	WHEN cv.b02001_009e2_cv < 15 Then 'high'
    	WHEN cv.b02001_009e2_cv >= 15 and b02001_009e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_009e2_cv_cat,

    CASE
    	WHEN cv.b02001_009c_cv < 15 Then 'high'
    	WHEN cv.b02001_009c_cv >= 15 and b02001_009c_cv < 30 Then 'medium'
    	WHEN cv.b02001_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_009c_cv_cat,

    CASE
    	WHEN cv.b02001_009p_cv < 15 Then 'high'
    	WHEN cv.b02001_009p_cv >= 15 and b02001_009p_cv < 30 Then 'medium'
    	WHEN cv.b02001_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_009p_cv_cat,
CASE
    WHEN ch.b02001_009sd > 1.645 THEN True
    WHEN ch.b02001_009sd <= 1.645 THEN False
    WHEN ch.b02001_009sd IS NULL AND cv.b02001_009c_cv = 0 AND ch.b02001_009cm = 0 THEN True
    ELSE NULL
    END AS b02001_009sd_tf,

    CASE
    	WHEN cv.b02001_010e1_cv < 15 Then 'high'
    	WHEN cv.b02001_010e1_cv >= 15 and b02001_010e1_cv < 30 Then 'medium'
    	WHEN cv.b02001_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_010e1_cv_cat,

    CASE
    	WHEN cv.b02001_010e2_cv < 15 Then 'high'
    	WHEN cv.b02001_010e2_cv >= 15 and b02001_010e2_cv < 30 Then 'medium'
    	WHEN cv.b02001_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_010e2_cv_cat,

    CASE
    	WHEN cv.b02001_010c_cv < 15 Then 'high'
    	WHEN cv.b02001_010c_cv >= 15 and b02001_010c_cv < 30 Then 'medium'
    	WHEN cv.b02001_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_010c_cv_cat,

    CASE
    	WHEN cv.b02001_010p_cv < 15 Then 'high'
    	WHEN cv.b02001_010p_cv >= 15 and b02001_010p_cv < 30 Then 'medium'
    	WHEN cv.b02001_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b02001_010p_cv_cat,
CASE
    WHEN ch.b02001_010sd > 1.645 THEN True
    WHEN ch.b02001_010sd <= 1.645 THEN False
    WHEN ch.b02001_010sd IS NULL AND cv.b02001_010c_cv = 0 AND ch.b02001_010cm = 0 THEN True
    ELSE NULL
    END AS b02001_010sd_tf

    FROM acs_b02001_cvs cv
    INNER JOIN acs_b02001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b03002_cvsummary;
    CREATE VIEW acs_b03002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b03002_001e1_cv < 15 Then 'high'
    	WHEN cv.b03002_001e1_cv >= 15 and b03002_001e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_001e1_cv_cat,

    CASE
    	WHEN cv.b03002_001e2_cv < 15 Then 'high'
    	WHEN cv.b03002_001e2_cv >= 15 and b03002_001e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_001e2_cv_cat,

    CASE
    	WHEN cv.b03002_001c_cv < 15 Then 'high'
    	WHEN cv.b03002_001c_cv >= 15 and b03002_001c_cv < 30 Then 'medium'
    	WHEN cv.b03002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_001c_cv_cat,

    CASE
    	WHEN cv.b03002_001p_cv < 15 Then 'high'
    	WHEN cv.b03002_001p_cv >= 15 and b03002_001p_cv < 30 Then 'medium'
    	WHEN cv.b03002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_001p_cv_cat,
CASE
    WHEN ch.b03002_001sd > 1.645 THEN True
    WHEN ch.b03002_001sd <= 1.645 THEN False
    WHEN ch.b03002_001sd IS NULL AND cv.b03002_001c_cv = 0 AND ch.b03002_001cm = 0 THEN True
    ELSE NULL
    END AS b03002_001sd_tf,

    CASE
    	WHEN cv.b03002_002e1_cv < 15 Then 'high'
    	WHEN cv.b03002_002e1_cv >= 15 and b03002_002e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_002e1_cv_cat,

    CASE
    	WHEN cv.b03002_002e2_cv < 15 Then 'high'
    	WHEN cv.b03002_002e2_cv >= 15 and b03002_002e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_002e2_cv_cat,

    CASE
    	WHEN cv.b03002_002c_cv < 15 Then 'high'
    	WHEN cv.b03002_002c_cv >= 15 and b03002_002c_cv < 30 Then 'medium'
    	WHEN cv.b03002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_002c_cv_cat,

    CASE
    	WHEN cv.b03002_002p_cv < 15 Then 'high'
    	WHEN cv.b03002_002p_cv >= 15 and b03002_002p_cv < 30 Then 'medium'
    	WHEN cv.b03002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_002p_cv_cat,
CASE
    WHEN ch.b03002_002sd > 1.645 THEN True
    WHEN ch.b03002_002sd <= 1.645 THEN False
    WHEN ch.b03002_002sd IS NULL AND cv.b03002_002c_cv = 0 AND ch.b03002_002cm = 0 THEN True
    ELSE NULL
    END AS b03002_002sd_tf,

    CASE
    	WHEN cv.b03002_003e1_cv < 15 Then 'high'
    	WHEN cv.b03002_003e1_cv >= 15 and b03002_003e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_003e1_cv_cat,

    CASE
    	WHEN cv.b03002_003e2_cv < 15 Then 'high'
    	WHEN cv.b03002_003e2_cv >= 15 and b03002_003e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_003e2_cv_cat,

    CASE
    	WHEN cv.b03002_003c_cv < 15 Then 'high'
    	WHEN cv.b03002_003c_cv >= 15 and b03002_003c_cv < 30 Then 'medium'
    	WHEN cv.b03002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_003c_cv_cat,

    CASE
    	WHEN cv.b03002_003p_cv < 15 Then 'high'
    	WHEN cv.b03002_003p_cv >= 15 and b03002_003p_cv < 30 Then 'medium'
    	WHEN cv.b03002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_003p_cv_cat,
CASE
    WHEN ch.b03002_003sd > 1.645 THEN True
    WHEN ch.b03002_003sd <= 1.645 THEN False
    WHEN ch.b03002_003sd IS NULL AND cv.b03002_003c_cv = 0 AND ch.b03002_003cm = 0 THEN True
    ELSE NULL
    END AS b03002_003sd_tf,

    CASE
    	WHEN cv.b03002_004e1_cv < 15 Then 'high'
    	WHEN cv.b03002_004e1_cv >= 15 and b03002_004e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_004e1_cv_cat,

    CASE
    	WHEN cv.b03002_004e2_cv < 15 Then 'high'
    	WHEN cv.b03002_004e2_cv >= 15 and b03002_004e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_004e2_cv_cat,

    CASE
    	WHEN cv.b03002_004c_cv < 15 Then 'high'
    	WHEN cv.b03002_004c_cv >= 15 and b03002_004c_cv < 30 Then 'medium'
    	WHEN cv.b03002_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_004c_cv_cat,

    CASE
    	WHEN cv.b03002_004p_cv < 15 Then 'high'
    	WHEN cv.b03002_004p_cv >= 15 and b03002_004p_cv < 30 Then 'medium'
    	WHEN cv.b03002_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_004p_cv_cat,
CASE
    WHEN ch.b03002_004sd > 1.645 THEN True
    WHEN ch.b03002_004sd <= 1.645 THEN False
    WHEN ch.b03002_004sd IS NULL AND cv.b03002_004c_cv = 0 AND ch.b03002_004cm = 0 THEN True
    ELSE NULL
    END AS b03002_004sd_tf,

    CASE
    	WHEN cv.b03002_005e1_cv < 15 Then 'high'
    	WHEN cv.b03002_005e1_cv >= 15 and b03002_005e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_005e1_cv_cat,

    CASE
    	WHEN cv.b03002_005e2_cv < 15 Then 'high'
    	WHEN cv.b03002_005e2_cv >= 15 and b03002_005e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_005e2_cv_cat,

    CASE
    	WHEN cv.b03002_005c_cv < 15 Then 'high'
    	WHEN cv.b03002_005c_cv >= 15 and b03002_005c_cv < 30 Then 'medium'
    	WHEN cv.b03002_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_005c_cv_cat,

    CASE
    	WHEN cv.b03002_005p_cv < 15 Then 'high'
    	WHEN cv.b03002_005p_cv >= 15 and b03002_005p_cv < 30 Then 'medium'
    	WHEN cv.b03002_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_005p_cv_cat,
CASE
    WHEN ch.b03002_005sd > 1.645 THEN True
    WHEN ch.b03002_005sd <= 1.645 THEN False
    WHEN ch.b03002_005sd IS NULL AND cv.b03002_005c_cv = 0 AND ch.b03002_005cm = 0 THEN True
    ELSE NULL
    END AS b03002_005sd_tf,

    CASE
    	WHEN cv.b03002_006e1_cv < 15 Then 'high'
    	WHEN cv.b03002_006e1_cv >= 15 and b03002_006e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_006e1_cv_cat,

    CASE
    	WHEN cv.b03002_006e2_cv < 15 Then 'high'
    	WHEN cv.b03002_006e2_cv >= 15 and b03002_006e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_006e2_cv_cat,

    CASE
    	WHEN cv.b03002_006c_cv < 15 Then 'high'
    	WHEN cv.b03002_006c_cv >= 15 and b03002_006c_cv < 30 Then 'medium'
    	WHEN cv.b03002_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_006c_cv_cat,

    CASE
    	WHEN cv.b03002_006p_cv < 15 Then 'high'
    	WHEN cv.b03002_006p_cv >= 15 and b03002_006p_cv < 30 Then 'medium'
    	WHEN cv.b03002_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_006p_cv_cat,
CASE
    WHEN ch.b03002_006sd > 1.645 THEN True
    WHEN ch.b03002_006sd <= 1.645 THEN False
    WHEN ch.b03002_006sd IS NULL AND cv.b03002_006c_cv = 0 AND ch.b03002_006cm = 0 THEN True
    ELSE NULL
    END AS b03002_006sd_tf,

    CASE
    	WHEN cv.b03002_007e1_cv < 15 Then 'high'
    	WHEN cv.b03002_007e1_cv >= 15 and b03002_007e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_007e1_cv_cat,

    CASE
    	WHEN cv.b03002_007e2_cv < 15 Then 'high'
    	WHEN cv.b03002_007e2_cv >= 15 and b03002_007e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_007e2_cv_cat,

    CASE
    	WHEN cv.b03002_007c_cv < 15 Then 'high'
    	WHEN cv.b03002_007c_cv >= 15 and b03002_007c_cv < 30 Then 'medium'
    	WHEN cv.b03002_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_007c_cv_cat,

    CASE
    	WHEN cv.b03002_007p_cv < 15 Then 'high'
    	WHEN cv.b03002_007p_cv >= 15 and b03002_007p_cv < 30 Then 'medium'
    	WHEN cv.b03002_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_007p_cv_cat,
CASE
    WHEN ch.b03002_007sd > 1.645 THEN True
    WHEN ch.b03002_007sd <= 1.645 THEN False
    WHEN ch.b03002_007sd IS NULL AND cv.b03002_007c_cv = 0 AND ch.b03002_007cm = 0 THEN True
    ELSE NULL
    END AS b03002_007sd_tf,

    CASE
    	WHEN cv.b03002_008e1_cv < 15 Then 'high'
    	WHEN cv.b03002_008e1_cv >= 15 and b03002_008e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_008e1_cv_cat,

    CASE
    	WHEN cv.b03002_008e2_cv < 15 Then 'high'
    	WHEN cv.b03002_008e2_cv >= 15 and b03002_008e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_008e2_cv_cat,

    CASE
    	WHEN cv.b03002_008c_cv < 15 Then 'high'
    	WHEN cv.b03002_008c_cv >= 15 and b03002_008c_cv < 30 Then 'medium'
    	WHEN cv.b03002_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_008c_cv_cat,

    CASE
    	WHEN cv.b03002_008p_cv < 15 Then 'high'
    	WHEN cv.b03002_008p_cv >= 15 and b03002_008p_cv < 30 Then 'medium'
    	WHEN cv.b03002_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_008p_cv_cat,
CASE
    WHEN ch.b03002_008sd > 1.645 THEN True
    WHEN ch.b03002_008sd <= 1.645 THEN False
    WHEN ch.b03002_008sd IS NULL AND cv.b03002_008c_cv = 0 AND ch.b03002_008cm = 0 THEN True
    ELSE NULL
    END AS b03002_008sd_tf,

    CASE
    	WHEN cv.b03002_009e1_cv < 15 Then 'high'
    	WHEN cv.b03002_009e1_cv >= 15 and b03002_009e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_009e1_cv_cat,

    CASE
    	WHEN cv.b03002_009e2_cv < 15 Then 'high'
    	WHEN cv.b03002_009e2_cv >= 15 and b03002_009e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_009e2_cv_cat,

    CASE
    	WHEN cv.b03002_009c_cv < 15 Then 'high'
    	WHEN cv.b03002_009c_cv >= 15 and b03002_009c_cv < 30 Then 'medium'
    	WHEN cv.b03002_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_009c_cv_cat,

    CASE
    	WHEN cv.b03002_009p_cv < 15 Then 'high'
    	WHEN cv.b03002_009p_cv >= 15 and b03002_009p_cv < 30 Then 'medium'
    	WHEN cv.b03002_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_009p_cv_cat,
CASE
    WHEN ch.b03002_009sd > 1.645 THEN True
    WHEN ch.b03002_009sd <= 1.645 THEN False
    WHEN ch.b03002_009sd IS NULL AND cv.b03002_009c_cv = 0 AND ch.b03002_009cm = 0 THEN True
    ELSE NULL
    END AS b03002_009sd_tf,

    CASE
    	WHEN cv.b03002_010e1_cv < 15 Then 'high'
    	WHEN cv.b03002_010e1_cv >= 15 and b03002_010e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_010e1_cv_cat,

    CASE
    	WHEN cv.b03002_010e2_cv < 15 Then 'high'
    	WHEN cv.b03002_010e2_cv >= 15 and b03002_010e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_010e2_cv_cat,

    CASE
    	WHEN cv.b03002_010c_cv < 15 Then 'high'
    	WHEN cv.b03002_010c_cv >= 15 and b03002_010c_cv < 30 Then 'medium'
    	WHEN cv.b03002_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_010c_cv_cat,

    CASE
    	WHEN cv.b03002_010p_cv < 15 Then 'high'
    	WHEN cv.b03002_010p_cv >= 15 and b03002_010p_cv < 30 Then 'medium'
    	WHEN cv.b03002_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_010p_cv_cat,
CASE
    WHEN ch.b03002_010sd > 1.645 THEN True
    WHEN ch.b03002_010sd <= 1.645 THEN False
    WHEN ch.b03002_010sd IS NULL AND cv.b03002_010c_cv = 0 AND ch.b03002_010cm = 0 THEN True
    ELSE NULL
    END AS b03002_010sd_tf,

    CASE
    	WHEN cv.b03002_011e1_cv < 15 Then 'high'
    	WHEN cv.b03002_011e1_cv >= 15 and b03002_011e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_011e1_cv_cat,

    CASE
    	WHEN cv.b03002_011e2_cv < 15 Then 'high'
    	WHEN cv.b03002_011e2_cv >= 15 and b03002_011e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_011e2_cv_cat,

    CASE
    	WHEN cv.b03002_011c_cv < 15 Then 'high'
    	WHEN cv.b03002_011c_cv >= 15 and b03002_011c_cv < 30 Then 'medium'
    	WHEN cv.b03002_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_011c_cv_cat,

    CASE
    	WHEN cv.b03002_011p_cv < 15 Then 'high'
    	WHEN cv.b03002_011p_cv >= 15 and b03002_011p_cv < 30 Then 'medium'
    	WHEN cv.b03002_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_011p_cv_cat,
CASE
    WHEN ch.b03002_011sd > 1.645 THEN True
    WHEN ch.b03002_011sd <= 1.645 THEN False
    WHEN ch.b03002_011sd IS NULL AND cv.b03002_011c_cv = 0 AND ch.b03002_011cm = 0 THEN True
    ELSE NULL
    END AS b03002_011sd_tf,

    CASE
    	WHEN cv.b03002_012e1_cv < 15 Then 'high'
    	WHEN cv.b03002_012e1_cv >= 15 and b03002_012e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_012e1_cv_cat,

    CASE
    	WHEN cv.b03002_012e2_cv < 15 Then 'high'
    	WHEN cv.b03002_012e2_cv >= 15 and b03002_012e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_012e2_cv_cat,

    CASE
    	WHEN cv.b03002_012c_cv < 15 Then 'high'
    	WHEN cv.b03002_012c_cv >= 15 and b03002_012c_cv < 30 Then 'medium'
    	WHEN cv.b03002_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_012c_cv_cat,

    CASE
    	WHEN cv.b03002_012p_cv < 15 Then 'high'
    	WHEN cv.b03002_012p_cv >= 15 and b03002_012p_cv < 30 Then 'medium'
    	WHEN cv.b03002_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_012p_cv_cat,
CASE
    WHEN ch.b03002_012sd > 1.645 THEN True
    WHEN ch.b03002_012sd <= 1.645 THEN False
    WHEN ch.b03002_012sd IS NULL AND cv.b03002_012c_cv = 0 AND ch.b03002_012cm = 0 THEN True
    ELSE NULL
    END AS b03002_012sd_tf,

    CASE
    	WHEN cv.b03002_013e1_cv < 15 Then 'high'
    	WHEN cv.b03002_013e1_cv >= 15 and b03002_013e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_013e1_cv_cat,

    CASE
    	WHEN cv.b03002_013e2_cv < 15 Then 'high'
    	WHEN cv.b03002_013e2_cv >= 15 and b03002_013e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_013e2_cv_cat,

    CASE
    	WHEN cv.b03002_013c_cv < 15 Then 'high'
    	WHEN cv.b03002_013c_cv >= 15 and b03002_013c_cv < 30 Then 'medium'
    	WHEN cv.b03002_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_013c_cv_cat,

    CASE
    	WHEN cv.b03002_013p_cv < 15 Then 'high'
    	WHEN cv.b03002_013p_cv >= 15 and b03002_013p_cv < 30 Then 'medium'
    	WHEN cv.b03002_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_013p_cv_cat,
CASE
    WHEN ch.b03002_013sd > 1.645 THEN True
    WHEN ch.b03002_013sd <= 1.645 THEN False
    WHEN ch.b03002_013sd IS NULL AND cv.b03002_013c_cv = 0 AND ch.b03002_013cm = 0 THEN True
    ELSE NULL
    END AS b03002_013sd_tf,

    CASE
    	WHEN cv.b03002_014e1_cv < 15 Then 'high'
    	WHEN cv.b03002_014e1_cv >= 15 and b03002_014e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_014e1_cv_cat,

    CASE
    	WHEN cv.b03002_014e2_cv < 15 Then 'high'
    	WHEN cv.b03002_014e2_cv >= 15 and b03002_014e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_014e2_cv_cat,

    CASE
    	WHEN cv.b03002_014c_cv < 15 Then 'high'
    	WHEN cv.b03002_014c_cv >= 15 and b03002_014c_cv < 30 Then 'medium'
    	WHEN cv.b03002_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_014c_cv_cat,

    CASE
    	WHEN cv.b03002_014p_cv < 15 Then 'high'
    	WHEN cv.b03002_014p_cv >= 15 and b03002_014p_cv < 30 Then 'medium'
    	WHEN cv.b03002_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_014p_cv_cat,
CASE
    WHEN ch.b03002_014sd > 1.645 THEN True
    WHEN ch.b03002_014sd <= 1.645 THEN False
    WHEN ch.b03002_014sd IS NULL AND cv.b03002_014c_cv = 0 AND ch.b03002_014cm = 0 THEN True
    ELSE NULL
    END AS b03002_014sd_tf,

    CASE
    	WHEN cv.b03002_015e1_cv < 15 Then 'high'
    	WHEN cv.b03002_015e1_cv >= 15 and b03002_015e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_015e1_cv_cat,

    CASE
    	WHEN cv.b03002_015e2_cv < 15 Then 'high'
    	WHEN cv.b03002_015e2_cv >= 15 and b03002_015e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_015e2_cv_cat,

    CASE
    	WHEN cv.b03002_015c_cv < 15 Then 'high'
    	WHEN cv.b03002_015c_cv >= 15 and b03002_015c_cv < 30 Then 'medium'
    	WHEN cv.b03002_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_015c_cv_cat,

    CASE
    	WHEN cv.b03002_015p_cv < 15 Then 'high'
    	WHEN cv.b03002_015p_cv >= 15 and b03002_015p_cv < 30 Then 'medium'
    	WHEN cv.b03002_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_015p_cv_cat,
CASE
    WHEN ch.b03002_015sd > 1.645 THEN True
    WHEN ch.b03002_015sd <= 1.645 THEN False
    WHEN ch.b03002_015sd IS NULL AND cv.b03002_015c_cv = 0 AND ch.b03002_015cm = 0 THEN True
    ELSE NULL
    END AS b03002_015sd_tf,

    CASE
    	WHEN cv.b03002_016e1_cv < 15 Then 'high'
    	WHEN cv.b03002_016e1_cv >= 15 and b03002_016e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_016e1_cv_cat,

    CASE
    	WHEN cv.b03002_016e2_cv < 15 Then 'high'
    	WHEN cv.b03002_016e2_cv >= 15 and b03002_016e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_016e2_cv_cat,

    CASE
    	WHEN cv.b03002_016c_cv < 15 Then 'high'
    	WHEN cv.b03002_016c_cv >= 15 and b03002_016c_cv < 30 Then 'medium'
    	WHEN cv.b03002_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_016c_cv_cat,

    CASE
    	WHEN cv.b03002_016p_cv < 15 Then 'high'
    	WHEN cv.b03002_016p_cv >= 15 and b03002_016p_cv < 30 Then 'medium'
    	WHEN cv.b03002_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_016p_cv_cat,
CASE
    WHEN ch.b03002_016sd > 1.645 THEN True
    WHEN ch.b03002_016sd <= 1.645 THEN False
    WHEN ch.b03002_016sd IS NULL AND cv.b03002_016c_cv = 0 AND ch.b03002_016cm = 0 THEN True
    ELSE NULL
    END AS b03002_016sd_tf,

    CASE
    	WHEN cv.b03002_017e1_cv < 15 Then 'high'
    	WHEN cv.b03002_017e1_cv >= 15 and b03002_017e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_017e1_cv_cat,

    CASE
    	WHEN cv.b03002_017e2_cv < 15 Then 'high'
    	WHEN cv.b03002_017e2_cv >= 15 and b03002_017e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_017e2_cv_cat,

    CASE
    	WHEN cv.b03002_017c_cv < 15 Then 'high'
    	WHEN cv.b03002_017c_cv >= 15 and b03002_017c_cv < 30 Then 'medium'
    	WHEN cv.b03002_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_017c_cv_cat,

    CASE
    	WHEN cv.b03002_017p_cv < 15 Then 'high'
    	WHEN cv.b03002_017p_cv >= 15 and b03002_017p_cv < 30 Then 'medium'
    	WHEN cv.b03002_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_017p_cv_cat,
CASE
    WHEN ch.b03002_017sd > 1.645 THEN True
    WHEN ch.b03002_017sd <= 1.645 THEN False
    WHEN ch.b03002_017sd IS NULL AND cv.b03002_017c_cv = 0 AND ch.b03002_017cm = 0 THEN True
    ELSE NULL
    END AS b03002_017sd_tf,

    CASE
    	WHEN cv.b03002_018e1_cv < 15 Then 'high'
    	WHEN cv.b03002_018e1_cv >= 15 and b03002_018e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_018e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_018e1_cv_cat,

    CASE
    	WHEN cv.b03002_018e2_cv < 15 Then 'high'
    	WHEN cv.b03002_018e2_cv >= 15 and b03002_018e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_018e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_018e2_cv_cat,

    CASE
    	WHEN cv.b03002_018c_cv < 15 Then 'high'
    	WHEN cv.b03002_018c_cv >= 15 and b03002_018c_cv < 30 Then 'medium'
    	WHEN cv.b03002_018c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_018c_cv_cat,

    CASE
    	WHEN cv.b03002_018p_cv < 15 Then 'high'
    	WHEN cv.b03002_018p_cv >= 15 and b03002_018p_cv < 30 Then 'medium'
    	WHEN cv.b03002_018p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_018p_cv_cat,
CASE
    WHEN ch.b03002_018sd > 1.645 THEN True
    WHEN ch.b03002_018sd <= 1.645 THEN False
    WHEN ch.b03002_018sd IS NULL AND cv.b03002_018c_cv = 0 AND ch.b03002_018cm = 0 THEN True
    ELSE NULL
    END AS b03002_018sd_tf,

    CASE
    	WHEN cv.b03002_019e1_cv < 15 Then 'high'
    	WHEN cv.b03002_019e1_cv >= 15 and b03002_019e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_019e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_019e1_cv_cat,

    CASE
    	WHEN cv.b03002_019e2_cv < 15 Then 'high'
    	WHEN cv.b03002_019e2_cv >= 15 and b03002_019e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_019e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_019e2_cv_cat,

    CASE
    	WHEN cv.b03002_019c_cv < 15 Then 'high'
    	WHEN cv.b03002_019c_cv >= 15 and b03002_019c_cv < 30 Then 'medium'
    	WHEN cv.b03002_019c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_019c_cv_cat,

    CASE
    	WHEN cv.b03002_019p_cv < 15 Then 'high'
    	WHEN cv.b03002_019p_cv >= 15 and b03002_019p_cv < 30 Then 'medium'
    	WHEN cv.b03002_019p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_019p_cv_cat,
CASE
    WHEN ch.b03002_019sd > 1.645 THEN True
    WHEN ch.b03002_019sd <= 1.645 THEN False
    WHEN ch.b03002_019sd IS NULL AND cv.b03002_019c_cv = 0 AND ch.b03002_019cm = 0 THEN True
    ELSE NULL
    END AS b03002_019sd_tf,

    CASE
    	WHEN cv.b03002_020e1_cv < 15 Then 'high'
    	WHEN cv.b03002_020e1_cv >= 15 and b03002_020e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_020e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_020e1_cv_cat,

    CASE
    	WHEN cv.b03002_020e2_cv < 15 Then 'high'
    	WHEN cv.b03002_020e2_cv >= 15 and b03002_020e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_020e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_020e2_cv_cat,

    CASE
    	WHEN cv.b03002_020c_cv < 15 Then 'high'
    	WHEN cv.b03002_020c_cv >= 15 and b03002_020c_cv < 30 Then 'medium'
    	WHEN cv.b03002_020c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_020c_cv_cat,

    CASE
    	WHEN cv.b03002_020p_cv < 15 Then 'high'
    	WHEN cv.b03002_020p_cv >= 15 and b03002_020p_cv < 30 Then 'medium'
    	WHEN cv.b03002_020p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_020p_cv_cat,
CASE
    WHEN ch.b03002_020sd > 1.645 THEN True
    WHEN ch.b03002_020sd <= 1.645 THEN False
    WHEN ch.b03002_020sd IS NULL AND cv.b03002_020c_cv = 0 AND ch.b03002_020cm = 0 THEN True
    ELSE NULL
    END AS b03002_020sd_tf,

    CASE
    	WHEN cv.b03002_021e1_cv < 15 Then 'high'
    	WHEN cv.b03002_021e1_cv >= 15 and b03002_021e1_cv < 30 Then 'medium'
    	WHEN cv.b03002_021e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_021e1_cv_cat,

    CASE
    	WHEN cv.b03002_021e2_cv < 15 Then 'high'
    	WHEN cv.b03002_021e2_cv >= 15 and b03002_021e2_cv < 30 Then 'medium'
    	WHEN cv.b03002_021e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_021e2_cv_cat,

    CASE
    	WHEN cv.b03002_021c_cv < 15 Then 'high'
    	WHEN cv.b03002_021c_cv >= 15 and b03002_021c_cv < 30 Then 'medium'
    	WHEN cv.b03002_021c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_021c_cv_cat,

    CASE
    	WHEN cv.b03002_021p_cv < 15 Then 'high'
    	WHEN cv.b03002_021p_cv >= 15 and b03002_021p_cv < 30 Then 'medium'
    	WHEN cv.b03002_021p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b03002_021p_cv_cat,
CASE
    WHEN ch.b03002_021sd > 1.645 THEN True
    WHEN ch.b03002_021sd <= 1.645 THEN False
    WHEN ch.b03002_021sd IS NULL AND cv.b03002_021c_cv = 0 AND ch.b03002_021cm = 0 THEN True
    ELSE NULL
    END AS b03002_021sd_tf

    FROM acs_b03002_cvs cv
    INNER JOIN acs_b03002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b05002_cvsummary;
    CREATE VIEW acs_b05002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b05002_001e1_cv < 15 Then 'high'
    	WHEN cv.b05002_001e1_cv >= 15 and b05002_001e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_001e1_cv_cat,

    CASE
    	WHEN cv.b05002_001e2_cv < 15 Then 'high'
    	WHEN cv.b05002_001e2_cv >= 15 and b05002_001e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_001e2_cv_cat,

    CASE
    	WHEN cv.b05002_001c_cv < 15 Then 'high'
    	WHEN cv.b05002_001c_cv >= 15 and b05002_001c_cv < 30 Then 'medium'
    	WHEN cv.b05002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_001c_cv_cat,

    CASE
    	WHEN cv.b05002_001p_cv < 15 Then 'high'
    	WHEN cv.b05002_001p_cv >= 15 and b05002_001p_cv < 30 Then 'medium'
    	WHEN cv.b05002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_001p_cv_cat,
CASE
    WHEN ch.b05002_001sd > 1.645 THEN True
    WHEN ch.b05002_001sd <= 1.645 THEN False
    WHEN ch.b05002_001sd IS NULL AND cv.b05002_001c_cv = 0 AND ch.b05002_001cm = 0 THEN True
    ELSE NULL
    END AS b05002_001sd_tf,

    CASE
    	WHEN cv.b05002_002e1_cv < 15 Then 'high'
    	WHEN cv.b05002_002e1_cv >= 15 and b05002_002e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_002e1_cv_cat,

    CASE
    	WHEN cv.b05002_002e2_cv < 15 Then 'high'
    	WHEN cv.b05002_002e2_cv >= 15 and b05002_002e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_002e2_cv_cat,

    CASE
    	WHEN cv.b05002_002c_cv < 15 Then 'high'
    	WHEN cv.b05002_002c_cv >= 15 and b05002_002c_cv < 30 Then 'medium'
    	WHEN cv.b05002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_002c_cv_cat,

    CASE
    	WHEN cv.b05002_002p_cv < 15 Then 'high'
    	WHEN cv.b05002_002p_cv >= 15 and b05002_002p_cv < 30 Then 'medium'
    	WHEN cv.b05002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_002p_cv_cat,
CASE
    WHEN ch.b05002_002sd > 1.645 THEN True
    WHEN ch.b05002_002sd <= 1.645 THEN False
    WHEN ch.b05002_002sd IS NULL AND cv.b05002_002c_cv = 0 AND ch.b05002_002cm = 0 THEN True
    ELSE NULL
    END AS b05002_002sd_tf,

    CASE
    	WHEN cv.b05002_003e1_cv < 15 Then 'high'
    	WHEN cv.b05002_003e1_cv >= 15 and b05002_003e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_003e1_cv_cat,

    CASE
    	WHEN cv.b05002_003e2_cv < 15 Then 'high'
    	WHEN cv.b05002_003e2_cv >= 15 and b05002_003e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_003e2_cv_cat,

    CASE
    	WHEN cv.b05002_003c_cv < 15 Then 'high'
    	WHEN cv.b05002_003c_cv >= 15 and b05002_003c_cv < 30 Then 'medium'
    	WHEN cv.b05002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_003c_cv_cat,

    CASE
    	WHEN cv.b05002_003p_cv < 15 Then 'high'
    	WHEN cv.b05002_003p_cv >= 15 and b05002_003p_cv < 30 Then 'medium'
    	WHEN cv.b05002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_003p_cv_cat,
CASE
    WHEN ch.b05002_003sd > 1.645 THEN True
    WHEN ch.b05002_003sd <= 1.645 THEN False
    WHEN ch.b05002_003sd IS NULL AND cv.b05002_003c_cv = 0 AND ch.b05002_003cm = 0 THEN True
    ELSE NULL
    END AS b05002_003sd_tf,

    CASE
    	WHEN cv.b05002_004e1_cv < 15 Then 'high'
    	WHEN cv.b05002_004e1_cv >= 15 and b05002_004e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_004e1_cv_cat,

    CASE
    	WHEN cv.b05002_004e2_cv < 15 Then 'high'
    	WHEN cv.b05002_004e2_cv >= 15 and b05002_004e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_004e2_cv_cat,

    CASE
    	WHEN cv.b05002_004c_cv < 15 Then 'high'
    	WHEN cv.b05002_004c_cv >= 15 and b05002_004c_cv < 30 Then 'medium'
    	WHEN cv.b05002_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_004c_cv_cat,

    CASE
    	WHEN cv.b05002_004p_cv < 15 Then 'high'
    	WHEN cv.b05002_004p_cv >= 15 and b05002_004p_cv < 30 Then 'medium'
    	WHEN cv.b05002_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_004p_cv_cat,
CASE
    WHEN ch.b05002_004sd > 1.645 THEN True
    WHEN ch.b05002_004sd <= 1.645 THEN False
    WHEN ch.b05002_004sd IS NULL AND cv.b05002_004c_cv = 0 AND ch.b05002_004cm = 0 THEN True
    ELSE NULL
    END AS b05002_004sd_tf,

    CASE
    	WHEN cv.b05002_005e1_cv < 15 Then 'high'
    	WHEN cv.b05002_005e1_cv >= 15 and b05002_005e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_005e1_cv_cat,

    CASE
    	WHEN cv.b05002_005e2_cv < 15 Then 'high'
    	WHEN cv.b05002_005e2_cv >= 15 and b05002_005e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_005e2_cv_cat,

    CASE
    	WHEN cv.b05002_005c_cv < 15 Then 'high'
    	WHEN cv.b05002_005c_cv >= 15 and b05002_005c_cv < 30 Then 'medium'
    	WHEN cv.b05002_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_005c_cv_cat,

    CASE
    	WHEN cv.b05002_005p_cv < 15 Then 'high'
    	WHEN cv.b05002_005p_cv >= 15 and b05002_005p_cv < 30 Then 'medium'
    	WHEN cv.b05002_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_005p_cv_cat,
CASE
    WHEN ch.b05002_005sd > 1.645 THEN True
    WHEN ch.b05002_005sd <= 1.645 THEN False
    WHEN ch.b05002_005sd IS NULL AND cv.b05002_005c_cv = 0 AND ch.b05002_005cm = 0 THEN True
    ELSE NULL
    END AS b05002_005sd_tf,

    CASE
    	WHEN cv.b05002_006e1_cv < 15 Then 'high'
    	WHEN cv.b05002_006e1_cv >= 15 and b05002_006e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_006e1_cv_cat,

    CASE
    	WHEN cv.b05002_006e2_cv < 15 Then 'high'
    	WHEN cv.b05002_006e2_cv >= 15 and b05002_006e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_006e2_cv_cat,

    CASE
    	WHEN cv.b05002_006c_cv < 15 Then 'high'
    	WHEN cv.b05002_006c_cv >= 15 and b05002_006c_cv < 30 Then 'medium'
    	WHEN cv.b05002_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_006c_cv_cat,

    CASE
    	WHEN cv.b05002_006p_cv < 15 Then 'high'
    	WHEN cv.b05002_006p_cv >= 15 and b05002_006p_cv < 30 Then 'medium'
    	WHEN cv.b05002_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_006p_cv_cat,
CASE
    WHEN ch.b05002_006sd > 1.645 THEN True
    WHEN ch.b05002_006sd <= 1.645 THEN False
    WHEN ch.b05002_006sd IS NULL AND cv.b05002_006c_cv = 0 AND ch.b05002_006cm = 0 THEN True
    ELSE NULL
    END AS b05002_006sd_tf,

    CASE
    	WHEN cv.b05002_007e1_cv < 15 Then 'high'
    	WHEN cv.b05002_007e1_cv >= 15 and b05002_007e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_007e1_cv_cat,

    CASE
    	WHEN cv.b05002_007e2_cv < 15 Then 'high'
    	WHEN cv.b05002_007e2_cv >= 15 and b05002_007e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_007e2_cv_cat,

    CASE
    	WHEN cv.b05002_007c_cv < 15 Then 'high'
    	WHEN cv.b05002_007c_cv >= 15 and b05002_007c_cv < 30 Then 'medium'
    	WHEN cv.b05002_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_007c_cv_cat,

    CASE
    	WHEN cv.b05002_007p_cv < 15 Then 'high'
    	WHEN cv.b05002_007p_cv >= 15 and b05002_007p_cv < 30 Then 'medium'
    	WHEN cv.b05002_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_007p_cv_cat,
CASE
    WHEN ch.b05002_007sd > 1.645 THEN True
    WHEN ch.b05002_007sd <= 1.645 THEN False
    WHEN ch.b05002_007sd IS NULL AND cv.b05002_007c_cv = 0 AND ch.b05002_007cm = 0 THEN True
    ELSE NULL
    END AS b05002_007sd_tf,

    CASE
    	WHEN cv.b05002_008e1_cv < 15 Then 'high'
    	WHEN cv.b05002_008e1_cv >= 15 and b05002_008e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_008e1_cv_cat,

    CASE
    	WHEN cv.b05002_008e2_cv < 15 Then 'high'
    	WHEN cv.b05002_008e2_cv >= 15 and b05002_008e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_008e2_cv_cat,

    CASE
    	WHEN cv.b05002_008c_cv < 15 Then 'high'
    	WHEN cv.b05002_008c_cv >= 15 and b05002_008c_cv < 30 Then 'medium'
    	WHEN cv.b05002_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_008c_cv_cat,

    CASE
    	WHEN cv.b05002_008p_cv < 15 Then 'high'
    	WHEN cv.b05002_008p_cv >= 15 and b05002_008p_cv < 30 Then 'medium'
    	WHEN cv.b05002_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_008p_cv_cat,
CASE
    WHEN ch.b05002_008sd > 1.645 THEN True
    WHEN ch.b05002_008sd <= 1.645 THEN False
    WHEN ch.b05002_008sd IS NULL AND cv.b05002_008c_cv = 0 AND ch.b05002_008cm = 0 THEN True
    ELSE NULL
    END AS b05002_008sd_tf,

    CASE
    	WHEN cv.b05002_009e1_cv < 15 Then 'high'
    	WHEN cv.b05002_009e1_cv >= 15 and b05002_009e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_009e1_cv_cat,

    CASE
    	WHEN cv.b05002_009e2_cv < 15 Then 'high'
    	WHEN cv.b05002_009e2_cv >= 15 and b05002_009e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_009e2_cv_cat,

    CASE
    	WHEN cv.b05002_009c_cv < 15 Then 'high'
    	WHEN cv.b05002_009c_cv >= 15 and b05002_009c_cv < 30 Then 'medium'
    	WHEN cv.b05002_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_009c_cv_cat,

    CASE
    	WHEN cv.b05002_009p_cv < 15 Then 'high'
    	WHEN cv.b05002_009p_cv >= 15 and b05002_009p_cv < 30 Then 'medium'
    	WHEN cv.b05002_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_009p_cv_cat,
CASE
    WHEN ch.b05002_009sd > 1.645 THEN True
    WHEN ch.b05002_009sd <= 1.645 THEN False
    WHEN ch.b05002_009sd IS NULL AND cv.b05002_009c_cv = 0 AND ch.b05002_009cm = 0 THEN True
    ELSE NULL
    END AS b05002_009sd_tf,

    CASE
    	WHEN cv.b05002_010e1_cv < 15 Then 'high'
    	WHEN cv.b05002_010e1_cv >= 15 and b05002_010e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_010e1_cv_cat,

    CASE
    	WHEN cv.b05002_010e2_cv < 15 Then 'high'
    	WHEN cv.b05002_010e2_cv >= 15 and b05002_010e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_010e2_cv_cat,

    CASE
    	WHEN cv.b05002_010c_cv < 15 Then 'high'
    	WHEN cv.b05002_010c_cv >= 15 and b05002_010c_cv < 30 Then 'medium'
    	WHEN cv.b05002_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_010c_cv_cat,

    CASE
    	WHEN cv.b05002_010p_cv < 15 Then 'high'
    	WHEN cv.b05002_010p_cv >= 15 and b05002_010p_cv < 30 Then 'medium'
    	WHEN cv.b05002_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_010p_cv_cat,
CASE
    WHEN ch.b05002_010sd > 1.645 THEN True
    WHEN ch.b05002_010sd <= 1.645 THEN False
    WHEN ch.b05002_010sd IS NULL AND cv.b05002_010c_cv = 0 AND ch.b05002_010cm = 0 THEN True
    ELSE NULL
    END AS b05002_010sd_tf,

    CASE
    	WHEN cv.b05002_011e1_cv < 15 Then 'high'
    	WHEN cv.b05002_011e1_cv >= 15 and b05002_011e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_011e1_cv_cat,

    CASE
    	WHEN cv.b05002_011e2_cv < 15 Then 'high'
    	WHEN cv.b05002_011e2_cv >= 15 and b05002_011e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_011e2_cv_cat,

    CASE
    	WHEN cv.b05002_011c_cv < 15 Then 'high'
    	WHEN cv.b05002_011c_cv >= 15 and b05002_011c_cv < 30 Then 'medium'
    	WHEN cv.b05002_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_011c_cv_cat,

    CASE
    	WHEN cv.b05002_011p_cv < 15 Then 'high'
    	WHEN cv.b05002_011p_cv >= 15 and b05002_011p_cv < 30 Then 'medium'
    	WHEN cv.b05002_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_011p_cv_cat,
CASE
    WHEN ch.b05002_011sd > 1.645 THEN True
    WHEN ch.b05002_011sd <= 1.645 THEN False
    WHEN ch.b05002_011sd IS NULL AND cv.b05002_011c_cv = 0 AND ch.b05002_011cm = 0 THEN True
    ELSE NULL
    END AS b05002_011sd_tf,

    CASE
    	WHEN cv.b05002_012e1_cv < 15 Then 'high'
    	WHEN cv.b05002_012e1_cv >= 15 and b05002_012e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_012e1_cv_cat,

    CASE
    	WHEN cv.b05002_012e2_cv < 15 Then 'high'
    	WHEN cv.b05002_012e2_cv >= 15 and b05002_012e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_012e2_cv_cat,

    CASE
    	WHEN cv.b05002_012c_cv < 15 Then 'high'
    	WHEN cv.b05002_012c_cv >= 15 and b05002_012c_cv < 30 Then 'medium'
    	WHEN cv.b05002_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_012c_cv_cat,

    CASE
    	WHEN cv.b05002_012p_cv < 15 Then 'high'
    	WHEN cv.b05002_012p_cv >= 15 and b05002_012p_cv < 30 Then 'medium'
    	WHEN cv.b05002_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_012p_cv_cat,
CASE
    WHEN ch.b05002_012sd > 1.645 THEN True
    WHEN ch.b05002_012sd <= 1.645 THEN False
    WHEN ch.b05002_012sd IS NULL AND cv.b05002_012c_cv = 0 AND ch.b05002_012cm = 0 THEN True
    ELSE NULL
    END AS b05002_012sd_tf,

    CASE
    	WHEN cv.b05002_013e1_cv < 15 Then 'high'
    	WHEN cv.b05002_013e1_cv >= 15 and b05002_013e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_013e1_cv_cat,

    CASE
    	WHEN cv.b05002_013e2_cv < 15 Then 'high'
    	WHEN cv.b05002_013e2_cv >= 15 and b05002_013e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_013e2_cv_cat,

    CASE
    	WHEN cv.b05002_013c_cv < 15 Then 'high'
    	WHEN cv.b05002_013c_cv >= 15 and b05002_013c_cv < 30 Then 'medium'
    	WHEN cv.b05002_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_013c_cv_cat,

    CASE
    	WHEN cv.b05002_013p_cv < 15 Then 'high'
    	WHEN cv.b05002_013p_cv >= 15 and b05002_013p_cv < 30 Then 'medium'
    	WHEN cv.b05002_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_013p_cv_cat,
CASE
    WHEN ch.b05002_013sd > 1.645 THEN True
    WHEN ch.b05002_013sd <= 1.645 THEN False
    WHEN ch.b05002_013sd IS NULL AND cv.b05002_013c_cv = 0 AND ch.b05002_013cm = 0 THEN True
    ELSE NULL
    END AS b05002_013sd_tf,

    CASE
    	WHEN cv.b05002_014e1_cv < 15 Then 'high'
    	WHEN cv.b05002_014e1_cv >= 15 and b05002_014e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_014e1_cv_cat,

    CASE
    	WHEN cv.b05002_014e2_cv < 15 Then 'high'
    	WHEN cv.b05002_014e2_cv >= 15 and b05002_014e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_014e2_cv_cat,

    CASE
    	WHEN cv.b05002_014c_cv < 15 Then 'high'
    	WHEN cv.b05002_014c_cv >= 15 and b05002_014c_cv < 30 Then 'medium'
    	WHEN cv.b05002_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_014c_cv_cat,

    CASE
    	WHEN cv.b05002_014p_cv < 15 Then 'high'
    	WHEN cv.b05002_014p_cv >= 15 and b05002_014p_cv < 30 Then 'medium'
    	WHEN cv.b05002_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_014p_cv_cat,
CASE
    WHEN ch.b05002_014sd > 1.645 THEN True
    WHEN ch.b05002_014sd <= 1.645 THEN False
    WHEN ch.b05002_014sd IS NULL AND cv.b05002_014c_cv = 0 AND ch.b05002_014cm = 0 THEN True
    ELSE NULL
    END AS b05002_014sd_tf,

    CASE
    	WHEN cv.b05002_021e1_cv < 15 Then 'high'
    	WHEN cv.b05002_021e1_cv >= 15 and b05002_021e1_cv < 30 Then 'medium'
    	WHEN cv.b05002_021e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_021e1_cv_cat,

    CASE
    	WHEN cv.b05002_021e2_cv < 15 Then 'high'
    	WHEN cv.b05002_021e2_cv >= 15 and b05002_021e2_cv < 30 Then 'medium'
    	WHEN cv.b05002_021e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_021e2_cv_cat,

    CASE
    	WHEN cv.b05002_021c_cv < 15 Then 'high'
    	WHEN cv.b05002_021c_cv >= 15 and b05002_021c_cv < 30 Then 'medium'
    	WHEN cv.b05002_021c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_021c_cv_cat,

    CASE
    	WHEN cv.b05002_021p_cv < 15 Then 'high'
    	WHEN cv.b05002_021p_cv >= 15 and b05002_021p_cv < 30 Then 'medium'
    	WHEN cv.b05002_021p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b05002_021p_cv_cat,
CASE
    WHEN ch.b05002_021sd > 1.645 THEN True
    WHEN ch.b05002_021sd <= 1.645 THEN False
    WHEN ch.b05002_021sd IS NULL AND cv.b05002_021c_cv = 0 AND ch.b05002_021cm = 0 THEN True
    ELSE NULL
    END AS b05002_021sd_tf

    FROM acs_b05002_cvs cv
    INNER JOIN acs_b05002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b07204_cvsummary;
    CREATE VIEW acs_b07204_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b07204_001e1_cv < 15 Then 'high'
    	WHEN cv.b07204_001e1_cv >= 15 and b07204_001e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_001e1_cv_cat,

    CASE
    	WHEN cv.b07204_001e2_cv < 15 Then 'high'
    	WHEN cv.b07204_001e2_cv >= 15 and b07204_001e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_001e2_cv_cat,

    CASE
    	WHEN cv.b07204_001c_cv < 15 Then 'high'
    	WHEN cv.b07204_001c_cv >= 15 and b07204_001c_cv < 30 Then 'medium'
    	WHEN cv.b07204_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_001c_cv_cat,

    CASE
    	WHEN cv.b07204_001p_cv < 15 Then 'high'
    	WHEN cv.b07204_001p_cv >= 15 and b07204_001p_cv < 30 Then 'medium'
    	WHEN cv.b07204_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_001p_cv_cat,
CASE
    WHEN ch.b07204_001sd > 1.645 THEN True
    WHEN ch.b07204_001sd <= 1.645 THEN False
    WHEN ch.b07204_001sd IS NULL AND cv.b07204_001c_cv = 0 AND ch.b07204_001cm = 0 THEN True
    ELSE NULL
    END AS b07204_001sd_tf,

    CASE
    	WHEN cv.b07204_002e1_cv < 15 Then 'high'
    	WHEN cv.b07204_002e1_cv >= 15 and b07204_002e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_002e1_cv_cat,

    CASE
    	WHEN cv.b07204_002e2_cv < 15 Then 'high'
    	WHEN cv.b07204_002e2_cv >= 15 and b07204_002e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_002e2_cv_cat,

    CASE
    	WHEN cv.b07204_002c_cv < 15 Then 'high'
    	WHEN cv.b07204_002c_cv >= 15 and b07204_002c_cv < 30 Then 'medium'
    	WHEN cv.b07204_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_002c_cv_cat,

    CASE
    	WHEN cv.b07204_002p_cv < 15 Then 'high'
    	WHEN cv.b07204_002p_cv >= 15 and b07204_002p_cv < 30 Then 'medium'
    	WHEN cv.b07204_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_002p_cv_cat,
CASE
    WHEN ch.b07204_002sd > 1.645 THEN True
    WHEN ch.b07204_002sd <= 1.645 THEN False
    WHEN ch.b07204_002sd IS NULL AND cv.b07204_002c_cv = 0 AND ch.b07204_002cm = 0 THEN True
    ELSE NULL
    END AS b07204_002sd_tf,

    CASE
    	WHEN cv.b07204_003e1_cv < 15 Then 'high'
    	WHEN cv.b07204_003e1_cv >= 15 and b07204_003e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_003e1_cv_cat,

    CASE
    	WHEN cv.b07204_003e2_cv < 15 Then 'high'
    	WHEN cv.b07204_003e2_cv >= 15 and b07204_003e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_003e2_cv_cat,

    CASE
    	WHEN cv.b07204_003c_cv < 15 Then 'high'
    	WHEN cv.b07204_003c_cv >= 15 and b07204_003c_cv < 30 Then 'medium'
    	WHEN cv.b07204_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_003c_cv_cat,

    CASE
    	WHEN cv.b07204_003p_cv < 15 Then 'high'
    	WHEN cv.b07204_003p_cv >= 15 and b07204_003p_cv < 30 Then 'medium'
    	WHEN cv.b07204_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_003p_cv_cat,
CASE
    WHEN ch.b07204_003sd > 1.645 THEN True
    WHEN ch.b07204_003sd <= 1.645 THEN False
    WHEN ch.b07204_003sd IS NULL AND cv.b07204_003c_cv = 0 AND ch.b07204_003cm = 0 THEN True
    ELSE NULL
    END AS b07204_003sd_tf,

    CASE
    	WHEN cv.b07204_004e1_cv < 15 Then 'high'
    	WHEN cv.b07204_004e1_cv >= 15 and b07204_004e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_004e1_cv_cat,

    CASE
    	WHEN cv.b07204_004e2_cv < 15 Then 'high'
    	WHEN cv.b07204_004e2_cv >= 15 and b07204_004e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_004e2_cv_cat,

    CASE
    	WHEN cv.b07204_004c_cv < 15 Then 'high'
    	WHEN cv.b07204_004c_cv >= 15 and b07204_004c_cv < 30 Then 'medium'
    	WHEN cv.b07204_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_004c_cv_cat,

    CASE
    	WHEN cv.b07204_004p_cv < 15 Then 'high'
    	WHEN cv.b07204_004p_cv >= 15 and b07204_004p_cv < 30 Then 'medium'
    	WHEN cv.b07204_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_004p_cv_cat,
CASE
    WHEN ch.b07204_004sd > 1.645 THEN True
    WHEN ch.b07204_004sd <= 1.645 THEN False
    WHEN ch.b07204_004sd IS NULL AND cv.b07204_004c_cv = 0 AND ch.b07204_004cm = 0 THEN True
    ELSE NULL
    END AS b07204_004sd_tf,

    CASE
    	WHEN cv.b07204_005e1_cv < 15 Then 'high'
    	WHEN cv.b07204_005e1_cv >= 15 and b07204_005e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_005e1_cv_cat,

    CASE
    	WHEN cv.b07204_005e2_cv < 15 Then 'high'
    	WHEN cv.b07204_005e2_cv >= 15 and b07204_005e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_005e2_cv_cat,

    CASE
    	WHEN cv.b07204_005c_cv < 15 Then 'high'
    	WHEN cv.b07204_005c_cv >= 15 and b07204_005c_cv < 30 Then 'medium'
    	WHEN cv.b07204_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_005c_cv_cat,

    CASE
    	WHEN cv.b07204_005p_cv < 15 Then 'high'
    	WHEN cv.b07204_005p_cv >= 15 and b07204_005p_cv < 30 Then 'medium'
    	WHEN cv.b07204_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_005p_cv_cat,
CASE
    WHEN ch.b07204_005sd > 1.645 THEN True
    WHEN ch.b07204_005sd <= 1.645 THEN False
    WHEN ch.b07204_005sd IS NULL AND cv.b07204_005c_cv = 0 AND ch.b07204_005cm = 0 THEN True
    ELSE NULL
    END AS b07204_005sd_tf,

    CASE
    	WHEN cv.b07204_006e1_cv < 15 Then 'high'
    	WHEN cv.b07204_006e1_cv >= 15 and b07204_006e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_006e1_cv_cat,

    CASE
    	WHEN cv.b07204_006e2_cv < 15 Then 'high'
    	WHEN cv.b07204_006e2_cv >= 15 and b07204_006e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_006e2_cv_cat,

    CASE
    	WHEN cv.b07204_006c_cv < 15 Then 'high'
    	WHEN cv.b07204_006c_cv >= 15 and b07204_006c_cv < 30 Then 'medium'
    	WHEN cv.b07204_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_006c_cv_cat,

    CASE
    	WHEN cv.b07204_006p_cv < 15 Then 'high'
    	WHEN cv.b07204_006p_cv >= 15 and b07204_006p_cv < 30 Then 'medium'
    	WHEN cv.b07204_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_006p_cv_cat,
CASE
    WHEN ch.b07204_006sd > 1.645 THEN True
    WHEN ch.b07204_006sd <= 1.645 THEN False
    WHEN ch.b07204_006sd IS NULL AND cv.b07204_006c_cv = 0 AND ch.b07204_006cm = 0 THEN True
    ELSE NULL
    END AS b07204_006sd_tf,

    CASE
    	WHEN cv.b07204_007e1_cv < 15 Then 'high'
    	WHEN cv.b07204_007e1_cv >= 15 and b07204_007e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_007e1_cv_cat,

    CASE
    	WHEN cv.b07204_007e2_cv < 15 Then 'high'
    	WHEN cv.b07204_007e2_cv >= 15 and b07204_007e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_007e2_cv_cat,

    CASE
    	WHEN cv.b07204_007c_cv < 15 Then 'high'
    	WHEN cv.b07204_007c_cv >= 15 and b07204_007c_cv < 30 Then 'medium'
    	WHEN cv.b07204_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_007c_cv_cat,

    CASE
    	WHEN cv.b07204_007p_cv < 15 Then 'high'
    	WHEN cv.b07204_007p_cv >= 15 and b07204_007p_cv < 30 Then 'medium'
    	WHEN cv.b07204_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_007p_cv_cat,
CASE
    WHEN ch.b07204_007sd > 1.645 THEN True
    WHEN ch.b07204_007sd <= 1.645 THEN False
    WHEN ch.b07204_007sd IS NULL AND cv.b07204_007c_cv = 0 AND ch.b07204_007cm = 0 THEN True
    ELSE NULL
    END AS b07204_007sd_tf,

    CASE
    	WHEN cv.b07204_008e1_cv < 15 Then 'high'
    	WHEN cv.b07204_008e1_cv >= 15 and b07204_008e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_008e1_cv_cat,

    CASE
    	WHEN cv.b07204_008e2_cv < 15 Then 'high'
    	WHEN cv.b07204_008e2_cv >= 15 and b07204_008e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_008e2_cv_cat,

    CASE
    	WHEN cv.b07204_008c_cv < 15 Then 'high'
    	WHEN cv.b07204_008c_cv >= 15 and b07204_008c_cv < 30 Then 'medium'
    	WHEN cv.b07204_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_008c_cv_cat,

    CASE
    	WHEN cv.b07204_008p_cv < 15 Then 'high'
    	WHEN cv.b07204_008p_cv >= 15 and b07204_008p_cv < 30 Then 'medium'
    	WHEN cv.b07204_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_008p_cv_cat,
CASE
    WHEN ch.b07204_008sd > 1.645 THEN True
    WHEN ch.b07204_008sd <= 1.645 THEN False
    WHEN ch.b07204_008sd IS NULL AND cv.b07204_008c_cv = 0 AND ch.b07204_008cm = 0 THEN True
    ELSE NULL
    END AS b07204_008sd_tf,

    CASE
    	WHEN cv.b07204_009e1_cv < 15 Then 'high'
    	WHEN cv.b07204_009e1_cv >= 15 and b07204_009e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_009e1_cv_cat,

    CASE
    	WHEN cv.b07204_009e2_cv < 15 Then 'high'
    	WHEN cv.b07204_009e2_cv >= 15 and b07204_009e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_009e2_cv_cat,

    CASE
    	WHEN cv.b07204_009c_cv < 15 Then 'high'
    	WHEN cv.b07204_009c_cv >= 15 and b07204_009c_cv < 30 Then 'medium'
    	WHEN cv.b07204_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_009c_cv_cat,

    CASE
    	WHEN cv.b07204_009p_cv < 15 Then 'high'
    	WHEN cv.b07204_009p_cv >= 15 and b07204_009p_cv < 30 Then 'medium'
    	WHEN cv.b07204_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_009p_cv_cat,
CASE
    WHEN ch.b07204_009sd > 1.645 THEN True
    WHEN ch.b07204_009sd <= 1.645 THEN False
    WHEN ch.b07204_009sd IS NULL AND cv.b07204_009c_cv = 0 AND ch.b07204_009cm = 0 THEN True
    ELSE NULL
    END AS b07204_009sd_tf,

    CASE
    	WHEN cv.b07204_010e1_cv < 15 Then 'high'
    	WHEN cv.b07204_010e1_cv >= 15 and b07204_010e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_010e1_cv_cat,

    CASE
    	WHEN cv.b07204_010e2_cv < 15 Then 'high'
    	WHEN cv.b07204_010e2_cv >= 15 and b07204_010e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_010e2_cv_cat,

    CASE
    	WHEN cv.b07204_010c_cv < 15 Then 'high'
    	WHEN cv.b07204_010c_cv >= 15 and b07204_010c_cv < 30 Then 'medium'
    	WHEN cv.b07204_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_010c_cv_cat,

    CASE
    	WHEN cv.b07204_010p_cv < 15 Then 'high'
    	WHEN cv.b07204_010p_cv >= 15 and b07204_010p_cv < 30 Then 'medium'
    	WHEN cv.b07204_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_010p_cv_cat,
CASE
    WHEN ch.b07204_010sd > 1.645 THEN True
    WHEN ch.b07204_010sd <= 1.645 THEN False
    WHEN ch.b07204_010sd IS NULL AND cv.b07204_010c_cv = 0 AND ch.b07204_010cm = 0 THEN True
    ELSE NULL
    END AS b07204_010sd_tf,

    CASE
    	WHEN cv.b07204_011e1_cv < 15 Then 'high'
    	WHEN cv.b07204_011e1_cv >= 15 and b07204_011e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_011e1_cv_cat,

    CASE
    	WHEN cv.b07204_011e2_cv < 15 Then 'high'
    	WHEN cv.b07204_011e2_cv >= 15 and b07204_011e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_011e2_cv_cat,

    CASE
    	WHEN cv.b07204_011c_cv < 15 Then 'high'
    	WHEN cv.b07204_011c_cv >= 15 and b07204_011c_cv < 30 Then 'medium'
    	WHEN cv.b07204_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_011c_cv_cat,

    CASE
    	WHEN cv.b07204_011p_cv < 15 Then 'high'
    	WHEN cv.b07204_011p_cv >= 15 and b07204_011p_cv < 30 Then 'medium'
    	WHEN cv.b07204_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_011p_cv_cat,
CASE
    WHEN ch.b07204_011sd > 1.645 THEN True
    WHEN ch.b07204_011sd <= 1.645 THEN False
    WHEN ch.b07204_011sd IS NULL AND cv.b07204_011c_cv = 0 AND ch.b07204_011cm = 0 THEN True
    ELSE NULL
    END AS b07204_011sd_tf,

    CASE
    	WHEN cv.b07204_012e1_cv < 15 Then 'high'
    	WHEN cv.b07204_012e1_cv >= 15 and b07204_012e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_012e1_cv_cat,

    CASE
    	WHEN cv.b07204_012e2_cv < 15 Then 'high'
    	WHEN cv.b07204_012e2_cv >= 15 and b07204_012e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_012e2_cv_cat,

    CASE
    	WHEN cv.b07204_012c_cv < 15 Then 'high'
    	WHEN cv.b07204_012c_cv >= 15 and b07204_012c_cv < 30 Then 'medium'
    	WHEN cv.b07204_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_012c_cv_cat,

    CASE
    	WHEN cv.b07204_012p_cv < 15 Then 'high'
    	WHEN cv.b07204_012p_cv >= 15 and b07204_012p_cv < 30 Then 'medium'
    	WHEN cv.b07204_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_012p_cv_cat,
CASE
    WHEN ch.b07204_012sd > 1.645 THEN True
    WHEN ch.b07204_012sd <= 1.645 THEN False
    WHEN ch.b07204_012sd IS NULL AND cv.b07204_012c_cv = 0 AND ch.b07204_012cm = 0 THEN True
    ELSE NULL
    END AS b07204_012sd_tf,

    CASE
    	WHEN cv.b07204_013e1_cv < 15 Then 'high'
    	WHEN cv.b07204_013e1_cv >= 15 and b07204_013e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_013e1_cv_cat,

    CASE
    	WHEN cv.b07204_013e2_cv < 15 Then 'high'
    	WHEN cv.b07204_013e2_cv >= 15 and b07204_013e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_013e2_cv_cat,

    CASE
    	WHEN cv.b07204_013c_cv < 15 Then 'high'
    	WHEN cv.b07204_013c_cv >= 15 and b07204_013c_cv < 30 Then 'medium'
    	WHEN cv.b07204_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_013c_cv_cat,

    CASE
    	WHEN cv.b07204_013p_cv < 15 Then 'high'
    	WHEN cv.b07204_013p_cv >= 15 and b07204_013p_cv < 30 Then 'medium'
    	WHEN cv.b07204_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_013p_cv_cat,
CASE
    WHEN ch.b07204_013sd > 1.645 THEN True
    WHEN ch.b07204_013sd <= 1.645 THEN False
    WHEN ch.b07204_013sd IS NULL AND cv.b07204_013c_cv = 0 AND ch.b07204_013cm = 0 THEN True
    ELSE NULL
    END AS b07204_013sd_tf,

    CASE
    	WHEN cv.b07204_014e1_cv < 15 Then 'high'
    	WHEN cv.b07204_014e1_cv >= 15 and b07204_014e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_014e1_cv_cat,

    CASE
    	WHEN cv.b07204_014e2_cv < 15 Then 'high'
    	WHEN cv.b07204_014e2_cv >= 15 and b07204_014e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_014e2_cv_cat,

    CASE
    	WHEN cv.b07204_014c_cv < 15 Then 'high'
    	WHEN cv.b07204_014c_cv >= 15 and b07204_014c_cv < 30 Then 'medium'
    	WHEN cv.b07204_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_014c_cv_cat,

    CASE
    	WHEN cv.b07204_014p_cv < 15 Then 'high'
    	WHEN cv.b07204_014p_cv >= 15 and b07204_014p_cv < 30 Then 'medium'
    	WHEN cv.b07204_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_014p_cv_cat,
CASE
    WHEN ch.b07204_014sd > 1.645 THEN True
    WHEN ch.b07204_014sd <= 1.645 THEN False
    WHEN ch.b07204_014sd IS NULL AND cv.b07204_014c_cv = 0 AND ch.b07204_014cm = 0 THEN True
    ELSE NULL
    END AS b07204_014sd_tf,

    CASE
    	WHEN cv.b07204_015e1_cv < 15 Then 'high'
    	WHEN cv.b07204_015e1_cv >= 15 and b07204_015e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_015e1_cv_cat,

    CASE
    	WHEN cv.b07204_015e2_cv < 15 Then 'high'
    	WHEN cv.b07204_015e2_cv >= 15 and b07204_015e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_015e2_cv_cat,

    CASE
    	WHEN cv.b07204_015c_cv < 15 Then 'high'
    	WHEN cv.b07204_015c_cv >= 15 and b07204_015c_cv < 30 Then 'medium'
    	WHEN cv.b07204_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_015c_cv_cat,

    CASE
    	WHEN cv.b07204_015p_cv < 15 Then 'high'
    	WHEN cv.b07204_015p_cv >= 15 and b07204_015p_cv < 30 Then 'medium'
    	WHEN cv.b07204_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_015p_cv_cat,
CASE
    WHEN ch.b07204_015sd > 1.645 THEN True
    WHEN ch.b07204_015sd <= 1.645 THEN False
    WHEN ch.b07204_015sd IS NULL AND cv.b07204_015c_cv = 0 AND ch.b07204_015cm = 0 THEN True
    ELSE NULL
    END AS b07204_015sd_tf,

    CASE
    	WHEN cv.b07204_016e1_cv < 15 Then 'high'
    	WHEN cv.b07204_016e1_cv >= 15 and b07204_016e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_016e1_cv_cat,

    CASE
    	WHEN cv.b07204_016e2_cv < 15 Then 'high'
    	WHEN cv.b07204_016e2_cv >= 15 and b07204_016e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_016e2_cv_cat,

    CASE
    	WHEN cv.b07204_016c_cv < 15 Then 'high'
    	WHEN cv.b07204_016c_cv >= 15 and b07204_016c_cv < 30 Then 'medium'
    	WHEN cv.b07204_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_016c_cv_cat,

    CASE
    	WHEN cv.b07204_016p_cv < 15 Then 'high'
    	WHEN cv.b07204_016p_cv >= 15 and b07204_016p_cv < 30 Then 'medium'
    	WHEN cv.b07204_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_016p_cv_cat,
CASE
    WHEN ch.b07204_016sd > 1.645 THEN True
    WHEN ch.b07204_016sd <= 1.645 THEN False
    WHEN ch.b07204_016sd IS NULL AND cv.b07204_016c_cv = 0 AND ch.b07204_016cm = 0 THEN True
    ELSE NULL
    END AS b07204_016sd_tf,

    CASE
    	WHEN cv.b07204_017e1_cv < 15 Then 'high'
    	WHEN cv.b07204_017e1_cv >= 15 and b07204_017e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_017e1_cv_cat,

    CASE
    	WHEN cv.b07204_017e2_cv < 15 Then 'high'
    	WHEN cv.b07204_017e2_cv >= 15 and b07204_017e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_017e2_cv_cat,

    CASE
    	WHEN cv.b07204_017c_cv < 15 Then 'high'
    	WHEN cv.b07204_017c_cv >= 15 and b07204_017c_cv < 30 Then 'medium'
    	WHEN cv.b07204_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_017c_cv_cat,

    CASE
    	WHEN cv.b07204_017p_cv < 15 Then 'high'
    	WHEN cv.b07204_017p_cv >= 15 and b07204_017p_cv < 30 Then 'medium'
    	WHEN cv.b07204_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_017p_cv_cat,
CASE
    WHEN ch.b07204_017sd > 1.645 THEN True
    WHEN ch.b07204_017sd <= 1.645 THEN False
    WHEN ch.b07204_017sd IS NULL AND cv.b07204_017c_cv = 0 AND ch.b07204_017cm = 0 THEN True
    ELSE NULL
    END AS b07204_017sd_tf,

    CASE
    	WHEN cv.b07204_018e1_cv < 15 Then 'high'
    	WHEN cv.b07204_018e1_cv >= 15 and b07204_018e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_018e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_018e1_cv_cat,

    CASE
    	WHEN cv.b07204_018e2_cv < 15 Then 'high'
    	WHEN cv.b07204_018e2_cv >= 15 and b07204_018e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_018e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_018e2_cv_cat,

    CASE
    	WHEN cv.b07204_018c_cv < 15 Then 'high'
    	WHEN cv.b07204_018c_cv >= 15 and b07204_018c_cv < 30 Then 'medium'
    	WHEN cv.b07204_018c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_018c_cv_cat,

    CASE
    	WHEN cv.b07204_018p_cv < 15 Then 'high'
    	WHEN cv.b07204_018p_cv >= 15 and b07204_018p_cv < 30 Then 'medium'
    	WHEN cv.b07204_018p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_018p_cv_cat,
CASE
    WHEN ch.b07204_018sd > 1.645 THEN True
    WHEN ch.b07204_018sd <= 1.645 THEN False
    WHEN ch.b07204_018sd IS NULL AND cv.b07204_018c_cv = 0 AND ch.b07204_018cm = 0 THEN True
    ELSE NULL
    END AS b07204_018sd_tf,

    CASE
    	WHEN cv.b07204_019e1_cv < 15 Then 'high'
    	WHEN cv.b07204_019e1_cv >= 15 and b07204_019e1_cv < 30 Then 'medium'
    	WHEN cv.b07204_019e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_019e1_cv_cat,

    CASE
    	WHEN cv.b07204_019e2_cv < 15 Then 'high'
    	WHEN cv.b07204_019e2_cv >= 15 and b07204_019e2_cv < 30 Then 'medium'
    	WHEN cv.b07204_019e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_019e2_cv_cat,

    CASE
    	WHEN cv.b07204_019c_cv < 15 Then 'high'
    	WHEN cv.b07204_019c_cv >= 15 and b07204_019c_cv < 30 Then 'medium'
    	WHEN cv.b07204_019c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_019c_cv_cat,

    CASE
    	WHEN cv.b07204_019p_cv < 15 Then 'high'
    	WHEN cv.b07204_019p_cv >= 15 and b07204_019p_cv < 30 Then 'medium'
    	WHEN cv.b07204_019p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b07204_019p_cv_cat,
CASE
    WHEN ch.b07204_019sd > 1.645 THEN True
    WHEN ch.b07204_019sd <= 1.645 THEN False
    WHEN ch.b07204_019sd IS NULL AND cv.b07204_019c_cv = 0 AND ch.b07204_019cm = 0 THEN True
    ELSE NULL
    END AS b07204_019sd_tf

    FROM acs_b07204_cvs cv
    INNER JOIN acs_b07204_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b08006_cvsummary;
    CREATE VIEW acs_b08006_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b08006_001e1_cv < 15 Then 'high'
    	WHEN cv.b08006_001e1_cv >= 15 and b08006_001e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_001e1_cv_cat,

    CASE
    	WHEN cv.b08006_001e2_cv < 15 Then 'high'
    	WHEN cv.b08006_001e2_cv >= 15 and b08006_001e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_001e2_cv_cat,

    CASE
    	WHEN cv.b08006_001c_cv < 15 Then 'high'
    	WHEN cv.b08006_001c_cv >= 15 and b08006_001c_cv < 30 Then 'medium'
    	WHEN cv.b08006_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_001c_cv_cat,

    CASE
    	WHEN cv.b08006_001p_cv < 15 Then 'high'
    	WHEN cv.b08006_001p_cv >= 15 and b08006_001p_cv < 30 Then 'medium'
    	WHEN cv.b08006_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_001p_cv_cat,
CASE
    WHEN ch.b08006_001sd > 1.645 THEN True
    WHEN ch.b08006_001sd <= 1.645 THEN False
    WHEN ch.b08006_001sd IS NULL AND cv.b08006_001c_cv = 0 AND ch.b08006_001cm = 0 THEN True
    ELSE NULL
    END AS b08006_001sd_tf,

    CASE
    	WHEN cv.b08006_002e1_cv < 15 Then 'high'
    	WHEN cv.b08006_002e1_cv >= 15 and b08006_002e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_002e1_cv_cat,

    CASE
    	WHEN cv.b08006_002e2_cv < 15 Then 'high'
    	WHEN cv.b08006_002e2_cv >= 15 and b08006_002e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_002e2_cv_cat,

    CASE
    	WHEN cv.b08006_002c_cv < 15 Then 'high'
    	WHEN cv.b08006_002c_cv >= 15 and b08006_002c_cv < 30 Then 'medium'
    	WHEN cv.b08006_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_002c_cv_cat,

    CASE
    	WHEN cv.b08006_002p_cv < 15 Then 'high'
    	WHEN cv.b08006_002p_cv >= 15 and b08006_002p_cv < 30 Then 'medium'
    	WHEN cv.b08006_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_002p_cv_cat,
CASE
    WHEN ch.b08006_002sd > 1.645 THEN True
    WHEN ch.b08006_002sd <= 1.645 THEN False
    WHEN ch.b08006_002sd IS NULL AND cv.b08006_002c_cv = 0 AND ch.b08006_002cm = 0 THEN True
    ELSE NULL
    END AS b08006_002sd_tf,

    CASE
    	WHEN cv.b08006_003e1_cv < 15 Then 'high'
    	WHEN cv.b08006_003e1_cv >= 15 and b08006_003e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_003e1_cv_cat,

    CASE
    	WHEN cv.b08006_003e2_cv < 15 Then 'high'
    	WHEN cv.b08006_003e2_cv >= 15 and b08006_003e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_003e2_cv_cat,

    CASE
    	WHEN cv.b08006_003c_cv < 15 Then 'high'
    	WHEN cv.b08006_003c_cv >= 15 and b08006_003c_cv < 30 Then 'medium'
    	WHEN cv.b08006_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_003c_cv_cat,

    CASE
    	WHEN cv.b08006_003p_cv < 15 Then 'high'
    	WHEN cv.b08006_003p_cv >= 15 and b08006_003p_cv < 30 Then 'medium'
    	WHEN cv.b08006_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_003p_cv_cat,
CASE
    WHEN ch.b08006_003sd > 1.645 THEN True
    WHEN ch.b08006_003sd <= 1.645 THEN False
    WHEN ch.b08006_003sd IS NULL AND cv.b08006_003c_cv = 0 AND ch.b08006_003cm = 0 THEN True
    ELSE NULL
    END AS b08006_003sd_tf,

    CASE
    	WHEN cv.b08006_004e1_cv < 15 Then 'high'
    	WHEN cv.b08006_004e1_cv >= 15 and b08006_004e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_004e1_cv_cat,

    CASE
    	WHEN cv.b08006_004e2_cv < 15 Then 'high'
    	WHEN cv.b08006_004e2_cv >= 15 and b08006_004e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_004e2_cv_cat,

    CASE
    	WHEN cv.b08006_004c_cv < 15 Then 'high'
    	WHEN cv.b08006_004c_cv >= 15 and b08006_004c_cv < 30 Then 'medium'
    	WHEN cv.b08006_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_004c_cv_cat,

    CASE
    	WHEN cv.b08006_004p_cv < 15 Then 'high'
    	WHEN cv.b08006_004p_cv >= 15 and b08006_004p_cv < 30 Then 'medium'
    	WHEN cv.b08006_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_004p_cv_cat,
CASE
    WHEN ch.b08006_004sd > 1.645 THEN True
    WHEN ch.b08006_004sd <= 1.645 THEN False
    WHEN ch.b08006_004sd IS NULL AND cv.b08006_004c_cv = 0 AND ch.b08006_004cm = 0 THEN True
    ELSE NULL
    END AS b08006_004sd_tf,

    CASE
    	WHEN cv.b08006_005e1_cv < 15 Then 'high'
    	WHEN cv.b08006_005e1_cv >= 15 and b08006_005e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_005e1_cv_cat,

    CASE
    	WHEN cv.b08006_005e2_cv < 15 Then 'high'
    	WHEN cv.b08006_005e2_cv >= 15 and b08006_005e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_005e2_cv_cat,

    CASE
    	WHEN cv.b08006_005c_cv < 15 Then 'high'
    	WHEN cv.b08006_005c_cv >= 15 and b08006_005c_cv < 30 Then 'medium'
    	WHEN cv.b08006_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_005c_cv_cat,

    CASE
    	WHEN cv.b08006_005p_cv < 15 Then 'high'
    	WHEN cv.b08006_005p_cv >= 15 and b08006_005p_cv < 30 Then 'medium'
    	WHEN cv.b08006_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_005p_cv_cat,
CASE
    WHEN ch.b08006_005sd > 1.645 THEN True
    WHEN ch.b08006_005sd <= 1.645 THEN False
    WHEN ch.b08006_005sd IS NULL AND cv.b08006_005c_cv = 0 AND ch.b08006_005cm = 0 THEN True
    ELSE NULL
    END AS b08006_005sd_tf,

    CASE
    	WHEN cv.b08006_006e1_cv < 15 Then 'high'
    	WHEN cv.b08006_006e1_cv >= 15 and b08006_006e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_006e1_cv_cat,

    CASE
    	WHEN cv.b08006_006e2_cv < 15 Then 'high'
    	WHEN cv.b08006_006e2_cv >= 15 and b08006_006e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_006e2_cv_cat,

    CASE
    	WHEN cv.b08006_006c_cv < 15 Then 'high'
    	WHEN cv.b08006_006c_cv >= 15 and b08006_006c_cv < 30 Then 'medium'
    	WHEN cv.b08006_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_006c_cv_cat,

    CASE
    	WHEN cv.b08006_006p_cv < 15 Then 'high'
    	WHEN cv.b08006_006p_cv >= 15 and b08006_006p_cv < 30 Then 'medium'
    	WHEN cv.b08006_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_006p_cv_cat,
CASE
    WHEN ch.b08006_006sd > 1.645 THEN True
    WHEN ch.b08006_006sd <= 1.645 THEN False
    WHEN ch.b08006_006sd IS NULL AND cv.b08006_006c_cv = 0 AND ch.b08006_006cm = 0 THEN True
    ELSE NULL
    END AS b08006_006sd_tf,

    CASE
    	WHEN cv.b08006_007e1_cv < 15 Then 'high'
    	WHEN cv.b08006_007e1_cv >= 15 and b08006_007e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_007e1_cv_cat,

    CASE
    	WHEN cv.b08006_007e2_cv < 15 Then 'high'
    	WHEN cv.b08006_007e2_cv >= 15 and b08006_007e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_007e2_cv_cat,

    CASE
    	WHEN cv.b08006_007c_cv < 15 Then 'high'
    	WHEN cv.b08006_007c_cv >= 15 and b08006_007c_cv < 30 Then 'medium'
    	WHEN cv.b08006_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_007c_cv_cat,

    CASE
    	WHEN cv.b08006_007p_cv < 15 Then 'high'
    	WHEN cv.b08006_007p_cv >= 15 and b08006_007p_cv < 30 Then 'medium'
    	WHEN cv.b08006_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_007p_cv_cat,
CASE
    WHEN ch.b08006_007sd > 1.645 THEN True
    WHEN ch.b08006_007sd <= 1.645 THEN False
    WHEN ch.b08006_007sd IS NULL AND cv.b08006_007c_cv = 0 AND ch.b08006_007cm = 0 THEN True
    ELSE NULL
    END AS b08006_007sd_tf,

    CASE
    	WHEN cv.b08006_008e1_cv < 15 Then 'high'
    	WHEN cv.b08006_008e1_cv >= 15 and b08006_008e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_008e1_cv_cat,

    CASE
    	WHEN cv.b08006_008e2_cv < 15 Then 'high'
    	WHEN cv.b08006_008e2_cv >= 15 and b08006_008e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_008e2_cv_cat,

    CASE
    	WHEN cv.b08006_008c_cv < 15 Then 'high'
    	WHEN cv.b08006_008c_cv >= 15 and b08006_008c_cv < 30 Then 'medium'
    	WHEN cv.b08006_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_008c_cv_cat,

    CASE
    	WHEN cv.b08006_008p_cv < 15 Then 'high'
    	WHEN cv.b08006_008p_cv >= 15 and b08006_008p_cv < 30 Then 'medium'
    	WHEN cv.b08006_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_008p_cv_cat,
CASE
    WHEN ch.b08006_008sd > 1.645 THEN True
    WHEN ch.b08006_008sd <= 1.645 THEN False
    WHEN ch.b08006_008sd IS NULL AND cv.b08006_008c_cv = 0 AND ch.b08006_008cm = 0 THEN True
    ELSE NULL
    END AS b08006_008sd_tf,

    CASE
    	WHEN cv.b08006_009e1_cv < 15 Then 'high'
    	WHEN cv.b08006_009e1_cv >= 15 and b08006_009e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_009e1_cv_cat,

    CASE
    	WHEN cv.b08006_009e2_cv < 15 Then 'high'
    	WHEN cv.b08006_009e2_cv >= 15 and b08006_009e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_009e2_cv_cat,

    CASE
    	WHEN cv.b08006_009c_cv < 15 Then 'high'
    	WHEN cv.b08006_009c_cv >= 15 and b08006_009c_cv < 30 Then 'medium'
    	WHEN cv.b08006_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_009c_cv_cat,

    CASE
    	WHEN cv.b08006_009p_cv < 15 Then 'high'
    	WHEN cv.b08006_009p_cv >= 15 and b08006_009p_cv < 30 Then 'medium'
    	WHEN cv.b08006_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_009p_cv_cat,
CASE
    WHEN ch.b08006_009sd > 1.645 THEN True
    WHEN ch.b08006_009sd <= 1.645 THEN False
    WHEN ch.b08006_009sd IS NULL AND cv.b08006_009c_cv = 0 AND ch.b08006_009cm = 0 THEN True
    ELSE NULL
    END AS b08006_009sd_tf,

    CASE
    	WHEN cv.b08006_010e1_cv < 15 Then 'high'
    	WHEN cv.b08006_010e1_cv >= 15 and b08006_010e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_010e1_cv_cat,

    CASE
    	WHEN cv.b08006_010e2_cv < 15 Then 'high'
    	WHEN cv.b08006_010e2_cv >= 15 and b08006_010e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_010e2_cv_cat,

    CASE
    	WHEN cv.b08006_010c_cv < 15 Then 'high'
    	WHEN cv.b08006_010c_cv >= 15 and b08006_010c_cv < 30 Then 'medium'
    	WHEN cv.b08006_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_010c_cv_cat,

    CASE
    	WHEN cv.b08006_010p_cv < 15 Then 'high'
    	WHEN cv.b08006_010p_cv >= 15 and b08006_010p_cv < 30 Then 'medium'
    	WHEN cv.b08006_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_010p_cv_cat,
CASE
    WHEN ch.b08006_010sd > 1.645 THEN True
    WHEN ch.b08006_010sd <= 1.645 THEN False
    WHEN ch.b08006_010sd IS NULL AND cv.b08006_010c_cv = 0 AND ch.b08006_010cm = 0 THEN True
    ELSE NULL
    END AS b08006_010sd_tf,

    CASE
    	WHEN cv.b08006_011e1_cv < 15 Then 'high'
    	WHEN cv.b08006_011e1_cv >= 15 and b08006_011e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_011e1_cv_cat,

    CASE
    	WHEN cv.b08006_011e2_cv < 15 Then 'high'
    	WHEN cv.b08006_011e2_cv >= 15 and b08006_011e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_011e2_cv_cat,

    CASE
    	WHEN cv.b08006_011c_cv < 15 Then 'high'
    	WHEN cv.b08006_011c_cv >= 15 and b08006_011c_cv < 30 Then 'medium'
    	WHEN cv.b08006_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_011c_cv_cat,

    CASE
    	WHEN cv.b08006_011p_cv < 15 Then 'high'
    	WHEN cv.b08006_011p_cv >= 15 and b08006_011p_cv < 30 Then 'medium'
    	WHEN cv.b08006_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_011p_cv_cat,
CASE
    WHEN ch.b08006_011sd > 1.645 THEN True
    WHEN ch.b08006_011sd <= 1.645 THEN False
    WHEN ch.b08006_011sd IS NULL AND cv.b08006_011c_cv = 0 AND ch.b08006_011cm = 0 THEN True
    ELSE NULL
    END AS b08006_011sd_tf,

    CASE
    	WHEN cv.b08006_012e1_cv < 15 Then 'high'
    	WHEN cv.b08006_012e1_cv >= 15 and b08006_012e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_012e1_cv_cat,

    CASE
    	WHEN cv.b08006_012e2_cv < 15 Then 'high'
    	WHEN cv.b08006_012e2_cv >= 15 and b08006_012e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_012e2_cv_cat,

    CASE
    	WHEN cv.b08006_012c_cv < 15 Then 'high'
    	WHEN cv.b08006_012c_cv >= 15 and b08006_012c_cv < 30 Then 'medium'
    	WHEN cv.b08006_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_012c_cv_cat,

    CASE
    	WHEN cv.b08006_012p_cv < 15 Then 'high'
    	WHEN cv.b08006_012p_cv >= 15 and b08006_012p_cv < 30 Then 'medium'
    	WHEN cv.b08006_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_012p_cv_cat,
CASE
    WHEN ch.b08006_012sd > 1.645 THEN True
    WHEN ch.b08006_012sd <= 1.645 THEN False
    WHEN ch.b08006_012sd IS NULL AND cv.b08006_012c_cv = 0 AND ch.b08006_012cm = 0 THEN True
    ELSE NULL
    END AS b08006_012sd_tf,

    CASE
    	WHEN cv.b08006_013e1_cv < 15 Then 'high'
    	WHEN cv.b08006_013e1_cv >= 15 and b08006_013e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_013e1_cv_cat,

    CASE
    	WHEN cv.b08006_013e2_cv < 15 Then 'high'
    	WHEN cv.b08006_013e2_cv >= 15 and b08006_013e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_013e2_cv_cat,

    CASE
    	WHEN cv.b08006_013c_cv < 15 Then 'high'
    	WHEN cv.b08006_013c_cv >= 15 and b08006_013c_cv < 30 Then 'medium'
    	WHEN cv.b08006_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_013c_cv_cat,

    CASE
    	WHEN cv.b08006_013p_cv < 15 Then 'high'
    	WHEN cv.b08006_013p_cv >= 15 and b08006_013p_cv < 30 Then 'medium'
    	WHEN cv.b08006_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_013p_cv_cat,
CASE
    WHEN ch.b08006_013sd > 1.645 THEN True
    WHEN ch.b08006_013sd <= 1.645 THEN False
    WHEN ch.b08006_013sd IS NULL AND cv.b08006_013c_cv = 0 AND ch.b08006_013cm = 0 THEN True
    ELSE NULL
    END AS b08006_013sd_tf,

    CASE
    	WHEN cv.b08006_014e1_cv < 15 Then 'high'
    	WHEN cv.b08006_014e1_cv >= 15 and b08006_014e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_014e1_cv_cat,

    CASE
    	WHEN cv.b08006_014e2_cv < 15 Then 'high'
    	WHEN cv.b08006_014e2_cv >= 15 and b08006_014e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_014e2_cv_cat,

    CASE
    	WHEN cv.b08006_014c_cv < 15 Then 'high'
    	WHEN cv.b08006_014c_cv >= 15 and b08006_014c_cv < 30 Then 'medium'
    	WHEN cv.b08006_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_014c_cv_cat,

    CASE
    	WHEN cv.b08006_014p_cv < 15 Then 'high'
    	WHEN cv.b08006_014p_cv >= 15 and b08006_014p_cv < 30 Then 'medium'
    	WHEN cv.b08006_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_014p_cv_cat,
CASE
    WHEN ch.b08006_014sd > 1.645 THEN True
    WHEN ch.b08006_014sd <= 1.645 THEN False
    WHEN ch.b08006_014sd IS NULL AND cv.b08006_014c_cv = 0 AND ch.b08006_014cm = 0 THEN True
    ELSE NULL
    END AS b08006_014sd_tf,

    CASE
    	WHEN cv.b08006_015e1_cv < 15 Then 'high'
    	WHEN cv.b08006_015e1_cv >= 15 and b08006_015e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_015e1_cv_cat,

    CASE
    	WHEN cv.b08006_015e2_cv < 15 Then 'high'
    	WHEN cv.b08006_015e2_cv >= 15 and b08006_015e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_015e2_cv_cat,

    CASE
    	WHEN cv.b08006_015c_cv < 15 Then 'high'
    	WHEN cv.b08006_015c_cv >= 15 and b08006_015c_cv < 30 Then 'medium'
    	WHEN cv.b08006_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_015c_cv_cat,

    CASE
    	WHEN cv.b08006_015p_cv < 15 Then 'high'
    	WHEN cv.b08006_015p_cv >= 15 and b08006_015p_cv < 30 Then 'medium'
    	WHEN cv.b08006_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_015p_cv_cat,
CASE
    WHEN ch.b08006_015sd > 1.645 THEN True
    WHEN ch.b08006_015sd <= 1.645 THEN False
    WHEN ch.b08006_015sd IS NULL AND cv.b08006_015c_cv = 0 AND ch.b08006_015cm = 0 THEN True
    ELSE NULL
    END AS b08006_015sd_tf,

    CASE
    	WHEN cv.b08006_016e1_cv < 15 Then 'high'
    	WHEN cv.b08006_016e1_cv >= 15 and b08006_016e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_016e1_cv_cat,

    CASE
    	WHEN cv.b08006_016e2_cv < 15 Then 'high'
    	WHEN cv.b08006_016e2_cv >= 15 and b08006_016e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_016e2_cv_cat,

    CASE
    	WHEN cv.b08006_016c_cv < 15 Then 'high'
    	WHEN cv.b08006_016c_cv >= 15 and b08006_016c_cv < 30 Then 'medium'
    	WHEN cv.b08006_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_016c_cv_cat,

    CASE
    	WHEN cv.b08006_016p_cv < 15 Then 'high'
    	WHEN cv.b08006_016p_cv >= 15 and b08006_016p_cv < 30 Then 'medium'
    	WHEN cv.b08006_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_016p_cv_cat,
CASE
    WHEN ch.b08006_016sd > 1.645 THEN True
    WHEN ch.b08006_016sd <= 1.645 THEN False
    WHEN ch.b08006_016sd IS NULL AND cv.b08006_016c_cv = 0 AND ch.b08006_016cm = 0 THEN True
    ELSE NULL
    END AS b08006_016sd_tf,

    CASE
    	WHEN cv.b08006_017e1_cv < 15 Then 'high'
    	WHEN cv.b08006_017e1_cv >= 15 and b08006_017e1_cv < 30 Then 'medium'
    	WHEN cv.b08006_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_017e1_cv_cat,

    CASE
    	WHEN cv.b08006_017e2_cv < 15 Then 'high'
    	WHEN cv.b08006_017e2_cv >= 15 and b08006_017e2_cv < 30 Then 'medium'
    	WHEN cv.b08006_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_017e2_cv_cat,

    CASE
    	WHEN cv.b08006_017c_cv < 15 Then 'high'
    	WHEN cv.b08006_017c_cv >= 15 and b08006_017c_cv < 30 Then 'medium'
    	WHEN cv.b08006_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_017c_cv_cat,

    CASE
    	WHEN cv.b08006_017p_cv < 15 Then 'high'
    	WHEN cv.b08006_017p_cv >= 15 and b08006_017p_cv < 30 Then 'medium'
    	WHEN cv.b08006_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b08006_017p_cv_cat,
CASE
    WHEN ch.b08006_017sd > 1.645 THEN True
    WHEN ch.b08006_017sd <= 1.645 THEN False
    WHEN ch.b08006_017sd IS NULL AND cv.b08006_017c_cv = 0 AND ch.b08006_017cm = 0 THEN True
    ELSE NULL
    END AS b08006_017sd_tf

    FROM acs_b08006_cvs cv
    INNER JOIN acs_b08006_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b09001_cvsummary;
    CREATE VIEW acs_b09001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b09001_001e1_cv < 15 Then 'high'
    	WHEN cv.b09001_001e1_cv >= 15 and b09001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b09001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09001_001e1_cv_cat,

    CASE
    	WHEN cv.b09001_001e2_cv < 15 Then 'high'
    	WHEN cv.b09001_001e2_cv >= 15 and b09001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b09001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09001_001e2_cv_cat,

    CASE
    	WHEN cv.b09001_001c_cv < 15 Then 'high'
    	WHEN cv.b09001_001c_cv >= 15 and b09001_001c_cv < 30 Then 'medium'
    	WHEN cv.b09001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09001_001c_cv_cat,

    CASE
    	WHEN cv.b09001_001p_cv < 15 Then 'high'
    	WHEN cv.b09001_001p_cv >= 15 and b09001_001p_cv < 30 Then 'medium'
    	WHEN cv.b09001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09001_001p_cv_cat,
CASE
    WHEN ch.b09001_001sd > 1.645 THEN True
    WHEN ch.b09001_001sd <= 1.645 THEN False
    WHEN ch.b09001_001sd IS NULL AND cv.b09001_001c_cv = 0 AND ch.b09001_001cm = 0 THEN True
    ELSE NULL
    END AS b09001_001sd_tf

    FROM acs_b09001_cvs cv
    INNER JOIN acs_b09001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b09020_cvsummary;
    CREATE VIEW acs_b09020_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b09020_001e1_cv < 15 Then 'high'
    	WHEN cv.b09020_001e1_cv >= 15 and b09020_001e1_cv < 30 Then 'medium'
    	WHEN cv.b09020_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09020_001e1_cv_cat,

    CASE
    	WHEN cv.b09020_001e2_cv < 15 Then 'high'
    	WHEN cv.b09020_001e2_cv >= 15 and b09020_001e2_cv < 30 Then 'medium'
    	WHEN cv.b09020_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09020_001e2_cv_cat,

    CASE
    	WHEN cv.b09020_001c_cv < 15 Then 'high'
    	WHEN cv.b09020_001c_cv >= 15 and b09020_001c_cv < 30 Then 'medium'
    	WHEN cv.b09020_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09020_001c_cv_cat,

    CASE
    	WHEN cv.b09020_001p_cv < 15 Then 'high'
    	WHEN cv.b09020_001p_cv >= 15 and b09020_001p_cv < 30 Then 'medium'
    	WHEN cv.b09020_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b09020_001p_cv_cat,
CASE
    WHEN ch.b09020_001sd > 1.645 THEN True
    WHEN ch.b09020_001sd <= 1.645 THEN False
    WHEN ch.b09020_001sd IS NULL AND cv.b09020_001c_cv = 0 AND ch.b09020_001cm = 0 THEN True
    ELSE NULL
    END AS b09020_001sd_tf

    FROM acs_b09020_cvs cv
    INNER JOIN acs_b09020_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b11001_cvsummary;
    CREATE VIEW acs_b11001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b11001_001e1_cv < 15 Then 'high'
    	WHEN cv.b11001_001e1_cv >= 15 and b11001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_001e1_cv_cat,

    CASE
    	WHEN cv.b11001_001e2_cv < 15 Then 'high'
    	WHEN cv.b11001_001e2_cv >= 15 and b11001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_001e2_cv_cat,

    CASE
    	WHEN cv.b11001_001c_cv < 15 Then 'high'
    	WHEN cv.b11001_001c_cv >= 15 and b11001_001c_cv < 30 Then 'medium'
    	WHEN cv.b11001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_001c_cv_cat,

    CASE
    	WHEN cv.b11001_001p_cv < 15 Then 'high'
    	WHEN cv.b11001_001p_cv >= 15 and b11001_001p_cv < 30 Then 'medium'
    	WHEN cv.b11001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_001p_cv_cat,
CASE
    WHEN ch.b11001_001sd > 1.645 THEN True
    WHEN ch.b11001_001sd <= 1.645 THEN False
    WHEN ch.b11001_001sd IS NULL AND cv.b11001_001c_cv = 0 AND ch.b11001_001cm = 0 THEN True
    ELSE NULL
    END AS b11001_001sd_tf,

    CASE
    	WHEN cv.b11001_002e1_cv < 15 Then 'high'
    	WHEN cv.b11001_002e1_cv >= 15 and b11001_002e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_002e1_cv_cat,

    CASE
    	WHEN cv.b11001_002e2_cv < 15 Then 'high'
    	WHEN cv.b11001_002e2_cv >= 15 and b11001_002e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_002e2_cv_cat,

    CASE
    	WHEN cv.b11001_002c_cv < 15 Then 'high'
    	WHEN cv.b11001_002c_cv >= 15 and b11001_002c_cv < 30 Then 'medium'
    	WHEN cv.b11001_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_002c_cv_cat,

    CASE
    	WHEN cv.b11001_002p_cv < 15 Then 'high'
    	WHEN cv.b11001_002p_cv >= 15 and b11001_002p_cv < 30 Then 'medium'
    	WHEN cv.b11001_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_002p_cv_cat,
CASE
    WHEN ch.b11001_002sd > 1.645 THEN True
    WHEN ch.b11001_002sd <= 1.645 THEN False
    WHEN ch.b11001_002sd IS NULL AND cv.b11001_002c_cv = 0 AND ch.b11001_002cm = 0 THEN True
    ELSE NULL
    END AS b11001_002sd_tf,

    CASE
    	WHEN cv.b11001_003e1_cv < 15 Then 'high'
    	WHEN cv.b11001_003e1_cv >= 15 and b11001_003e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_003e1_cv_cat,

    CASE
    	WHEN cv.b11001_003e2_cv < 15 Then 'high'
    	WHEN cv.b11001_003e2_cv >= 15 and b11001_003e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_003e2_cv_cat,

    CASE
    	WHEN cv.b11001_003c_cv < 15 Then 'high'
    	WHEN cv.b11001_003c_cv >= 15 and b11001_003c_cv < 30 Then 'medium'
    	WHEN cv.b11001_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_003c_cv_cat,

    CASE
    	WHEN cv.b11001_003p_cv < 15 Then 'high'
    	WHEN cv.b11001_003p_cv >= 15 and b11001_003p_cv < 30 Then 'medium'
    	WHEN cv.b11001_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_003p_cv_cat,
CASE
    WHEN ch.b11001_003sd > 1.645 THEN True
    WHEN ch.b11001_003sd <= 1.645 THEN False
    WHEN ch.b11001_003sd IS NULL AND cv.b11001_003c_cv = 0 AND ch.b11001_003cm = 0 THEN True
    ELSE NULL
    END AS b11001_003sd_tf,

    CASE
    	WHEN cv.b11001_004e1_cv < 15 Then 'high'
    	WHEN cv.b11001_004e1_cv >= 15 and b11001_004e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_004e1_cv_cat,

    CASE
    	WHEN cv.b11001_004e2_cv < 15 Then 'high'
    	WHEN cv.b11001_004e2_cv >= 15 and b11001_004e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_004e2_cv_cat,

    CASE
    	WHEN cv.b11001_004c_cv < 15 Then 'high'
    	WHEN cv.b11001_004c_cv >= 15 and b11001_004c_cv < 30 Then 'medium'
    	WHEN cv.b11001_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_004c_cv_cat,

    CASE
    	WHEN cv.b11001_004p_cv < 15 Then 'high'
    	WHEN cv.b11001_004p_cv >= 15 and b11001_004p_cv < 30 Then 'medium'
    	WHEN cv.b11001_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_004p_cv_cat,
CASE
    WHEN ch.b11001_004sd > 1.645 THEN True
    WHEN ch.b11001_004sd <= 1.645 THEN False
    WHEN ch.b11001_004sd IS NULL AND cv.b11001_004c_cv = 0 AND ch.b11001_004cm = 0 THEN True
    ELSE NULL
    END AS b11001_004sd_tf,

    CASE
    	WHEN cv.b11001_005e1_cv < 15 Then 'high'
    	WHEN cv.b11001_005e1_cv >= 15 and b11001_005e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_005e1_cv_cat,

    CASE
    	WHEN cv.b11001_005e2_cv < 15 Then 'high'
    	WHEN cv.b11001_005e2_cv >= 15 and b11001_005e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_005e2_cv_cat,

    CASE
    	WHEN cv.b11001_005c_cv < 15 Then 'high'
    	WHEN cv.b11001_005c_cv >= 15 and b11001_005c_cv < 30 Then 'medium'
    	WHEN cv.b11001_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_005c_cv_cat,

    CASE
    	WHEN cv.b11001_005p_cv < 15 Then 'high'
    	WHEN cv.b11001_005p_cv >= 15 and b11001_005p_cv < 30 Then 'medium'
    	WHEN cv.b11001_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_005p_cv_cat,
CASE
    WHEN ch.b11001_005sd > 1.645 THEN True
    WHEN ch.b11001_005sd <= 1.645 THEN False
    WHEN ch.b11001_005sd IS NULL AND cv.b11001_005c_cv = 0 AND ch.b11001_005cm = 0 THEN True
    ELSE NULL
    END AS b11001_005sd_tf,

    CASE
    	WHEN cv.b11001_006e1_cv < 15 Then 'high'
    	WHEN cv.b11001_006e1_cv >= 15 and b11001_006e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_006e1_cv_cat,

    CASE
    	WHEN cv.b11001_006e2_cv < 15 Then 'high'
    	WHEN cv.b11001_006e2_cv >= 15 and b11001_006e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_006e2_cv_cat,

    CASE
    	WHEN cv.b11001_006c_cv < 15 Then 'high'
    	WHEN cv.b11001_006c_cv >= 15 and b11001_006c_cv < 30 Then 'medium'
    	WHEN cv.b11001_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_006c_cv_cat,

    CASE
    	WHEN cv.b11001_006p_cv < 15 Then 'high'
    	WHEN cv.b11001_006p_cv >= 15 and b11001_006p_cv < 30 Then 'medium'
    	WHEN cv.b11001_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_006p_cv_cat,
CASE
    WHEN ch.b11001_006sd > 1.645 THEN True
    WHEN ch.b11001_006sd <= 1.645 THEN False
    WHEN ch.b11001_006sd IS NULL AND cv.b11001_006c_cv = 0 AND ch.b11001_006cm = 0 THEN True
    ELSE NULL
    END AS b11001_006sd_tf,

    CASE
    	WHEN cv.b11001_007e1_cv < 15 Then 'high'
    	WHEN cv.b11001_007e1_cv >= 15 and b11001_007e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_007e1_cv_cat,

    CASE
    	WHEN cv.b11001_007e2_cv < 15 Then 'high'
    	WHEN cv.b11001_007e2_cv >= 15 and b11001_007e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_007e2_cv_cat,

    CASE
    	WHEN cv.b11001_007c_cv < 15 Then 'high'
    	WHEN cv.b11001_007c_cv >= 15 and b11001_007c_cv < 30 Then 'medium'
    	WHEN cv.b11001_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_007c_cv_cat,

    CASE
    	WHEN cv.b11001_007p_cv < 15 Then 'high'
    	WHEN cv.b11001_007p_cv >= 15 and b11001_007p_cv < 30 Then 'medium'
    	WHEN cv.b11001_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_007p_cv_cat,
CASE
    WHEN ch.b11001_007sd > 1.645 THEN True
    WHEN ch.b11001_007sd <= 1.645 THEN False
    WHEN ch.b11001_007sd IS NULL AND cv.b11001_007c_cv = 0 AND ch.b11001_007cm = 0 THEN True
    ELSE NULL
    END AS b11001_007sd_tf,

    CASE
    	WHEN cv.b11001_008e1_cv < 15 Then 'high'
    	WHEN cv.b11001_008e1_cv >= 15 and b11001_008e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_008e1_cv_cat,

    CASE
    	WHEN cv.b11001_008e2_cv < 15 Then 'high'
    	WHEN cv.b11001_008e2_cv >= 15 and b11001_008e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_008e2_cv_cat,

    CASE
    	WHEN cv.b11001_008c_cv < 15 Then 'high'
    	WHEN cv.b11001_008c_cv >= 15 and b11001_008c_cv < 30 Then 'medium'
    	WHEN cv.b11001_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_008c_cv_cat,

    CASE
    	WHEN cv.b11001_008p_cv < 15 Then 'high'
    	WHEN cv.b11001_008p_cv >= 15 and b11001_008p_cv < 30 Then 'medium'
    	WHEN cv.b11001_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_008p_cv_cat,
CASE
    WHEN ch.b11001_008sd > 1.645 THEN True
    WHEN ch.b11001_008sd <= 1.645 THEN False
    WHEN ch.b11001_008sd IS NULL AND cv.b11001_008c_cv = 0 AND ch.b11001_008cm = 0 THEN True
    ELSE NULL
    END AS b11001_008sd_tf,

    CASE
    	WHEN cv.b11001_009e1_cv < 15 Then 'high'
    	WHEN cv.b11001_009e1_cv >= 15 and b11001_009e1_cv < 30 Then 'medium'
    	WHEN cv.b11001_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_009e1_cv_cat,

    CASE
    	WHEN cv.b11001_009e2_cv < 15 Then 'high'
    	WHEN cv.b11001_009e2_cv >= 15 and b11001_009e2_cv < 30 Then 'medium'
    	WHEN cv.b11001_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_009e2_cv_cat,

    CASE
    	WHEN cv.b11001_009c_cv < 15 Then 'high'
    	WHEN cv.b11001_009c_cv >= 15 and b11001_009c_cv < 30 Then 'medium'
    	WHEN cv.b11001_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_009c_cv_cat,

    CASE
    	WHEN cv.b11001_009p_cv < 15 Then 'high'
    	WHEN cv.b11001_009p_cv >= 15 and b11001_009p_cv < 30 Then 'medium'
    	WHEN cv.b11001_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b11001_009p_cv_cat,
CASE
    WHEN ch.b11001_009sd > 1.645 THEN True
    WHEN ch.b11001_009sd <= 1.645 THEN False
    WHEN ch.b11001_009sd IS NULL AND cv.b11001_009c_cv = 0 AND ch.b11001_009cm = 0 THEN True
    ELSE NULL
    END AS b11001_009sd_tf

    FROM acs_b11001_cvs cv
    INNER JOIN acs_b11001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b13002_cvsummary;
    CREATE VIEW acs_b13002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b13002_001e1_cv < 15 Then 'high'
    	WHEN cv.b13002_001e1_cv >= 15 and b13002_001e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_001e1_cv_cat,

    CASE
    	WHEN cv.b13002_001e2_cv < 15 Then 'high'
    	WHEN cv.b13002_001e2_cv >= 15 and b13002_001e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_001e2_cv_cat,

    CASE
    	WHEN cv.b13002_001c_cv < 15 Then 'high'
    	WHEN cv.b13002_001c_cv >= 15 and b13002_001c_cv < 30 Then 'medium'
    	WHEN cv.b13002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_001c_cv_cat,

    CASE
    	WHEN cv.b13002_001p_cv < 15 Then 'high'
    	WHEN cv.b13002_001p_cv >= 15 and b13002_001p_cv < 30 Then 'medium'
    	WHEN cv.b13002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_001p_cv_cat,
CASE
    WHEN ch.b13002_001sd > 1.645 THEN True
    WHEN ch.b13002_001sd <= 1.645 THEN False
    WHEN ch.b13002_001sd IS NULL AND cv.b13002_001c_cv = 0 AND ch.b13002_001cm = 0 THEN True
    ELSE NULL
    END AS b13002_001sd_tf,

    CASE
    	WHEN cv.b13002_002e1_cv < 15 Then 'high'
    	WHEN cv.b13002_002e1_cv >= 15 and b13002_002e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_002e1_cv_cat,

    CASE
    	WHEN cv.b13002_002e2_cv < 15 Then 'high'
    	WHEN cv.b13002_002e2_cv >= 15 and b13002_002e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_002e2_cv_cat,

    CASE
    	WHEN cv.b13002_002c_cv < 15 Then 'high'
    	WHEN cv.b13002_002c_cv >= 15 and b13002_002c_cv < 30 Then 'medium'
    	WHEN cv.b13002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_002c_cv_cat,

    CASE
    	WHEN cv.b13002_002p_cv < 15 Then 'high'
    	WHEN cv.b13002_002p_cv >= 15 and b13002_002p_cv < 30 Then 'medium'
    	WHEN cv.b13002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_002p_cv_cat,
CASE
    WHEN ch.b13002_002sd > 1.645 THEN True
    WHEN ch.b13002_002sd <= 1.645 THEN False
    WHEN ch.b13002_002sd IS NULL AND cv.b13002_002c_cv = 0 AND ch.b13002_002cm = 0 THEN True
    ELSE NULL
    END AS b13002_002sd_tf,

    CASE
    	WHEN cv.b13002_003e1_cv < 15 Then 'high'
    	WHEN cv.b13002_003e1_cv >= 15 and b13002_003e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_003e1_cv_cat,

    CASE
    	WHEN cv.b13002_003e2_cv < 15 Then 'high'
    	WHEN cv.b13002_003e2_cv >= 15 and b13002_003e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_003e2_cv_cat,

    CASE
    	WHEN cv.b13002_003c_cv < 15 Then 'high'
    	WHEN cv.b13002_003c_cv >= 15 and b13002_003c_cv < 30 Then 'medium'
    	WHEN cv.b13002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_003c_cv_cat,

    CASE
    	WHEN cv.b13002_003p_cv < 15 Then 'high'
    	WHEN cv.b13002_003p_cv >= 15 and b13002_003p_cv < 30 Then 'medium'
    	WHEN cv.b13002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_003p_cv_cat,
CASE
    WHEN ch.b13002_003sd > 1.645 THEN True
    WHEN ch.b13002_003sd <= 1.645 THEN False
    WHEN ch.b13002_003sd IS NULL AND cv.b13002_003c_cv = 0 AND ch.b13002_003cm = 0 THEN True
    ELSE NULL
    END AS b13002_003sd_tf,

    CASE
    	WHEN cv.b13002_004e1_cv < 15 Then 'high'
    	WHEN cv.b13002_004e1_cv >= 15 and b13002_004e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_004e1_cv_cat,

    CASE
    	WHEN cv.b13002_004e2_cv < 15 Then 'high'
    	WHEN cv.b13002_004e2_cv >= 15 and b13002_004e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_004e2_cv_cat,

    CASE
    	WHEN cv.b13002_004c_cv < 15 Then 'high'
    	WHEN cv.b13002_004c_cv >= 15 and b13002_004c_cv < 30 Then 'medium'
    	WHEN cv.b13002_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_004c_cv_cat,

    CASE
    	WHEN cv.b13002_004p_cv < 15 Then 'high'
    	WHEN cv.b13002_004p_cv >= 15 and b13002_004p_cv < 30 Then 'medium'
    	WHEN cv.b13002_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_004p_cv_cat,
CASE
    WHEN ch.b13002_004sd > 1.645 THEN True
    WHEN ch.b13002_004sd <= 1.645 THEN False
    WHEN ch.b13002_004sd IS NULL AND cv.b13002_004c_cv = 0 AND ch.b13002_004cm = 0 THEN True
    ELSE NULL
    END AS b13002_004sd_tf,

    CASE
    	WHEN cv.b13002_005e1_cv < 15 Then 'high'
    	WHEN cv.b13002_005e1_cv >= 15 and b13002_005e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_005e1_cv_cat,

    CASE
    	WHEN cv.b13002_005e2_cv < 15 Then 'high'
    	WHEN cv.b13002_005e2_cv >= 15 and b13002_005e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_005e2_cv_cat,

    CASE
    	WHEN cv.b13002_005c_cv < 15 Then 'high'
    	WHEN cv.b13002_005c_cv >= 15 and b13002_005c_cv < 30 Then 'medium'
    	WHEN cv.b13002_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_005c_cv_cat,

    CASE
    	WHEN cv.b13002_005p_cv < 15 Then 'high'
    	WHEN cv.b13002_005p_cv >= 15 and b13002_005p_cv < 30 Then 'medium'
    	WHEN cv.b13002_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_005p_cv_cat,
CASE
    WHEN ch.b13002_005sd > 1.645 THEN True
    WHEN ch.b13002_005sd <= 1.645 THEN False
    WHEN ch.b13002_005sd IS NULL AND cv.b13002_005c_cv = 0 AND ch.b13002_005cm = 0 THEN True
    ELSE NULL
    END AS b13002_005sd_tf,

    CASE
    	WHEN cv.b13002_006e1_cv < 15 Then 'high'
    	WHEN cv.b13002_006e1_cv >= 15 and b13002_006e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_006e1_cv_cat,

    CASE
    	WHEN cv.b13002_006e2_cv < 15 Then 'high'
    	WHEN cv.b13002_006e2_cv >= 15 and b13002_006e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_006e2_cv_cat,

    CASE
    	WHEN cv.b13002_006c_cv < 15 Then 'high'
    	WHEN cv.b13002_006c_cv >= 15 and b13002_006c_cv < 30 Then 'medium'
    	WHEN cv.b13002_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_006c_cv_cat,

    CASE
    	WHEN cv.b13002_006p_cv < 15 Then 'high'
    	WHEN cv.b13002_006p_cv >= 15 and b13002_006p_cv < 30 Then 'medium'
    	WHEN cv.b13002_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_006p_cv_cat,
CASE
    WHEN ch.b13002_006sd > 1.645 THEN True
    WHEN ch.b13002_006sd <= 1.645 THEN False
    WHEN ch.b13002_006sd IS NULL AND cv.b13002_006c_cv = 0 AND ch.b13002_006cm = 0 THEN True
    ELSE NULL
    END AS b13002_006sd_tf,

    CASE
    	WHEN cv.b13002_007e1_cv < 15 Then 'high'
    	WHEN cv.b13002_007e1_cv >= 15 and b13002_007e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_007e1_cv_cat,

    CASE
    	WHEN cv.b13002_007e2_cv < 15 Then 'high'
    	WHEN cv.b13002_007e2_cv >= 15 and b13002_007e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_007e2_cv_cat,

    CASE
    	WHEN cv.b13002_007c_cv < 15 Then 'high'
    	WHEN cv.b13002_007c_cv >= 15 and b13002_007c_cv < 30 Then 'medium'
    	WHEN cv.b13002_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_007c_cv_cat,

    CASE
    	WHEN cv.b13002_007p_cv < 15 Then 'high'
    	WHEN cv.b13002_007p_cv >= 15 and b13002_007p_cv < 30 Then 'medium'
    	WHEN cv.b13002_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_007p_cv_cat,
CASE
    WHEN ch.b13002_007sd > 1.645 THEN True
    WHEN ch.b13002_007sd <= 1.645 THEN False
    WHEN ch.b13002_007sd IS NULL AND cv.b13002_007c_cv = 0 AND ch.b13002_007cm = 0 THEN True
    ELSE NULL
    END AS b13002_007sd_tf,

    CASE
    	WHEN cv.b13002_008e1_cv < 15 Then 'high'
    	WHEN cv.b13002_008e1_cv >= 15 and b13002_008e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_008e1_cv_cat,

    CASE
    	WHEN cv.b13002_008e2_cv < 15 Then 'high'
    	WHEN cv.b13002_008e2_cv >= 15 and b13002_008e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_008e2_cv_cat,

    CASE
    	WHEN cv.b13002_008c_cv < 15 Then 'high'
    	WHEN cv.b13002_008c_cv >= 15 and b13002_008c_cv < 30 Then 'medium'
    	WHEN cv.b13002_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_008c_cv_cat,

    CASE
    	WHEN cv.b13002_008p_cv < 15 Then 'high'
    	WHEN cv.b13002_008p_cv >= 15 and b13002_008p_cv < 30 Then 'medium'
    	WHEN cv.b13002_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_008p_cv_cat,
CASE
    WHEN ch.b13002_008sd > 1.645 THEN True
    WHEN ch.b13002_008sd <= 1.645 THEN False
    WHEN ch.b13002_008sd IS NULL AND cv.b13002_008c_cv = 0 AND ch.b13002_008cm = 0 THEN True
    ELSE NULL
    END AS b13002_008sd_tf,

    CASE
    	WHEN cv.b13002_009e1_cv < 15 Then 'high'
    	WHEN cv.b13002_009e1_cv >= 15 and b13002_009e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_009e1_cv_cat,

    CASE
    	WHEN cv.b13002_009e2_cv < 15 Then 'high'
    	WHEN cv.b13002_009e2_cv >= 15 and b13002_009e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_009e2_cv_cat,

    CASE
    	WHEN cv.b13002_009c_cv < 15 Then 'high'
    	WHEN cv.b13002_009c_cv >= 15 and b13002_009c_cv < 30 Then 'medium'
    	WHEN cv.b13002_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_009c_cv_cat,

    CASE
    	WHEN cv.b13002_009p_cv < 15 Then 'high'
    	WHEN cv.b13002_009p_cv >= 15 and b13002_009p_cv < 30 Then 'medium'
    	WHEN cv.b13002_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_009p_cv_cat,
CASE
    WHEN ch.b13002_009sd > 1.645 THEN True
    WHEN ch.b13002_009sd <= 1.645 THEN False
    WHEN ch.b13002_009sd IS NULL AND cv.b13002_009c_cv = 0 AND ch.b13002_009cm = 0 THEN True
    ELSE NULL
    END AS b13002_009sd_tf,

    CASE
    	WHEN cv.b13002_010e1_cv < 15 Then 'high'
    	WHEN cv.b13002_010e1_cv >= 15 and b13002_010e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_010e1_cv_cat,

    CASE
    	WHEN cv.b13002_010e2_cv < 15 Then 'high'
    	WHEN cv.b13002_010e2_cv >= 15 and b13002_010e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_010e2_cv_cat,

    CASE
    	WHEN cv.b13002_010c_cv < 15 Then 'high'
    	WHEN cv.b13002_010c_cv >= 15 and b13002_010c_cv < 30 Then 'medium'
    	WHEN cv.b13002_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_010c_cv_cat,

    CASE
    	WHEN cv.b13002_010p_cv < 15 Then 'high'
    	WHEN cv.b13002_010p_cv >= 15 and b13002_010p_cv < 30 Then 'medium'
    	WHEN cv.b13002_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_010p_cv_cat,
CASE
    WHEN ch.b13002_010sd > 1.645 THEN True
    WHEN ch.b13002_010sd <= 1.645 THEN False
    WHEN ch.b13002_010sd IS NULL AND cv.b13002_010c_cv = 0 AND ch.b13002_010cm = 0 THEN True
    ELSE NULL
    END AS b13002_010sd_tf,

    CASE
    	WHEN cv.b13002_011e1_cv < 15 Then 'high'
    	WHEN cv.b13002_011e1_cv >= 15 and b13002_011e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_011e1_cv_cat,

    CASE
    	WHEN cv.b13002_011e2_cv < 15 Then 'high'
    	WHEN cv.b13002_011e2_cv >= 15 and b13002_011e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_011e2_cv_cat,

    CASE
    	WHEN cv.b13002_011c_cv < 15 Then 'high'
    	WHEN cv.b13002_011c_cv >= 15 and b13002_011c_cv < 30 Then 'medium'
    	WHEN cv.b13002_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_011c_cv_cat,

    CASE
    	WHEN cv.b13002_011p_cv < 15 Then 'high'
    	WHEN cv.b13002_011p_cv >= 15 and b13002_011p_cv < 30 Then 'medium'
    	WHEN cv.b13002_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_011p_cv_cat,
CASE
    WHEN ch.b13002_011sd > 1.645 THEN True
    WHEN ch.b13002_011sd <= 1.645 THEN False
    WHEN ch.b13002_011sd IS NULL AND cv.b13002_011c_cv = 0 AND ch.b13002_011cm = 0 THEN True
    ELSE NULL
    END AS b13002_011sd_tf,

    CASE
    	WHEN cv.b13002_012e1_cv < 15 Then 'high'
    	WHEN cv.b13002_012e1_cv >= 15 and b13002_012e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_012e1_cv_cat,

    CASE
    	WHEN cv.b13002_012e2_cv < 15 Then 'high'
    	WHEN cv.b13002_012e2_cv >= 15 and b13002_012e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_012e2_cv_cat,

    CASE
    	WHEN cv.b13002_012c_cv < 15 Then 'high'
    	WHEN cv.b13002_012c_cv >= 15 and b13002_012c_cv < 30 Then 'medium'
    	WHEN cv.b13002_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_012c_cv_cat,

    CASE
    	WHEN cv.b13002_012p_cv < 15 Then 'high'
    	WHEN cv.b13002_012p_cv >= 15 and b13002_012p_cv < 30 Then 'medium'
    	WHEN cv.b13002_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_012p_cv_cat,
CASE
    WHEN ch.b13002_012sd > 1.645 THEN True
    WHEN ch.b13002_012sd <= 1.645 THEN False
    WHEN ch.b13002_012sd IS NULL AND cv.b13002_012c_cv = 0 AND ch.b13002_012cm = 0 THEN True
    ELSE NULL
    END AS b13002_012sd_tf,

    CASE
    	WHEN cv.b13002_013e1_cv < 15 Then 'high'
    	WHEN cv.b13002_013e1_cv >= 15 and b13002_013e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_013e1_cv_cat,

    CASE
    	WHEN cv.b13002_013e2_cv < 15 Then 'high'
    	WHEN cv.b13002_013e2_cv >= 15 and b13002_013e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_013e2_cv_cat,

    CASE
    	WHEN cv.b13002_013c_cv < 15 Then 'high'
    	WHEN cv.b13002_013c_cv >= 15 and b13002_013c_cv < 30 Then 'medium'
    	WHEN cv.b13002_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_013c_cv_cat,

    CASE
    	WHEN cv.b13002_013p_cv < 15 Then 'high'
    	WHEN cv.b13002_013p_cv >= 15 and b13002_013p_cv < 30 Then 'medium'
    	WHEN cv.b13002_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_013p_cv_cat,
CASE
    WHEN ch.b13002_013sd > 1.645 THEN True
    WHEN ch.b13002_013sd <= 1.645 THEN False
    WHEN ch.b13002_013sd IS NULL AND cv.b13002_013c_cv = 0 AND ch.b13002_013cm = 0 THEN True
    ELSE NULL
    END AS b13002_013sd_tf,

    CASE
    	WHEN cv.b13002_014e1_cv < 15 Then 'high'
    	WHEN cv.b13002_014e1_cv >= 15 and b13002_014e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_014e1_cv_cat,

    CASE
    	WHEN cv.b13002_014e2_cv < 15 Then 'high'
    	WHEN cv.b13002_014e2_cv >= 15 and b13002_014e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_014e2_cv_cat,

    CASE
    	WHEN cv.b13002_014c_cv < 15 Then 'high'
    	WHEN cv.b13002_014c_cv >= 15 and b13002_014c_cv < 30 Then 'medium'
    	WHEN cv.b13002_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_014c_cv_cat,

    CASE
    	WHEN cv.b13002_014p_cv < 15 Then 'high'
    	WHEN cv.b13002_014p_cv >= 15 and b13002_014p_cv < 30 Then 'medium'
    	WHEN cv.b13002_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_014p_cv_cat,
CASE
    WHEN ch.b13002_014sd > 1.645 THEN True
    WHEN ch.b13002_014sd <= 1.645 THEN False
    WHEN ch.b13002_014sd IS NULL AND cv.b13002_014c_cv = 0 AND ch.b13002_014cm = 0 THEN True
    ELSE NULL
    END AS b13002_014sd_tf,

    CASE
    	WHEN cv.b13002_015e1_cv < 15 Then 'high'
    	WHEN cv.b13002_015e1_cv >= 15 and b13002_015e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_015e1_cv_cat,

    CASE
    	WHEN cv.b13002_015e2_cv < 15 Then 'high'
    	WHEN cv.b13002_015e2_cv >= 15 and b13002_015e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_015e2_cv_cat,

    CASE
    	WHEN cv.b13002_015c_cv < 15 Then 'high'
    	WHEN cv.b13002_015c_cv >= 15 and b13002_015c_cv < 30 Then 'medium'
    	WHEN cv.b13002_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_015c_cv_cat,

    CASE
    	WHEN cv.b13002_015p_cv < 15 Then 'high'
    	WHEN cv.b13002_015p_cv >= 15 and b13002_015p_cv < 30 Then 'medium'
    	WHEN cv.b13002_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_015p_cv_cat,
CASE
    WHEN ch.b13002_015sd > 1.645 THEN True
    WHEN ch.b13002_015sd <= 1.645 THEN False
    WHEN ch.b13002_015sd IS NULL AND cv.b13002_015c_cv = 0 AND ch.b13002_015cm = 0 THEN True
    ELSE NULL
    END AS b13002_015sd_tf,

    CASE
    	WHEN cv.b13002_016e1_cv < 15 Then 'high'
    	WHEN cv.b13002_016e1_cv >= 15 and b13002_016e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_016e1_cv_cat,

    CASE
    	WHEN cv.b13002_016e2_cv < 15 Then 'high'
    	WHEN cv.b13002_016e2_cv >= 15 and b13002_016e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_016e2_cv_cat,

    CASE
    	WHEN cv.b13002_016c_cv < 15 Then 'high'
    	WHEN cv.b13002_016c_cv >= 15 and b13002_016c_cv < 30 Then 'medium'
    	WHEN cv.b13002_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_016c_cv_cat,

    CASE
    	WHEN cv.b13002_016p_cv < 15 Then 'high'
    	WHEN cv.b13002_016p_cv >= 15 and b13002_016p_cv < 30 Then 'medium'
    	WHEN cv.b13002_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_016p_cv_cat,
CASE
    WHEN ch.b13002_016sd > 1.645 THEN True
    WHEN ch.b13002_016sd <= 1.645 THEN False
    WHEN ch.b13002_016sd IS NULL AND cv.b13002_016c_cv = 0 AND ch.b13002_016cm = 0 THEN True
    ELSE NULL
    END AS b13002_016sd_tf,

    CASE
    	WHEN cv.b13002_017e1_cv < 15 Then 'high'
    	WHEN cv.b13002_017e1_cv >= 15 and b13002_017e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_017e1_cv_cat,

    CASE
    	WHEN cv.b13002_017e2_cv < 15 Then 'high'
    	WHEN cv.b13002_017e2_cv >= 15 and b13002_017e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_017e2_cv_cat,

    CASE
    	WHEN cv.b13002_017c_cv < 15 Then 'high'
    	WHEN cv.b13002_017c_cv >= 15 and b13002_017c_cv < 30 Then 'medium'
    	WHEN cv.b13002_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_017c_cv_cat,

    CASE
    	WHEN cv.b13002_017p_cv < 15 Then 'high'
    	WHEN cv.b13002_017p_cv >= 15 and b13002_017p_cv < 30 Then 'medium'
    	WHEN cv.b13002_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_017p_cv_cat,
CASE
    WHEN ch.b13002_017sd > 1.645 THEN True
    WHEN ch.b13002_017sd <= 1.645 THEN False
    WHEN ch.b13002_017sd IS NULL AND cv.b13002_017c_cv = 0 AND ch.b13002_017cm = 0 THEN True
    ELSE NULL
    END AS b13002_017sd_tf,

    CASE
    	WHEN cv.b13002_018e1_cv < 15 Then 'high'
    	WHEN cv.b13002_018e1_cv >= 15 and b13002_018e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_018e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_018e1_cv_cat,

    CASE
    	WHEN cv.b13002_018e2_cv < 15 Then 'high'
    	WHEN cv.b13002_018e2_cv >= 15 and b13002_018e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_018e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_018e2_cv_cat,

    CASE
    	WHEN cv.b13002_018c_cv < 15 Then 'high'
    	WHEN cv.b13002_018c_cv >= 15 and b13002_018c_cv < 30 Then 'medium'
    	WHEN cv.b13002_018c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_018c_cv_cat,

    CASE
    	WHEN cv.b13002_018p_cv < 15 Then 'high'
    	WHEN cv.b13002_018p_cv >= 15 and b13002_018p_cv < 30 Then 'medium'
    	WHEN cv.b13002_018p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_018p_cv_cat,
CASE
    WHEN ch.b13002_018sd > 1.645 THEN True
    WHEN ch.b13002_018sd <= 1.645 THEN False
    WHEN ch.b13002_018sd IS NULL AND cv.b13002_018c_cv = 0 AND ch.b13002_018cm = 0 THEN True
    ELSE NULL
    END AS b13002_018sd_tf,

    CASE
    	WHEN cv.b13002_019e1_cv < 15 Then 'high'
    	WHEN cv.b13002_019e1_cv >= 15 and b13002_019e1_cv < 30 Then 'medium'
    	WHEN cv.b13002_019e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_019e1_cv_cat,

    CASE
    	WHEN cv.b13002_019e2_cv < 15 Then 'high'
    	WHEN cv.b13002_019e2_cv >= 15 and b13002_019e2_cv < 30 Then 'medium'
    	WHEN cv.b13002_019e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_019e2_cv_cat,

    CASE
    	WHEN cv.b13002_019c_cv < 15 Then 'high'
    	WHEN cv.b13002_019c_cv >= 15 and b13002_019c_cv < 30 Then 'medium'
    	WHEN cv.b13002_019c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_019c_cv_cat,

    CASE
    	WHEN cv.b13002_019p_cv < 15 Then 'high'
    	WHEN cv.b13002_019p_cv >= 15 and b13002_019p_cv < 30 Then 'medium'
    	WHEN cv.b13002_019p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b13002_019p_cv_cat,
CASE
    WHEN ch.b13002_019sd > 1.645 THEN True
    WHEN ch.b13002_019sd <= 1.645 THEN False
    WHEN ch.b13002_019sd IS NULL AND cv.b13002_019c_cv = 0 AND ch.b13002_019cm = 0 THEN True
    ELSE NULL
    END AS b13002_019sd_tf

    FROM acs_b13002_cvs cv
    INNER JOIN acs_b13002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b14001_cvsummary;
    CREATE VIEW acs_b14001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b14001_001e1_cv < 15 Then 'high'
    	WHEN cv.b14001_001e1_cv >= 15 and b14001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_001e1_cv_cat,

    CASE
    	WHEN cv.b14001_001e2_cv < 15 Then 'high'
    	WHEN cv.b14001_001e2_cv >= 15 and b14001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_001e2_cv_cat,

    CASE
    	WHEN cv.b14001_001c_cv < 15 Then 'high'
    	WHEN cv.b14001_001c_cv >= 15 and b14001_001c_cv < 30 Then 'medium'
    	WHEN cv.b14001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_001c_cv_cat,

    CASE
    	WHEN cv.b14001_001p_cv < 15 Then 'high'
    	WHEN cv.b14001_001p_cv >= 15 and b14001_001p_cv < 30 Then 'medium'
    	WHEN cv.b14001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_001p_cv_cat,
CASE
    WHEN ch.b14001_001sd > 1.645 THEN True
    WHEN ch.b14001_001sd <= 1.645 THEN False
    WHEN ch.b14001_001sd IS NULL AND cv.b14001_001c_cv = 0 AND ch.b14001_001cm = 0 THEN True
    ELSE NULL
    END AS b14001_001sd_tf,

    CASE
    	WHEN cv.b14001_002e1_cv < 15 Then 'high'
    	WHEN cv.b14001_002e1_cv >= 15 and b14001_002e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_002e1_cv_cat,

    CASE
    	WHEN cv.b14001_002e2_cv < 15 Then 'high'
    	WHEN cv.b14001_002e2_cv >= 15 and b14001_002e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_002e2_cv_cat,

    CASE
    	WHEN cv.b14001_002c_cv < 15 Then 'high'
    	WHEN cv.b14001_002c_cv >= 15 and b14001_002c_cv < 30 Then 'medium'
    	WHEN cv.b14001_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_002c_cv_cat,

    CASE
    	WHEN cv.b14001_002p_cv < 15 Then 'high'
    	WHEN cv.b14001_002p_cv >= 15 and b14001_002p_cv < 30 Then 'medium'
    	WHEN cv.b14001_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_002p_cv_cat,
CASE
    WHEN ch.b14001_002sd > 1.645 THEN True
    WHEN ch.b14001_002sd <= 1.645 THEN False
    WHEN ch.b14001_002sd IS NULL AND cv.b14001_002c_cv = 0 AND ch.b14001_002cm = 0 THEN True
    ELSE NULL
    END AS b14001_002sd_tf,

    CASE
    	WHEN cv.b14001_003e1_cv < 15 Then 'high'
    	WHEN cv.b14001_003e1_cv >= 15 and b14001_003e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_003e1_cv_cat,

    CASE
    	WHEN cv.b14001_003e2_cv < 15 Then 'high'
    	WHEN cv.b14001_003e2_cv >= 15 and b14001_003e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_003e2_cv_cat,

    CASE
    	WHEN cv.b14001_003c_cv < 15 Then 'high'
    	WHEN cv.b14001_003c_cv >= 15 and b14001_003c_cv < 30 Then 'medium'
    	WHEN cv.b14001_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_003c_cv_cat,

    CASE
    	WHEN cv.b14001_003p_cv < 15 Then 'high'
    	WHEN cv.b14001_003p_cv >= 15 and b14001_003p_cv < 30 Then 'medium'
    	WHEN cv.b14001_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_003p_cv_cat,
CASE
    WHEN ch.b14001_003sd > 1.645 THEN True
    WHEN ch.b14001_003sd <= 1.645 THEN False
    WHEN ch.b14001_003sd IS NULL AND cv.b14001_003c_cv = 0 AND ch.b14001_003cm = 0 THEN True
    ELSE NULL
    END AS b14001_003sd_tf,

    CASE
    	WHEN cv.b14001_004e1_cv < 15 Then 'high'
    	WHEN cv.b14001_004e1_cv >= 15 and b14001_004e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_004e1_cv_cat,

    CASE
    	WHEN cv.b14001_004e2_cv < 15 Then 'high'
    	WHEN cv.b14001_004e2_cv >= 15 and b14001_004e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_004e2_cv_cat,

    CASE
    	WHEN cv.b14001_004c_cv < 15 Then 'high'
    	WHEN cv.b14001_004c_cv >= 15 and b14001_004c_cv < 30 Then 'medium'
    	WHEN cv.b14001_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_004c_cv_cat,

    CASE
    	WHEN cv.b14001_004p_cv < 15 Then 'high'
    	WHEN cv.b14001_004p_cv >= 15 and b14001_004p_cv < 30 Then 'medium'
    	WHEN cv.b14001_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_004p_cv_cat,
CASE
    WHEN ch.b14001_004sd > 1.645 THEN True
    WHEN ch.b14001_004sd <= 1.645 THEN False
    WHEN ch.b14001_004sd IS NULL AND cv.b14001_004c_cv = 0 AND ch.b14001_004cm = 0 THEN True
    ELSE NULL
    END AS b14001_004sd_tf,

    CASE
    	WHEN cv.b14001_005e1_cv < 15 Then 'high'
    	WHEN cv.b14001_005e1_cv >= 15 and b14001_005e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_005e1_cv_cat,

    CASE
    	WHEN cv.b14001_005e2_cv < 15 Then 'high'
    	WHEN cv.b14001_005e2_cv >= 15 and b14001_005e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_005e2_cv_cat,

    CASE
    	WHEN cv.b14001_005c_cv < 15 Then 'high'
    	WHEN cv.b14001_005c_cv >= 15 and b14001_005c_cv < 30 Then 'medium'
    	WHEN cv.b14001_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_005c_cv_cat,

    CASE
    	WHEN cv.b14001_005p_cv < 15 Then 'high'
    	WHEN cv.b14001_005p_cv >= 15 and b14001_005p_cv < 30 Then 'medium'
    	WHEN cv.b14001_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_005p_cv_cat,
CASE
    WHEN ch.b14001_005sd > 1.645 THEN True
    WHEN ch.b14001_005sd <= 1.645 THEN False
    WHEN ch.b14001_005sd IS NULL AND cv.b14001_005c_cv = 0 AND ch.b14001_005cm = 0 THEN True
    ELSE NULL
    END AS b14001_005sd_tf,

    CASE
    	WHEN cv.b14001_006e1_cv < 15 Then 'high'
    	WHEN cv.b14001_006e1_cv >= 15 and b14001_006e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_006e1_cv_cat,

    CASE
    	WHEN cv.b14001_006e2_cv < 15 Then 'high'
    	WHEN cv.b14001_006e2_cv >= 15 and b14001_006e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_006e2_cv_cat,

    CASE
    	WHEN cv.b14001_006c_cv < 15 Then 'high'
    	WHEN cv.b14001_006c_cv >= 15 and b14001_006c_cv < 30 Then 'medium'
    	WHEN cv.b14001_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_006c_cv_cat,

    CASE
    	WHEN cv.b14001_006p_cv < 15 Then 'high'
    	WHEN cv.b14001_006p_cv >= 15 and b14001_006p_cv < 30 Then 'medium'
    	WHEN cv.b14001_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_006p_cv_cat,
CASE
    WHEN ch.b14001_006sd > 1.645 THEN True
    WHEN ch.b14001_006sd <= 1.645 THEN False
    WHEN ch.b14001_006sd IS NULL AND cv.b14001_006c_cv = 0 AND ch.b14001_006cm = 0 THEN True
    ELSE NULL
    END AS b14001_006sd_tf,

    CASE
    	WHEN cv.b14001_007e1_cv < 15 Then 'high'
    	WHEN cv.b14001_007e1_cv >= 15 and b14001_007e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_007e1_cv_cat,

    CASE
    	WHEN cv.b14001_007e2_cv < 15 Then 'high'
    	WHEN cv.b14001_007e2_cv >= 15 and b14001_007e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_007e2_cv_cat,

    CASE
    	WHEN cv.b14001_007c_cv < 15 Then 'high'
    	WHEN cv.b14001_007c_cv >= 15 and b14001_007c_cv < 30 Then 'medium'
    	WHEN cv.b14001_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_007c_cv_cat,

    CASE
    	WHEN cv.b14001_007p_cv < 15 Then 'high'
    	WHEN cv.b14001_007p_cv >= 15 and b14001_007p_cv < 30 Then 'medium'
    	WHEN cv.b14001_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_007p_cv_cat,
CASE
    WHEN ch.b14001_007sd > 1.645 THEN True
    WHEN ch.b14001_007sd <= 1.645 THEN False
    WHEN ch.b14001_007sd IS NULL AND cv.b14001_007c_cv = 0 AND ch.b14001_007cm = 0 THEN True
    ELSE NULL
    END AS b14001_007sd_tf,

    CASE
    	WHEN cv.b14001_008e1_cv < 15 Then 'high'
    	WHEN cv.b14001_008e1_cv >= 15 and b14001_008e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_008e1_cv_cat,

    CASE
    	WHEN cv.b14001_008e2_cv < 15 Then 'high'
    	WHEN cv.b14001_008e2_cv >= 15 and b14001_008e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_008e2_cv_cat,

    CASE
    	WHEN cv.b14001_008c_cv < 15 Then 'high'
    	WHEN cv.b14001_008c_cv >= 15 and b14001_008c_cv < 30 Then 'medium'
    	WHEN cv.b14001_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_008c_cv_cat,

    CASE
    	WHEN cv.b14001_008p_cv < 15 Then 'high'
    	WHEN cv.b14001_008p_cv >= 15 and b14001_008p_cv < 30 Then 'medium'
    	WHEN cv.b14001_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_008p_cv_cat,
CASE
    WHEN ch.b14001_008sd > 1.645 THEN True
    WHEN ch.b14001_008sd <= 1.645 THEN False
    WHEN ch.b14001_008sd IS NULL AND cv.b14001_008c_cv = 0 AND ch.b14001_008cm = 0 THEN True
    ELSE NULL
    END AS b14001_008sd_tf,

    CASE
    	WHEN cv.b14001_009e1_cv < 15 Then 'high'
    	WHEN cv.b14001_009e1_cv >= 15 and b14001_009e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_009e1_cv_cat,

    CASE
    	WHEN cv.b14001_009e2_cv < 15 Then 'high'
    	WHEN cv.b14001_009e2_cv >= 15 and b14001_009e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_009e2_cv_cat,

    CASE
    	WHEN cv.b14001_009c_cv < 15 Then 'high'
    	WHEN cv.b14001_009c_cv >= 15 and b14001_009c_cv < 30 Then 'medium'
    	WHEN cv.b14001_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_009c_cv_cat,

    CASE
    	WHEN cv.b14001_009p_cv < 15 Then 'high'
    	WHEN cv.b14001_009p_cv >= 15 and b14001_009p_cv < 30 Then 'medium'
    	WHEN cv.b14001_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_009p_cv_cat,
CASE
    WHEN ch.b14001_009sd > 1.645 THEN True
    WHEN ch.b14001_009sd <= 1.645 THEN False
    WHEN ch.b14001_009sd IS NULL AND cv.b14001_009c_cv = 0 AND ch.b14001_009cm = 0 THEN True
    ELSE NULL
    END AS b14001_009sd_tf,

    CASE
    	WHEN cv.b14001_010e1_cv < 15 Then 'high'
    	WHEN cv.b14001_010e1_cv >= 15 and b14001_010e1_cv < 30 Then 'medium'
    	WHEN cv.b14001_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_010e1_cv_cat,

    CASE
    	WHEN cv.b14001_010e2_cv < 15 Then 'high'
    	WHEN cv.b14001_010e2_cv >= 15 and b14001_010e2_cv < 30 Then 'medium'
    	WHEN cv.b14001_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_010e2_cv_cat,

    CASE
    	WHEN cv.b14001_010c_cv < 15 Then 'high'
    	WHEN cv.b14001_010c_cv >= 15 and b14001_010c_cv < 30 Then 'medium'
    	WHEN cv.b14001_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_010c_cv_cat,

    CASE
    	WHEN cv.b14001_010p_cv < 15 Then 'high'
    	WHEN cv.b14001_010p_cv >= 15 and b14001_010p_cv < 30 Then 'medium'
    	WHEN cv.b14001_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b14001_010p_cv_cat,
CASE
    WHEN ch.b14001_010sd > 1.645 THEN True
    WHEN ch.b14001_010sd <= 1.645 THEN False
    WHEN ch.b14001_010sd IS NULL AND cv.b14001_010c_cv = 0 AND ch.b14001_010cm = 0 THEN True
    ELSE NULL
    END AS b14001_010sd_tf

    FROM acs_b14001_cvs cv
    INNER JOIN acs_b14001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b15002_cvsummary;
    CREATE VIEW acs_b15002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b15002_001e1_cv < 15 Then 'high'
    	WHEN cv.b15002_001e1_cv >= 15 and b15002_001e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_001e1_cv_cat,

    CASE
    	WHEN cv.b15002_001e2_cv < 15 Then 'high'
    	WHEN cv.b15002_001e2_cv >= 15 and b15002_001e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_001e2_cv_cat,

    CASE
    	WHEN cv.b15002_001c_cv < 15 Then 'high'
    	WHEN cv.b15002_001c_cv >= 15 and b15002_001c_cv < 30 Then 'medium'
    	WHEN cv.b15002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_001c_cv_cat,

    CASE
    	WHEN cv.b15002_001p_cv < 15 Then 'high'
    	WHEN cv.b15002_001p_cv >= 15 and b15002_001p_cv < 30 Then 'medium'
    	WHEN cv.b15002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_001p_cv_cat,
CASE
    WHEN ch.b15002_001sd > 1.645 THEN True
    WHEN ch.b15002_001sd <= 1.645 THEN False
    WHEN ch.b15002_001sd IS NULL AND cv.b15002_001c_cv = 0 AND ch.b15002_001cm = 0 THEN True
    ELSE NULL
    END AS b15002_001sd_tf,

    CASE
    	WHEN cv.b15002_002e1_cv < 15 Then 'high'
    	WHEN cv.b15002_002e1_cv >= 15 and b15002_002e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_002e1_cv_cat,

    CASE
    	WHEN cv.b15002_002e2_cv < 15 Then 'high'
    	WHEN cv.b15002_002e2_cv >= 15 and b15002_002e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_002e2_cv_cat,

    CASE
    	WHEN cv.b15002_002c_cv < 15 Then 'high'
    	WHEN cv.b15002_002c_cv >= 15 and b15002_002c_cv < 30 Then 'medium'
    	WHEN cv.b15002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_002c_cv_cat,

    CASE
    	WHEN cv.b15002_002p_cv < 15 Then 'high'
    	WHEN cv.b15002_002p_cv >= 15 and b15002_002p_cv < 30 Then 'medium'
    	WHEN cv.b15002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_002p_cv_cat,
CASE
    WHEN ch.b15002_002sd > 1.645 THEN True
    WHEN ch.b15002_002sd <= 1.645 THEN False
    WHEN ch.b15002_002sd IS NULL AND cv.b15002_002c_cv = 0 AND ch.b15002_002cm = 0 THEN True
    ELSE NULL
    END AS b15002_002sd_tf,

    CASE
    	WHEN cv.b15002_003e1_cv < 15 Then 'high'
    	WHEN cv.b15002_003e1_cv >= 15 and b15002_003e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_003e1_cv_cat,

    CASE
    	WHEN cv.b15002_003e2_cv < 15 Then 'high'
    	WHEN cv.b15002_003e2_cv >= 15 and b15002_003e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_003e2_cv_cat,

    CASE
    	WHEN cv.b15002_003c_cv < 15 Then 'high'
    	WHEN cv.b15002_003c_cv >= 15 and b15002_003c_cv < 30 Then 'medium'
    	WHEN cv.b15002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_003c_cv_cat,

    CASE
    	WHEN cv.b15002_003p_cv < 15 Then 'high'
    	WHEN cv.b15002_003p_cv >= 15 and b15002_003p_cv < 30 Then 'medium'
    	WHEN cv.b15002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_003p_cv_cat,
CASE
    WHEN ch.b15002_003sd > 1.645 THEN True
    WHEN ch.b15002_003sd <= 1.645 THEN False
    WHEN ch.b15002_003sd IS NULL AND cv.b15002_003c_cv = 0 AND ch.b15002_003cm = 0 THEN True
    ELSE NULL
    END AS b15002_003sd_tf,

    CASE
    	WHEN cv.b15002_004e1_cv < 15 Then 'high'
    	WHEN cv.b15002_004e1_cv >= 15 and b15002_004e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_004e1_cv_cat,

    CASE
    	WHEN cv.b15002_004e2_cv < 15 Then 'high'
    	WHEN cv.b15002_004e2_cv >= 15 and b15002_004e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_004e2_cv_cat,

    CASE
    	WHEN cv.b15002_004c_cv < 15 Then 'high'
    	WHEN cv.b15002_004c_cv >= 15 and b15002_004c_cv < 30 Then 'medium'
    	WHEN cv.b15002_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_004c_cv_cat,

    CASE
    	WHEN cv.b15002_004p_cv < 15 Then 'high'
    	WHEN cv.b15002_004p_cv >= 15 and b15002_004p_cv < 30 Then 'medium'
    	WHEN cv.b15002_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_004p_cv_cat,
CASE
    WHEN ch.b15002_004sd > 1.645 THEN True
    WHEN ch.b15002_004sd <= 1.645 THEN False
    WHEN ch.b15002_004sd IS NULL AND cv.b15002_004c_cv = 0 AND ch.b15002_004cm = 0 THEN True
    ELSE NULL
    END AS b15002_004sd_tf,

    CASE
    	WHEN cv.b15002_005e1_cv < 15 Then 'high'
    	WHEN cv.b15002_005e1_cv >= 15 and b15002_005e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_005e1_cv_cat,

    CASE
    	WHEN cv.b15002_005e2_cv < 15 Then 'high'
    	WHEN cv.b15002_005e2_cv >= 15 and b15002_005e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_005e2_cv_cat,

    CASE
    	WHEN cv.b15002_005c_cv < 15 Then 'high'
    	WHEN cv.b15002_005c_cv >= 15 and b15002_005c_cv < 30 Then 'medium'
    	WHEN cv.b15002_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_005c_cv_cat,

    CASE
    	WHEN cv.b15002_005p_cv < 15 Then 'high'
    	WHEN cv.b15002_005p_cv >= 15 and b15002_005p_cv < 30 Then 'medium'
    	WHEN cv.b15002_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_005p_cv_cat,
CASE
    WHEN ch.b15002_005sd > 1.645 THEN True
    WHEN ch.b15002_005sd <= 1.645 THEN False
    WHEN ch.b15002_005sd IS NULL AND cv.b15002_005c_cv = 0 AND ch.b15002_005cm = 0 THEN True
    ELSE NULL
    END AS b15002_005sd_tf,

    CASE
    	WHEN cv.b15002_006e1_cv < 15 Then 'high'
    	WHEN cv.b15002_006e1_cv >= 15 and b15002_006e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_006e1_cv_cat,

    CASE
    	WHEN cv.b15002_006e2_cv < 15 Then 'high'
    	WHEN cv.b15002_006e2_cv >= 15 and b15002_006e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_006e2_cv_cat,

    CASE
    	WHEN cv.b15002_006c_cv < 15 Then 'high'
    	WHEN cv.b15002_006c_cv >= 15 and b15002_006c_cv < 30 Then 'medium'
    	WHEN cv.b15002_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_006c_cv_cat,

    CASE
    	WHEN cv.b15002_006p_cv < 15 Then 'high'
    	WHEN cv.b15002_006p_cv >= 15 and b15002_006p_cv < 30 Then 'medium'
    	WHEN cv.b15002_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_006p_cv_cat,
CASE
    WHEN ch.b15002_006sd > 1.645 THEN True
    WHEN ch.b15002_006sd <= 1.645 THEN False
    WHEN ch.b15002_006sd IS NULL AND cv.b15002_006c_cv = 0 AND ch.b15002_006cm = 0 THEN True
    ELSE NULL
    END AS b15002_006sd_tf,

    CASE
    	WHEN cv.b15002_007e1_cv < 15 Then 'high'
    	WHEN cv.b15002_007e1_cv >= 15 and b15002_007e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_007e1_cv_cat,

    CASE
    	WHEN cv.b15002_007e2_cv < 15 Then 'high'
    	WHEN cv.b15002_007e2_cv >= 15 and b15002_007e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_007e2_cv_cat,

    CASE
    	WHEN cv.b15002_007c_cv < 15 Then 'high'
    	WHEN cv.b15002_007c_cv >= 15 and b15002_007c_cv < 30 Then 'medium'
    	WHEN cv.b15002_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_007c_cv_cat,

    CASE
    	WHEN cv.b15002_007p_cv < 15 Then 'high'
    	WHEN cv.b15002_007p_cv >= 15 and b15002_007p_cv < 30 Then 'medium'
    	WHEN cv.b15002_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_007p_cv_cat,
CASE
    WHEN ch.b15002_007sd > 1.645 THEN True
    WHEN ch.b15002_007sd <= 1.645 THEN False
    WHEN ch.b15002_007sd IS NULL AND cv.b15002_007c_cv = 0 AND ch.b15002_007cm = 0 THEN True
    ELSE NULL
    END AS b15002_007sd_tf,

    CASE
    	WHEN cv.b15002_008e1_cv < 15 Then 'high'
    	WHEN cv.b15002_008e1_cv >= 15 and b15002_008e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_008e1_cv_cat,

    CASE
    	WHEN cv.b15002_008e2_cv < 15 Then 'high'
    	WHEN cv.b15002_008e2_cv >= 15 and b15002_008e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_008e2_cv_cat,

    CASE
    	WHEN cv.b15002_008c_cv < 15 Then 'high'
    	WHEN cv.b15002_008c_cv >= 15 and b15002_008c_cv < 30 Then 'medium'
    	WHEN cv.b15002_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_008c_cv_cat,

    CASE
    	WHEN cv.b15002_008p_cv < 15 Then 'high'
    	WHEN cv.b15002_008p_cv >= 15 and b15002_008p_cv < 30 Then 'medium'
    	WHEN cv.b15002_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_008p_cv_cat,
CASE
    WHEN ch.b15002_008sd > 1.645 THEN True
    WHEN ch.b15002_008sd <= 1.645 THEN False
    WHEN ch.b15002_008sd IS NULL AND cv.b15002_008c_cv = 0 AND ch.b15002_008cm = 0 THEN True
    ELSE NULL
    END AS b15002_008sd_tf,

    CASE
    	WHEN cv.b15002_009e1_cv < 15 Then 'high'
    	WHEN cv.b15002_009e1_cv >= 15 and b15002_009e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_009e1_cv_cat,

    CASE
    	WHEN cv.b15002_009e2_cv < 15 Then 'high'
    	WHEN cv.b15002_009e2_cv >= 15 and b15002_009e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_009e2_cv_cat,

    CASE
    	WHEN cv.b15002_009c_cv < 15 Then 'high'
    	WHEN cv.b15002_009c_cv >= 15 and b15002_009c_cv < 30 Then 'medium'
    	WHEN cv.b15002_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_009c_cv_cat,

    CASE
    	WHEN cv.b15002_009p_cv < 15 Then 'high'
    	WHEN cv.b15002_009p_cv >= 15 and b15002_009p_cv < 30 Then 'medium'
    	WHEN cv.b15002_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_009p_cv_cat,
CASE
    WHEN ch.b15002_009sd > 1.645 THEN True
    WHEN ch.b15002_009sd <= 1.645 THEN False
    WHEN ch.b15002_009sd IS NULL AND cv.b15002_009c_cv = 0 AND ch.b15002_009cm = 0 THEN True
    ELSE NULL
    END AS b15002_009sd_tf,

    CASE
    	WHEN cv.b15002_010e1_cv < 15 Then 'high'
    	WHEN cv.b15002_010e1_cv >= 15 and b15002_010e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_010e1_cv_cat,

    CASE
    	WHEN cv.b15002_010e2_cv < 15 Then 'high'
    	WHEN cv.b15002_010e2_cv >= 15 and b15002_010e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_010e2_cv_cat,

    CASE
    	WHEN cv.b15002_010c_cv < 15 Then 'high'
    	WHEN cv.b15002_010c_cv >= 15 and b15002_010c_cv < 30 Then 'medium'
    	WHEN cv.b15002_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_010c_cv_cat,

    CASE
    	WHEN cv.b15002_010p_cv < 15 Then 'high'
    	WHEN cv.b15002_010p_cv >= 15 and b15002_010p_cv < 30 Then 'medium'
    	WHEN cv.b15002_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_010p_cv_cat,
CASE
    WHEN ch.b15002_010sd > 1.645 THEN True
    WHEN ch.b15002_010sd <= 1.645 THEN False
    WHEN ch.b15002_010sd IS NULL AND cv.b15002_010c_cv = 0 AND ch.b15002_010cm = 0 THEN True
    ELSE NULL
    END AS b15002_010sd_tf,

    CASE
    	WHEN cv.b15002_011e1_cv < 15 Then 'high'
    	WHEN cv.b15002_011e1_cv >= 15 and b15002_011e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_011e1_cv_cat,

    CASE
    	WHEN cv.b15002_011e2_cv < 15 Then 'high'
    	WHEN cv.b15002_011e2_cv >= 15 and b15002_011e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_011e2_cv_cat,

    CASE
    	WHEN cv.b15002_011c_cv < 15 Then 'high'
    	WHEN cv.b15002_011c_cv >= 15 and b15002_011c_cv < 30 Then 'medium'
    	WHEN cv.b15002_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_011c_cv_cat,

    CASE
    	WHEN cv.b15002_011p_cv < 15 Then 'high'
    	WHEN cv.b15002_011p_cv >= 15 and b15002_011p_cv < 30 Then 'medium'
    	WHEN cv.b15002_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_011p_cv_cat,
CASE
    WHEN ch.b15002_011sd > 1.645 THEN True
    WHEN ch.b15002_011sd <= 1.645 THEN False
    WHEN ch.b15002_011sd IS NULL AND cv.b15002_011c_cv = 0 AND ch.b15002_011cm = 0 THEN True
    ELSE NULL
    END AS b15002_011sd_tf,

    CASE
    	WHEN cv.b15002_012e1_cv < 15 Then 'high'
    	WHEN cv.b15002_012e1_cv >= 15 and b15002_012e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_012e1_cv_cat,

    CASE
    	WHEN cv.b15002_012e2_cv < 15 Then 'high'
    	WHEN cv.b15002_012e2_cv >= 15 and b15002_012e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_012e2_cv_cat,

    CASE
    	WHEN cv.b15002_012c_cv < 15 Then 'high'
    	WHEN cv.b15002_012c_cv >= 15 and b15002_012c_cv < 30 Then 'medium'
    	WHEN cv.b15002_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_012c_cv_cat,

    CASE
    	WHEN cv.b15002_012p_cv < 15 Then 'high'
    	WHEN cv.b15002_012p_cv >= 15 and b15002_012p_cv < 30 Then 'medium'
    	WHEN cv.b15002_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_012p_cv_cat,
CASE
    WHEN ch.b15002_012sd > 1.645 THEN True
    WHEN ch.b15002_012sd <= 1.645 THEN False
    WHEN ch.b15002_012sd IS NULL AND cv.b15002_012c_cv = 0 AND ch.b15002_012cm = 0 THEN True
    ELSE NULL
    END AS b15002_012sd_tf,

    CASE
    	WHEN cv.b15002_013e1_cv < 15 Then 'high'
    	WHEN cv.b15002_013e1_cv >= 15 and b15002_013e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_013e1_cv_cat,

    CASE
    	WHEN cv.b15002_013e2_cv < 15 Then 'high'
    	WHEN cv.b15002_013e2_cv >= 15 and b15002_013e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_013e2_cv_cat,

    CASE
    	WHEN cv.b15002_013c_cv < 15 Then 'high'
    	WHEN cv.b15002_013c_cv >= 15 and b15002_013c_cv < 30 Then 'medium'
    	WHEN cv.b15002_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_013c_cv_cat,

    CASE
    	WHEN cv.b15002_013p_cv < 15 Then 'high'
    	WHEN cv.b15002_013p_cv >= 15 and b15002_013p_cv < 30 Then 'medium'
    	WHEN cv.b15002_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_013p_cv_cat,
CASE
    WHEN ch.b15002_013sd > 1.645 THEN True
    WHEN ch.b15002_013sd <= 1.645 THEN False
    WHEN ch.b15002_013sd IS NULL AND cv.b15002_013c_cv = 0 AND ch.b15002_013cm = 0 THEN True
    ELSE NULL
    END AS b15002_013sd_tf,

    CASE
    	WHEN cv.b15002_014e1_cv < 15 Then 'high'
    	WHEN cv.b15002_014e1_cv >= 15 and b15002_014e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_014e1_cv_cat,

    CASE
    	WHEN cv.b15002_014e2_cv < 15 Then 'high'
    	WHEN cv.b15002_014e2_cv >= 15 and b15002_014e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_014e2_cv_cat,

    CASE
    	WHEN cv.b15002_014c_cv < 15 Then 'high'
    	WHEN cv.b15002_014c_cv >= 15 and b15002_014c_cv < 30 Then 'medium'
    	WHEN cv.b15002_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_014c_cv_cat,

    CASE
    	WHEN cv.b15002_014p_cv < 15 Then 'high'
    	WHEN cv.b15002_014p_cv >= 15 and b15002_014p_cv < 30 Then 'medium'
    	WHEN cv.b15002_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_014p_cv_cat,
CASE
    WHEN ch.b15002_014sd > 1.645 THEN True
    WHEN ch.b15002_014sd <= 1.645 THEN False
    WHEN ch.b15002_014sd IS NULL AND cv.b15002_014c_cv = 0 AND ch.b15002_014cm = 0 THEN True
    ELSE NULL
    END AS b15002_014sd_tf,

    CASE
    	WHEN cv.b15002_015e1_cv < 15 Then 'high'
    	WHEN cv.b15002_015e1_cv >= 15 and b15002_015e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_015e1_cv_cat,

    CASE
    	WHEN cv.b15002_015e2_cv < 15 Then 'high'
    	WHEN cv.b15002_015e2_cv >= 15 and b15002_015e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_015e2_cv_cat,

    CASE
    	WHEN cv.b15002_015c_cv < 15 Then 'high'
    	WHEN cv.b15002_015c_cv >= 15 and b15002_015c_cv < 30 Then 'medium'
    	WHEN cv.b15002_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_015c_cv_cat,

    CASE
    	WHEN cv.b15002_015p_cv < 15 Then 'high'
    	WHEN cv.b15002_015p_cv >= 15 and b15002_015p_cv < 30 Then 'medium'
    	WHEN cv.b15002_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_015p_cv_cat,
CASE
    WHEN ch.b15002_015sd > 1.645 THEN True
    WHEN ch.b15002_015sd <= 1.645 THEN False
    WHEN ch.b15002_015sd IS NULL AND cv.b15002_015c_cv = 0 AND ch.b15002_015cm = 0 THEN True
    ELSE NULL
    END AS b15002_015sd_tf,

    CASE
    	WHEN cv.b15002_016e1_cv < 15 Then 'high'
    	WHEN cv.b15002_016e1_cv >= 15 and b15002_016e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_016e1_cv_cat,

    CASE
    	WHEN cv.b15002_016e2_cv < 15 Then 'high'
    	WHEN cv.b15002_016e2_cv >= 15 and b15002_016e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_016e2_cv_cat,

    CASE
    	WHEN cv.b15002_016c_cv < 15 Then 'high'
    	WHEN cv.b15002_016c_cv >= 15 and b15002_016c_cv < 30 Then 'medium'
    	WHEN cv.b15002_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_016c_cv_cat,

    CASE
    	WHEN cv.b15002_016p_cv < 15 Then 'high'
    	WHEN cv.b15002_016p_cv >= 15 and b15002_016p_cv < 30 Then 'medium'
    	WHEN cv.b15002_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_016p_cv_cat,
CASE
    WHEN ch.b15002_016sd > 1.645 THEN True
    WHEN ch.b15002_016sd <= 1.645 THEN False
    WHEN ch.b15002_016sd IS NULL AND cv.b15002_016c_cv = 0 AND ch.b15002_016cm = 0 THEN True
    ELSE NULL
    END AS b15002_016sd_tf,

    CASE
    	WHEN cv.b15002_017e1_cv < 15 Then 'high'
    	WHEN cv.b15002_017e1_cv >= 15 and b15002_017e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_017e1_cv_cat,

    CASE
    	WHEN cv.b15002_017e2_cv < 15 Then 'high'
    	WHEN cv.b15002_017e2_cv >= 15 and b15002_017e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_017e2_cv_cat,

    CASE
    	WHEN cv.b15002_017c_cv < 15 Then 'high'
    	WHEN cv.b15002_017c_cv >= 15 and b15002_017c_cv < 30 Then 'medium'
    	WHEN cv.b15002_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_017c_cv_cat,

    CASE
    	WHEN cv.b15002_017p_cv < 15 Then 'high'
    	WHEN cv.b15002_017p_cv >= 15 and b15002_017p_cv < 30 Then 'medium'
    	WHEN cv.b15002_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_017p_cv_cat,
CASE
    WHEN ch.b15002_017sd > 1.645 THEN True
    WHEN ch.b15002_017sd <= 1.645 THEN False
    WHEN ch.b15002_017sd IS NULL AND cv.b15002_017c_cv = 0 AND ch.b15002_017cm = 0 THEN True
    ELSE NULL
    END AS b15002_017sd_tf,

    CASE
    	WHEN cv.b15002_018e1_cv < 15 Then 'high'
    	WHEN cv.b15002_018e1_cv >= 15 and b15002_018e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_018e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_018e1_cv_cat,

    CASE
    	WHEN cv.b15002_018e2_cv < 15 Then 'high'
    	WHEN cv.b15002_018e2_cv >= 15 and b15002_018e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_018e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_018e2_cv_cat,

    CASE
    	WHEN cv.b15002_018c_cv < 15 Then 'high'
    	WHEN cv.b15002_018c_cv >= 15 and b15002_018c_cv < 30 Then 'medium'
    	WHEN cv.b15002_018c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_018c_cv_cat,

    CASE
    	WHEN cv.b15002_018p_cv < 15 Then 'high'
    	WHEN cv.b15002_018p_cv >= 15 and b15002_018p_cv < 30 Then 'medium'
    	WHEN cv.b15002_018p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_018p_cv_cat,
CASE
    WHEN ch.b15002_018sd > 1.645 THEN True
    WHEN ch.b15002_018sd <= 1.645 THEN False
    WHEN ch.b15002_018sd IS NULL AND cv.b15002_018c_cv = 0 AND ch.b15002_018cm = 0 THEN True
    ELSE NULL
    END AS b15002_018sd_tf,

    CASE
    	WHEN cv.b15002_019e1_cv < 15 Then 'high'
    	WHEN cv.b15002_019e1_cv >= 15 and b15002_019e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_019e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_019e1_cv_cat,

    CASE
    	WHEN cv.b15002_019e2_cv < 15 Then 'high'
    	WHEN cv.b15002_019e2_cv >= 15 and b15002_019e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_019e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_019e2_cv_cat,

    CASE
    	WHEN cv.b15002_019c_cv < 15 Then 'high'
    	WHEN cv.b15002_019c_cv >= 15 and b15002_019c_cv < 30 Then 'medium'
    	WHEN cv.b15002_019c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_019c_cv_cat,

    CASE
    	WHEN cv.b15002_019p_cv < 15 Then 'high'
    	WHEN cv.b15002_019p_cv >= 15 and b15002_019p_cv < 30 Then 'medium'
    	WHEN cv.b15002_019p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_019p_cv_cat,
CASE
    WHEN ch.b15002_019sd > 1.645 THEN True
    WHEN ch.b15002_019sd <= 1.645 THEN False
    WHEN ch.b15002_019sd IS NULL AND cv.b15002_019c_cv = 0 AND ch.b15002_019cm = 0 THEN True
    ELSE NULL
    END AS b15002_019sd_tf,

    CASE
    	WHEN cv.b15002_020e1_cv < 15 Then 'high'
    	WHEN cv.b15002_020e1_cv >= 15 and b15002_020e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_020e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_020e1_cv_cat,

    CASE
    	WHEN cv.b15002_020e2_cv < 15 Then 'high'
    	WHEN cv.b15002_020e2_cv >= 15 and b15002_020e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_020e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_020e2_cv_cat,

    CASE
    	WHEN cv.b15002_020c_cv < 15 Then 'high'
    	WHEN cv.b15002_020c_cv >= 15 and b15002_020c_cv < 30 Then 'medium'
    	WHEN cv.b15002_020c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_020c_cv_cat,

    CASE
    	WHEN cv.b15002_020p_cv < 15 Then 'high'
    	WHEN cv.b15002_020p_cv >= 15 and b15002_020p_cv < 30 Then 'medium'
    	WHEN cv.b15002_020p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_020p_cv_cat,
CASE
    WHEN ch.b15002_020sd > 1.645 THEN True
    WHEN ch.b15002_020sd <= 1.645 THEN False
    WHEN ch.b15002_020sd IS NULL AND cv.b15002_020c_cv = 0 AND ch.b15002_020cm = 0 THEN True
    ELSE NULL
    END AS b15002_020sd_tf,

    CASE
    	WHEN cv.b15002_021e1_cv < 15 Then 'high'
    	WHEN cv.b15002_021e1_cv >= 15 and b15002_021e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_021e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_021e1_cv_cat,

    CASE
    	WHEN cv.b15002_021e2_cv < 15 Then 'high'
    	WHEN cv.b15002_021e2_cv >= 15 and b15002_021e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_021e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_021e2_cv_cat,

    CASE
    	WHEN cv.b15002_021c_cv < 15 Then 'high'
    	WHEN cv.b15002_021c_cv >= 15 and b15002_021c_cv < 30 Then 'medium'
    	WHEN cv.b15002_021c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_021c_cv_cat,

    CASE
    	WHEN cv.b15002_021p_cv < 15 Then 'high'
    	WHEN cv.b15002_021p_cv >= 15 and b15002_021p_cv < 30 Then 'medium'
    	WHEN cv.b15002_021p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_021p_cv_cat,
CASE
    WHEN ch.b15002_021sd > 1.645 THEN True
    WHEN ch.b15002_021sd <= 1.645 THEN False
    WHEN ch.b15002_021sd IS NULL AND cv.b15002_021c_cv = 0 AND ch.b15002_021cm = 0 THEN True
    ELSE NULL
    END AS b15002_021sd_tf,

    CASE
    	WHEN cv.b15002_022e1_cv < 15 Then 'high'
    	WHEN cv.b15002_022e1_cv >= 15 and b15002_022e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_022e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_022e1_cv_cat,

    CASE
    	WHEN cv.b15002_022e2_cv < 15 Then 'high'
    	WHEN cv.b15002_022e2_cv >= 15 and b15002_022e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_022e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_022e2_cv_cat,

    CASE
    	WHEN cv.b15002_022c_cv < 15 Then 'high'
    	WHEN cv.b15002_022c_cv >= 15 and b15002_022c_cv < 30 Then 'medium'
    	WHEN cv.b15002_022c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_022c_cv_cat,

    CASE
    	WHEN cv.b15002_022p_cv < 15 Then 'high'
    	WHEN cv.b15002_022p_cv >= 15 and b15002_022p_cv < 30 Then 'medium'
    	WHEN cv.b15002_022p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_022p_cv_cat,
CASE
    WHEN ch.b15002_022sd > 1.645 THEN True
    WHEN ch.b15002_022sd <= 1.645 THEN False
    WHEN ch.b15002_022sd IS NULL AND cv.b15002_022c_cv = 0 AND ch.b15002_022cm = 0 THEN True
    ELSE NULL
    END AS b15002_022sd_tf,

    CASE
    	WHEN cv.b15002_023e1_cv < 15 Then 'high'
    	WHEN cv.b15002_023e1_cv >= 15 and b15002_023e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_023e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_023e1_cv_cat,

    CASE
    	WHEN cv.b15002_023e2_cv < 15 Then 'high'
    	WHEN cv.b15002_023e2_cv >= 15 and b15002_023e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_023e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_023e2_cv_cat,

    CASE
    	WHEN cv.b15002_023c_cv < 15 Then 'high'
    	WHEN cv.b15002_023c_cv >= 15 and b15002_023c_cv < 30 Then 'medium'
    	WHEN cv.b15002_023c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_023c_cv_cat,

    CASE
    	WHEN cv.b15002_023p_cv < 15 Then 'high'
    	WHEN cv.b15002_023p_cv >= 15 and b15002_023p_cv < 30 Then 'medium'
    	WHEN cv.b15002_023p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_023p_cv_cat,
CASE
    WHEN ch.b15002_023sd > 1.645 THEN True
    WHEN ch.b15002_023sd <= 1.645 THEN False
    WHEN ch.b15002_023sd IS NULL AND cv.b15002_023c_cv = 0 AND ch.b15002_023cm = 0 THEN True
    ELSE NULL
    END AS b15002_023sd_tf,

    CASE
    	WHEN cv.b15002_024e1_cv < 15 Then 'high'
    	WHEN cv.b15002_024e1_cv >= 15 and b15002_024e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_024e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_024e1_cv_cat,

    CASE
    	WHEN cv.b15002_024e2_cv < 15 Then 'high'
    	WHEN cv.b15002_024e2_cv >= 15 and b15002_024e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_024e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_024e2_cv_cat,

    CASE
    	WHEN cv.b15002_024c_cv < 15 Then 'high'
    	WHEN cv.b15002_024c_cv >= 15 and b15002_024c_cv < 30 Then 'medium'
    	WHEN cv.b15002_024c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_024c_cv_cat,

    CASE
    	WHEN cv.b15002_024p_cv < 15 Then 'high'
    	WHEN cv.b15002_024p_cv >= 15 and b15002_024p_cv < 30 Then 'medium'
    	WHEN cv.b15002_024p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_024p_cv_cat,
CASE
    WHEN ch.b15002_024sd > 1.645 THEN True
    WHEN ch.b15002_024sd <= 1.645 THEN False
    WHEN ch.b15002_024sd IS NULL AND cv.b15002_024c_cv = 0 AND ch.b15002_024cm = 0 THEN True
    ELSE NULL
    END AS b15002_024sd_tf,

    CASE
    	WHEN cv.b15002_025e1_cv < 15 Then 'high'
    	WHEN cv.b15002_025e1_cv >= 15 and b15002_025e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_025e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_025e1_cv_cat,

    CASE
    	WHEN cv.b15002_025e2_cv < 15 Then 'high'
    	WHEN cv.b15002_025e2_cv >= 15 and b15002_025e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_025e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_025e2_cv_cat,

    CASE
    	WHEN cv.b15002_025c_cv < 15 Then 'high'
    	WHEN cv.b15002_025c_cv >= 15 and b15002_025c_cv < 30 Then 'medium'
    	WHEN cv.b15002_025c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_025c_cv_cat,

    CASE
    	WHEN cv.b15002_025p_cv < 15 Then 'high'
    	WHEN cv.b15002_025p_cv >= 15 and b15002_025p_cv < 30 Then 'medium'
    	WHEN cv.b15002_025p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_025p_cv_cat,
CASE
    WHEN ch.b15002_025sd > 1.645 THEN True
    WHEN ch.b15002_025sd <= 1.645 THEN False
    WHEN ch.b15002_025sd IS NULL AND cv.b15002_025c_cv = 0 AND ch.b15002_025cm = 0 THEN True
    ELSE NULL
    END AS b15002_025sd_tf,

    CASE
    	WHEN cv.b15002_026e1_cv < 15 Then 'high'
    	WHEN cv.b15002_026e1_cv >= 15 and b15002_026e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_026e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_026e1_cv_cat,

    CASE
    	WHEN cv.b15002_026e2_cv < 15 Then 'high'
    	WHEN cv.b15002_026e2_cv >= 15 and b15002_026e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_026e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_026e2_cv_cat,

    CASE
    	WHEN cv.b15002_026c_cv < 15 Then 'high'
    	WHEN cv.b15002_026c_cv >= 15 and b15002_026c_cv < 30 Then 'medium'
    	WHEN cv.b15002_026c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_026c_cv_cat,

    CASE
    	WHEN cv.b15002_026p_cv < 15 Then 'high'
    	WHEN cv.b15002_026p_cv >= 15 and b15002_026p_cv < 30 Then 'medium'
    	WHEN cv.b15002_026p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_026p_cv_cat,
CASE
    WHEN ch.b15002_026sd > 1.645 THEN True
    WHEN ch.b15002_026sd <= 1.645 THEN False
    WHEN ch.b15002_026sd IS NULL AND cv.b15002_026c_cv = 0 AND ch.b15002_026cm = 0 THEN True
    ELSE NULL
    END AS b15002_026sd_tf,

    CASE
    	WHEN cv.b15002_027e1_cv < 15 Then 'high'
    	WHEN cv.b15002_027e1_cv >= 15 and b15002_027e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_027e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_027e1_cv_cat,

    CASE
    	WHEN cv.b15002_027e2_cv < 15 Then 'high'
    	WHEN cv.b15002_027e2_cv >= 15 and b15002_027e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_027e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_027e2_cv_cat,

    CASE
    	WHEN cv.b15002_027c_cv < 15 Then 'high'
    	WHEN cv.b15002_027c_cv >= 15 and b15002_027c_cv < 30 Then 'medium'
    	WHEN cv.b15002_027c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_027c_cv_cat,

    CASE
    	WHEN cv.b15002_027p_cv < 15 Then 'high'
    	WHEN cv.b15002_027p_cv >= 15 and b15002_027p_cv < 30 Then 'medium'
    	WHEN cv.b15002_027p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_027p_cv_cat,
CASE
    WHEN ch.b15002_027sd > 1.645 THEN True
    WHEN ch.b15002_027sd <= 1.645 THEN False
    WHEN ch.b15002_027sd IS NULL AND cv.b15002_027c_cv = 0 AND ch.b15002_027cm = 0 THEN True
    ELSE NULL
    END AS b15002_027sd_tf,

    CASE
    	WHEN cv.b15002_028e1_cv < 15 Then 'high'
    	WHEN cv.b15002_028e1_cv >= 15 and b15002_028e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_028e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_028e1_cv_cat,

    CASE
    	WHEN cv.b15002_028e2_cv < 15 Then 'high'
    	WHEN cv.b15002_028e2_cv >= 15 and b15002_028e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_028e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_028e2_cv_cat,

    CASE
    	WHEN cv.b15002_028c_cv < 15 Then 'high'
    	WHEN cv.b15002_028c_cv >= 15 and b15002_028c_cv < 30 Then 'medium'
    	WHEN cv.b15002_028c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_028c_cv_cat,

    CASE
    	WHEN cv.b15002_028p_cv < 15 Then 'high'
    	WHEN cv.b15002_028p_cv >= 15 and b15002_028p_cv < 30 Then 'medium'
    	WHEN cv.b15002_028p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_028p_cv_cat,
CASE
    WHEN ch.b15002_028sd > 1.645 THEN True
    WHEN ch.b15002_028sd <= 1.645 THEN False
    WHEN ch.b15002_028sd IS NULL AND cv.b15002_028c_cv = 0 AND ch.b15002_028cm = 0 THEN True
    ELSE NULL
    END AS b15002_028sd_tf,

    CASE
    	WHEN cv.b15002_029e1_cv < 15 Then 'high'
    	WHEN cv.b15002_029e1_cv >= 15 and b15002_029e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_029e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_029e1_cv_cat,

    CASE
    	WHEN cv.b15002_029e2_cv < 15 Then 'high'
    	WHEN cv.b15002_029e2_cv >= 15 and b15002_029e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_029e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_029e2_cv_cat,

    CASE
    	WHEN cv.b15002_029c_cv < 15 Then 'high'
    	WHEN cv.b15002_029c_cv >= 15 and b15002_029c_cv < 30 Then 'medium'
    	WHEN cv.b15002_029c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_029c_cv_cat,

    CASE
    	WHEN cv.b15002_029p_cv < 15 Then 'high'
    	WHEN cv.b15002_029p_cv >= 15 and b15002_029p_cv < 30 Then 'medium'
    	WHEN cv.b15002_029p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_029p_cv_cat,
CASE
    WHEN ch.b15002_029sd > 1.645 THEN True
    WHEN ch.b15002_029sd <= 1.645 THEN False
    WHEN ch.b15002_029sd IS NULL AND cv.b15002_029c_cv = 0 AND ch.b15002_029cm = 0 THEN True
    ELSE NULL
    END AS b15002_029sd_tf,

    CASE
    	WHEN cv.b15002_030e1_cv < 15 Then 'high'
    	WHEN cv.b15002_030e1_cv >= 15 and b15002_030e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_030e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_030e1_cv_cat,

    CASE
    	WHEN cv.b15002_030e2_cv < 15 Then 'high'
    	WHEN cv.b15002_030e2_cv >= 15 and b15002_030e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_030e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_030e2_cv_cat,

    CASE
    	WHEN cv.b15002_030c_cv < 15 Then 'high'
    	WHEN cv.b15002_030c_cv >= 15 and b15002_030c_cv < 30 Then 'medium'
    	WHEN cv.b15002_030c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_030c_cv_cat,

    CASE
    	WHEN cv.b15002_030p_cv < 15 Then 'high'
    	WHEN cv.b15002_030p_cv >= 15 and b15002_030p_cv < 30 Then 'medium'
    	WHEN cv.b15002_030p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_030p_cv_cat,
CASE
    WHEN ch.b15002_030sd > 1.645 THEN True
    WHEN ch.b15002_030sd <= 1.645 THEN False
    WHEN ch.b15002_030sd IS NULL AND cv.b15002_030c_cv = 0 AND ch.b15002_030cm = 0 THEN True
    ELSE NULL
    END AS b15002_030sd_tf,

    CASE
    	WHEN cv.b15002_031e1_cv < 15 Then 'high'
    	WHEN cv.b15002_031e1_cv >= 15 and b15002_031e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_031e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_031e1_cv_cat,

    CASE
    	WHEN cv.b15002_031e2_cv < 15 Then 'high'
    	WHEN cv.b15002_031e2_cv >= 15 and b15002_031e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_031e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_031e2_cv_cat,

    CASE
    	WHEN cv.b15002_031c_cv < 15 Then 'high'
    	WHEN cv.b15002_031c_cv >= 15 and b15002_031c_cv < 30 Then 'medium'
    	WHEN cv.b15002_031c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_031c_cv_cat,

    CASE
    	WHEN cv.b15002_031p_cv < 15 Then 'high'
    	WHEN cv.b15002_031p_cv >= 15 and b15002_031p_cv < 30 Then 'medium'
    	WHEN cv.b15002_031p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_031p_cv_cat,
CASE
    WHEN ch.b15002_031sd > 1.645 THEN True
    WHEN ch.b15002_031sd <= 1.645 THEN False
    WHEN ch.b15002_031sd IS NULL AND cv.b15002_031c_cv = 0 AND ch.b15002_031cm = 0 THEN True
    ELSE NULL
    END AS b15002_031sd_tf,

    CASE
    	WHEN cv.b15002_032e1_cv < 15 Then 'high'
    	WHEN cv.b15002_032e1_cv >= 15 and b15002_032e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_032e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_032e1_cv_cat,

    CASE
    	WHEN cv.b15002_032e2_cv < 15 Then 'high'
    	WHEN cv.b15002_032e2_cv >= 15 and b15002_032e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_032e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_032e2_cv_cat,

    CASE
    	WHEN cv.b15002_032c_cv < 15 Then 'high'
    	WHEN cv.b15002_032c_cv >= 15 and b15002_032c_cv < 30 Then 'medium'
    	WHEN cv.b15002_032c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_032c_cv_cat,

    CASE
    	WHEN cv.b15002_032p_cv < 15 Then 'high'
    	WHEN cv.b15002_032p_cv >= 15 and b15002_032p_cv < 30 Then 'medium'
    	WHEN cv.b15002_032p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_032p_cv_cat,
CASE
    WHEN ch.b15002_032sd > 1.645 THEN True
    WHEN ch.b15002_032sd <= 1.645 THEN False
    WHEN ch.b15002_032sd IS NULL AND cv.b15002_032c_cv = 0 AND ch.b15002_032cm = 0 THEN True
    ELSE NULL
    END AS b15002_032sd_tf,

    CASE
    	WHEN cv.b15002_033e1_cv < 15 Then 'high'
    	WHEN cv.b15002_033e1_cv >= 15 and b15002_033e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_033e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_033e1_cv_cat,

    CASE
    	WHEN cv.b15002_033e2_cv < 15 Then 'high'
    	WHEN cv.b15002_033e2_cv >= 15 and b15002_033e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_033e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_033e2_cv_cat,

    CASE
    	WHEN cv.b15002_033c_cv < 15 Then 'high'
    	WHEN cv.b15002_033c_cv >= 15 and b15002_033c_cv < 30 Then 'medium'
    	WHEN cv.b15002_033c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_033c_cv_cat,

    CASE
    	WHEN cv.b15002_033p_cv < 15 Then 'high'
    	WHEN cv.b15002_033p_cv >= 15 and b15002_033p_cv < 30 Then 'medium'
    	WHEN cv.b15002_033p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_033p_cv_cat,
CASE
    WHEN ch.b15002_033sd > 1.645 THEN True
    WHEN ch.b15002_033sd <= 1.645 THEN False
    WHEN ch.b15002_033sd IS NULL AND cv.b15002_033c_cv = 0 AND ch.b15002_033cm = 0 THEN True
    ELSE NULL
    END AS b15002_033sd_tf,

    CASE
    	WHEN cv.b15002_034e1_cv < 15 Then 'high'
    	WHEN cv.b15002_034e1_cv >= 15 and b15002_034e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_034e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_034e1_cv_cat,

    CASE
    	WHEN cv.b15002_034e2_cv < 15 Then 'high'
    	WHEN cv.b15002_034e2_cv >= 15 and b15002_034e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_034e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_034e2_cv_cat,

    CASE
    	WHEN cv.b15002_034c_cv < 15 Then 'high'
    	WHEN cv.b15002_034c_cv >= 15 and b15002_034c_cv < 30 Then 'medium'
    	WHEN cv.b15002_034c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_034c_cv_cat,

    CASE
    	WHEN cv.b15002_034p_cv < 15 Then 'high'
    	WHEN cv.b15002_034p_cv >= 15 and b15002_034p_cv < 30 Then 'medium'
    	WHEN cv.b15002_034p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_034p_cv_cat,
CASE
    WHEN ch.b15002_034sd > 1.645 THEN True
    WHEN ch.b15002_034sd <= 1.645 THEN False
    WHEN ch.b15002_034sd IS NULL AND cv.b15002_034c_cv = 0 AND ch.b15002_034cm = 0 THEN True
    ELSE NULL
    END AS b15002_034sd_tf,

    CASE
    	WHEN cv.b15002_035e1_cv < 15 Then 'high'
    	WHEN cv.b15002_035e1_cv >= 15 and b15002_035e1_cv < 30 Then 'medium'
    	WHEN cv.b15002_035e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_035e1_cv_cat,

    CASE
    	WHEN cv.b15002_035e2_cv < 15 Then 'high'
    	WHEN cv.b15002_035e2_cv >= 15 and b15002_035e2_cv < 30 Then 'medium'
    	WHEN cv.b15002_035e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_035e2_cv_cat,

    CASE
    	WHEN cv.b15002_035c_cv < 15 Then 'high'
    	WHEN cv.b15002_035c_cv >= 15 and b15002_035c_cv < 30 Then 'medium'
    	WHEN cv.b15002_035c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_035c_cv_cat,

    CASE
    	WHEN cv.b15002_035p_cv < 15 Then 'high'
    	WHEN cv.b15002_035p_cv >= 15 and b15002_035p_cv < 30 Then 'medium'
    	WHEN cv.b15002_035p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b15002_035p_cv_cat,
CASE
    WHEN ch.b15002_035sd > 1.645 THEN True
    WHEN ch.b15002_035sd <= 1.645 THEN False
    WHEN ch.b15002_035sd IS NULL AND cv.b15002_035c_cv = 0 AND ch.b15002_035cm = 0 THEN True
    ELSE NULL
    END AS b15002_035sd_tf

    FROM acs_b15002_cvs cv
    INNER JOIN acs_b15002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_c17002_cvsummary;
    CREATE VIEW acs_c17002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.c17002_001e1_cv < 15 Then 'high'
    	WHEN cv.c17002_001e1_cv >= 15 and c17002_001e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_001e1_cv_cat,

    CASE
    	WHEN cv.c17002_001e2_cv < 15 Then 'high'
    	WHEN cv.c17002_001e2_cv >= 15 and c17002_001e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_001e2_cv_cat,

    CASE
    	WHEN cv.c17002_001c_cv < 15 Then 'high'
    	WHEN cv.c17002_001c_cv >= 15 and c17002_001c_cv < 30 Then 'medium'
    	WHEN cv.c17002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_001c_cv_cat,

    CASE
    	WHEN cv.c17002_001p_cv < 15 Then 'high'
    	WHEN cv.c17002_001p_cv >= 15 and c17002_001p_cv < 30 Then 'medium'
    	WHEN cv.c17002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_001p_cv_cat,
CASE
    WHEN ch.c17002_001sd > 1.645 THEN True
    WHEN ch.c17002_001sd <= 1.645 THEN False
    WHEN ch.c17002_001sd IS NULL AND cv.c17002_001c_cv = 0 AND ch.c17002_001cm = 0 THEN True
    ELSE NULL
    END AS c17002_001sd_tf,

    CASE
    	WHEN cv.c17002_002e1_cv < 15 Then 'high'
    	WHEN cv.c17002_002e1_cv >= 15 and c17002_002e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_002e1_cv_cat,

    CASE
    	WHEN cv.c17002_002e2_cv < 15 Then 'high'
    	WHEN cv.c17002_002e2_cv >= 15 and c17002_002e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_002e2_cv_cat,

    CASE
    	WHEN cv.c17002_002c_cv < 15 Then 'high'
    	WHEN cv.c17002_002c_cv >= 15 and c17002_002c_cv < 30 Then 'medium'
    	WHEN cv.c17002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_002c_cv_cat,

    CASE
    	WHEN cv.c17002_002p_cv < 15 Then 'high'
    	WHEN cv.c17002_002p_cv >= 15 and c17002_002p_cv < 30 Then 'medium'
    	WHEN cv.c17002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_002p_cv_cat,
CASE
    WHEN ch.c17002_002sd > 1.645 THEN True
    WHEN ch.c17002_002sd <= 1.645 THEN False
    WHEN ch.c17002_002sd IS NULL AND cv.c17002_002c_cv = 0 AND ch.c17002_002cm = 0 THEN True
    ELSE NULL
    END AS c17002_002sd_tf,

    CASE
    	WHEN cv.c17002_003e1_cv < 15 Then 'high'
    	WHEN cv.c17002_003e1_cv >= 15 and c17002_003e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_003e1_cv_cat,

    CASE
    	WHEN cv.c17002_003e2_cv < 15 Then 'high'
    	WHEN cv.c17002_003e2_cv >= 15 and c17002_003e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_003e2_cv_cat,

    CASE
    	WHEN cv.c17002_003c_cv < 15 Then 'high'
    	WHEN cv.c17002_003c_cv >= 15 and c17002_003c_cv < 30 Then 'medium'
    	WHEN cv.c17002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_003c_cv_cat,

    CASE
    	WHEN cv.c17002_003p_cv < 15 Then 'high'
    	WHEN cv.c17002_003p_cv >= 15 and c17002_003p_cv < 30 Then 'medium'
    	WHEN cv.c17002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_003p_cv_cat,
CASE
    WHEN ch.c17002_003sd > 1.645 THEN True
    WHEN ch.c17002_003sd <= 1.645 THEN False
    WHEN ch.c17002_003sd IS NULL AND cv.c17002_003c_cv = 0 AND ch.c17002_003cm = 0 THEN True
    ELSE NULL
    END AS c17002_003sd_tf,

    CASE
    	WHEN cv.c17002_004e1_cv < 15 Then 'high'
    	WHEN cv.c17002_004e1_cv >= 15 and c17002_004e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_004e1_cv_cat,

    CASE
    	WHEN cv.c17002_004e2_cv < 15 Then 'high'
    	WHEN cv.c17002_004e2_cv >= 15 and c17002_004e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_004e2_cv_cat,

    CASE
    	WHEN cv.c17002_004c_cv < 15 Then 'high'
    	WHEN cv.c17002_004c_cv >= 15 and c17002_004c_cv < 30 Then 'medium'
    	WHEN cv.c17002_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_004c_cv_cat,

    CASE
    	WHEN cv.c17002_004p_cv < 15 Then 'high'
    	WHEN cv.c17002_004p_cv >= 15 and c17002_004p_cv < 30 Then 'medium'
    	WHEN cv.c17002_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_004p_cv_cat,
CASE
    WHEN ch.c17002_004sd > 1.645 THEN True
    WHEN ch.c17002_004sd <= 1.645 THEN False
    WHEN ch.c17002_004sd IS NULL AND cv.c17002_004c_cv = 0 AND ch.c17002_004cm = 0 THEN True
    ELSE NULL
    END AS c17002_004sd_tf,

    CASE
    	WHEN cv.c17002_005e1_cv < 15 Then 'high'
    	WHEN cv.c17002_005e1_cv >= 15 and c17002_005e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_005e1_cv_cat,

    CASE
    	WHEN cv.c17002_005e2_cv < 15 Then 'high'
    	WHEN cv.c17002_005e2_cv >= 15 and c17002_005e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_005e2_cv_cat,

    CASE
    	WHEN cv.c17002_005c_cv < 15 Then 'high'
    	WHEN cv.c17002_005c_cv >= 15 and c17002_005c_cv < 30 Then 'medium'
    	WHEN cv.c17002_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_005c_cv_cat,

    CASE
    	WHEN cv.c17002_005p_cv < 15 Then 'high'
    	WHEN cv.c17002_005p_cv >= 15 and c17002_005p_cv < 30 Then 'medium'
    	WHEN cv.c17002_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_005p_cv_cat,
CASE
    WHEN ch.c17002_005sd > 1.645 THEN True
    WHEN ch.c17002_005sd <= 1.645 THEN False
    WHEN ch.c17002_005sd IS NULL AND cv.c17002_005c_cv = 0 AND ch.c17002_005cm = 0 THEN True
    ELSE NULL
    END AS c17002_005sd_tf,

    CASE
    	WHEN cv.c17002_006e1_cv < 15 Then 'high'
    	WHEN cv.c17002_006e1_cv >= 15 and c17002_006e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_006e1_cv_cat,

    CASE
    	WHEN cv.c17002_006e2_cv < 15 Then 'high'
    	WHEN cv.c17002_006e2_cv >= 15 and c17002_006e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_006e2_cv_cat,

    CASE
    	WHEN cv.c17002_006c_cv < 15 Then 'high'
    	WHEN cv.c17002_006c_cv >= 15 and c17002_006c_cv < 30 Then 'medium'
    	WHEN cv.c17002_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_006c_cv_cat,

    CASE
    	WHEN cv.c17002_006p_cv < 15 Then 'high'
    	WHEN cv.c17002_006p_cv >= 15 and c17002_006p_cv < 30 Then 'medium'
    	WHEN cv.c17002_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_006p_cv_cat,
CASE
    WHEN ch.c17002_006sd > 1.645 THEN True
    WHEN ch.c17002_006sd <= 1.645 THEN False
    WHEN ch.c17002_006sd IS NULL AND cv.c17002_006c_cv = 0 AND ch.c17002_006cm = 0 THEN True
    ELSE NULL
    END AS c17002_006sd_tf,

    CASE
    	WHEN cv.c17002_007e1_cv < 15 Then 'high'
    	WHEN cv.c17002_007e1_cv >= 15 and c17002_007e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_007e1_cv_cat,

    CASE
    	WHEN cv.c17002_007e2_cv < 15 Then 'high'
    	WHEN cv.c17002_007e2_cv >= 15 and c17002_007e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_007e2_cv_cat,

    CASE
    	WHEN cv.c17002_007c_cv < 15 Then 'high'
    	WHEN cv.c17002_007c_cv >= 15 and c17002_007c_cv < 30 Then 'medium'
    	WHEN cv.c17002_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_007c_cv_cat,

    CASE
    	WHEN cv.c17002_007p_cv < 15 Then 'high'
    	WHEN cv.c17002_007p_cv >= 15 and c17002_007p_cv < 30 Then 'medium'
    	WHEN cv.c17002_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_007p_cv_cat,
CASE
    WHEN ch.c17002_007sd > 1.645 THEN True
    WHEN ch.c17002_007sd <= 1.645 THEN False
    WHEN ch.c17002_007sd IS NULL AND cv.c17002_007c_cv = 0 AND ch.c17002_007cm = 0 THEN True
    ELSE NULL
    END AS c17002_007sd_tf,

    CASE
    	WHEN cv.c17002_008e1_cv < 15 Then 'high'
    	WHEN cv.c17002_008e1_cv >= 15 and c17002_008e1_cv < 30 Then 'medium'
    	WHEN cv.c17002_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_008e1_cv_cat,

    CASE
    	WHEN cv.c17002_008e2_cv < 15 Then 'high'
    	WHEN cv.c17002_008e2_cv >= 15 and c17002_008e2_cv < 30 Then 'medium'
    	WHEN cv.c17002_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_008e2_cv_cat,

    CASE
    	WHEN cv.c17002_008c_cv < 15 Then 'high'
    	WHEN cv.c17002_008c_cv >= 15 and c17002_008c_cv < 30 Then 'medium'
    	WHEN cv.c17002_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_008c_cv_cat,

    CASE
    	WHEN cv.c17002_008p_cv < 15 Then 'high'
    	WHEN cv.c17002_008p_cv >= 15 and c17002_008p_cv < 30 Then 'medium'
    	WHEN cv.c17002_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c17002_008p_cv_cat,
CASE
    WHEN ch.c17002_008sd > 1.645 THEN True
    WHEN ch.c17002_008sd <= 1.645 THEN False
    WHEN ch.c17002_008sd IS NULL AND cv.c17002_008c_cv = 0 AND ch.c17002_008cm = 0 THEN True
    ELSE NULL
    END AS c17002_008sd_tf

    FROM acs_c17002_cvs cv
    INNER JOIN acs_c17002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b19001_cvsummary;
    CREATE VIEW acs_b19001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b19001_001e1_cv < 15 Then 'high'
    	WHEN cv.b19001_001e1_cv >= 15 and b19001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_001e1_cv_cat,

    CASE
    	WHEN cv.b19001_001e2_cv < 15 Then 'high'
    	WHEN cv.b19001_001e2_cv >= 15 and b19001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_001e2_cv_cat,

    CASE
    	WHEN cv.b19001_001c_cv < 15 Then 'high'
    	WHEN cv.b19001_001c_cv >= 15 and b19001_001c_cv < 30 Then 'medium'
    	WHEN cv.b19001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_001c_cv_cat,

    CASE
    	WHEN cv.b19001_001p_cv < 15 Then 'high'
    	WHEN cv.b19001_001p_cv >= 15 and b19001_001p_cv < 30 Then 'medium'
    	WHEN cv.b19001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_001p_cv_cat,
CASE
    WHEN ch.b19001_001sd > 1.645 THEN True
    WHEN ch.b19001_001sd <= 1.645 THEN False
    WHEN ch.b19001_001sd IS NULL AND cv.b19001_001c_cv = 0 AND ch.b19001_001cm = 0 THEN True
    ELSE NULL
    END AS b19001_001sd_tf,

    CASE
    	WHEN cv.b19001_002e1_cv < 15 Then 'high'
    	WHEN cv.b19001_002e1_cv >= 15 and b19001_002e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_002e1_cv_cat,

    CASE
    	WHEN cv.b19001_002e2_cv < 15 Then 'high'
    	WHEN cv.b19001_002e2_cv >= 15 and b19001_002e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_002e2_cv_cat,

    CASE
    	WHEN cv.b19001_002c_cv < 15 Then 'high'
    	WHEN cv.b19001_002c_cv >= 15 and b19001_002c_cv < 30 Then 'medium'
    	WHEN cv.b19001_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_002c_cv_cat,

    CASE
    	WHEN cv.b19001_002p_cv < 15 Then 'high'
    	WHEN cv.b19001_002p_cv >= 15 and b19001_002p_cv < 30 Then 'medium'
    	WHEN cv.b19001_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_002p_cv_cat,
CASE
    WHEN ch.b19001_002sd > 1.645 THEN True
    WHEN ch.b19001_002sd <= 1.645 THEN False
    WHEN ch.b19001_002sd IS NULL AND cv.b19001_002c_cv = 0 AND ch.b19001_002cm = 0 THEN True
    ELSE NULL
    END AS b19001_002sd_tf,

    CASE
    	WHEN cv.b19001_003e1_cv < 15 Then 'high'
    	WHEN cv.b19001_003e1_cv >= 15 and b19001_003e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_003e1_cv_cat,

    CASE
    	WHEN cv.b19001_003e2_cv < 15 Then 'high'
    	WHEN cv.b19001_003e2_cv >= 15 and b19001_003e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_003e2_cv_cat,

    CASE
    	WHEN cv.b19001_003c_cv < 15 Then 'high'
    	WHEN cv.b19001_003c_cv >= 15 and b19001_003c_cv < 30 Then 'medium'
    	WHEN cv.b19001_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_003c_cv_cat,

    CASE
    	WHEN cv.b19001_003p_cv < 15 Then 'high'
    	WHEN cv.b19001_003p_cv >= 15 and b19001_003p_cv < 30 Then 'medium'
    	WHEN cv.b19001_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_003p_cv_cat,
CASE
    WHEN ch.b19001_003sd > 1.645 THEN True
    WHEN ch.b19001_003sd <= 1.645 THEN False
    WHEN ch.b19001_003sd IS NULL AND cv.b19001_003c_cv = 0 AND ch.b19001_003cm = 0 THEN True
    ELSE NULL
    END AS b19001_003sd_tf,

    CASE
    	WHEN cv.b19001_004e1_cv < 15 Then 'high'
    	WHEN cv.b19001_004e1_cv >= 15 and b19001_004e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_004e1_cv_cat,

    CASE
    	WHEN cv.b19001_004e2_cv < 15 Then 'high'
    	WHEN cv.b19001_004e2_cv >= 15 and b19001_004e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_004e2_cv_cat,

    CASE
    	WHEN cv.b19001_004c_cv < 15 Then 'high'
    	WHEN cv.b19001_004c_cv >= 15 and b19001_004c_cv < 30 Then 'medium'
    	WHEN cv.b19001_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_004c_cv_cat,

    CASE
    	WHEN cv.b19001_004p_cv < 15 Then 'high'
    	WHEN cv.b19001_004p_cv >= 15 and b19001_004p_cv < 30 Then 'medium'
    	WHEN cv.b19001_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_004p_cv_cat,
CASE
    WHEN ch.b19001_004sd > 1.645 THEN True
    WHEN ch.b19001_004sd <= 1.645 THEN False
    WHEN ch.b19001_004sd IS NULL AND cv.b19001_004c_cv = 0 AND ch.b19001_004cm = 0 THEN True
    ELSE NULL
    END AS b19001_004sd_tf,

    CASE
    	WHEN cv.b19001_005e1_cv < 15 Then 'high'
    	WHEN cv.b19001_005e1_cv >= 15 and b19001_005e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_005e1_cv_cat,

    CASE
    	WHEN cv.b19001_005e2_cv < 15 Then 'high'
    	WHEN cv.b19001_005e2_cv >= 15 and b19001_005e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_005e2_cv_cat,

    CASE
    	WHEN cv.b19001_005c_cv < 15 Then 'high'
    	WHEN cv.b19001_005c_cv >= 15 and b19001_005c_cv < 30 Then 'medium'
    	WHEN cv.b19001_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_005c_cv_cat,

    CASE
    	WHEN cv.b19001_005p_cv < 15 Then 'high'
    	WHEN cv.b19001_005p_cv >= 15 and b19001_005p_cv < 30 Then 'medium'
    	WHEN cv.b19001_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_005p_cv_cat,
CASE
    WHEN ch.b19001_005sd > 1.645 THEN True
    WHEN ch.b19001_005sd <= 1.645 THEN False
    WHEN ch.b19001_005sd IS NULL AND cv.b19001_005c_cv = 0 AND ch.b19001_005cm = 0 THEN True
    ELSE NULL
    END AS b19001_005sd_tf,

    CASE
    	WHEN cv.b19001_006e1_cv < 15 Then 'high'
    	WHEN cv.b19001_006e1_cv >= 15 and b19001_006e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_006e1_cv_cat,

    CASE
    	WHEN cv.b19001_006e2_cv < 15 Then 'high'
    	WHEN cv.b19001_006e2_cv >= 15 and b19001_006e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_006e2_cv_cat,

    CASE
    	WHEN cv.b19001_006c_cv < 15 Then 'high'
    	WHEN cv.b19001_006c_cv >= 15 and b19001_006c_cv < 30 Then 'medium'
    	WHEN cv.b19001_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_006c_cv_cat,

    CASE
    	WHEN cv.b19001_006p_cv < 15 Then 'high'
    	WHEN cv.b19001_006p_cv >= 15 and b19001_006p_cv < 30 Then 'medium'
    	WHEN cv.b19001_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_006p_cv_cat,
CASE
    WHEN ch.b19001_006sd > 1.645 THEN True
    WHEN ch.b19001_006sd <= 1.645 THEN False
    WHEN ch.b19001_006sd IS NULL AND cv.b19001_006c_cv = 0 AND ch.b19001_006cm = 0 THEN True
    ELSE NULL
    END AS b19001_006sd_tf,

    CASE
    	WHEN cv.b19001_007e1_cv < 15 Then 'high'
    	WHEN cv.b19001_007e1_cv >= 15 and b19001_007e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_007e1_cv_cat,

    CASE
    	WHEN cv.b19001_007e2_cv < 15 Then 'high'
    	WHEN cv.b19001_007e2_cv >= 15 and b19001_007e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_007e2_cv_cat,

    CASE
    	WHEN cv.b19001_007c_cv < 15 Then 'high'
    	WHEN cv.b19001_007c_cv >= 15 and b19001_007c_cv < 30 Then 'medium'
    	WHEN cv.b19001_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_007c_cv_cat,

    CASE
    	WHEN cv.b19001_007p_cv < 15 Then 'high'
    	WHEN cv.b19001_007p_cv >= 15 and b19001_007p_cv < 30 Then 'medium'
    	WHEN cv.b19001_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_007p_cv_cat,
CASE
    WHEN ch.b19001_007sd > 1.645 THEN True
    WHEN ch.b19001_007sd <= 1.645 THEN False
    WHEN ch.b19001_007sd IS NULL AND cv.b19001_007c_cv = 0 AND ch.b19001_007cm = 0 THEN True
    ELSE NULL
    END AS b19001_007sd_tf,

    CASE
    	WHEN cv.b19001_008e1_cv < 15 Then 'high'
    	WHEN cv.b19001_008e1_cv >= 15 and b19001_008e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_008e1_cv_cat,

    CASE
    	WHEN cv.b19001_008e2_cv < 15 Then 'high'
    	WHEN cv.b19001_008e2_cv >= 15 and b19001_008e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_008e2_cv_cat,

    CASE
    	WHEN cv.b19001_008c_cv < 15 Then 'high'
    	WHEN cv.b19001_008c_cv >= 15 and b19001_008c_cv < 30 Then 'medium'
    	WHEN cv.b19001_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_008c_cv_cat,

    CASE
    	WHEN cv.b19001_008p_cv < 15 Then 'high'
    	WHEN cv.b19001_008p_cv >= 15 and b19001_008p_cv < 30 Then 'medium'
    	WHEN cv.b19001_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_008p_cv_cat,
CASE
    WHEN ch.b19001_008sd > 1.645 THEN True
    WHEN ch.b19001_008sd <= 1.645 THEN False
    WHEN ch.b19001_008sd IS NULL AND cv.b19001_008c_cv = 0 AND ch.b19001_008cm = 0 THEN True
    ELSE NULL
    END AS b19001_008sd_tf,

    CASE
    	WHEN cv.b19001_009e1_cv < 15 Then 'high'
    	WHEN cv.b19001_009e1_cv >= 15 and b19001_009e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_009e1_cv_cat,

    CASE
    	WHEN cv.b19001_009e2_cv < 15 Then 'high'
    	WHEN cv.b19001_009e2_cv >= 15 and b19001_009e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_009e2_cv_cat,

    CASE
    	WHEN cv.b19001_009c_cv < 15 Then 'high'
    	WHEN cv.b19001_009c_cv >= 15 and b19001_009c_cv < 30 Then 'medium'
    	WHEN cv.b19001_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_009c_cv_cat,

    CASE
    	WHEN cv.b19001_009p_cv < 15 Then 'high'
    	WHEN cv.b19001_009p_cv >= 15 and b19001_009p_cv < 30 Then 'medium'
    	WHEN cv.b19001_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_009p_cv_cat,
CASE
    WHEN ch.b19001_009sd > 1.645 THEN True
    WHEN ch.b19001_009sd <= 1.645 THEN False
    WHEN ch.b19001_009sd IS NULL AND cv.b19001_009c_cv = 0 AND ch.b19001_009cm = 0 THEN True
    ELSE NULL
    END AS b19001_009sd_tf,

    CASE
    	WHEN cv.b19001_010e1_cv < 15 Then 'high'
    	WHEN cv.b19001_010e1_cv >= 15 and b19001_010e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_010e1_cv_cat,

    CASE
    	WHEN cv.b19001_010e2_cv < 15 Then 'high'
    	WHEN cv.b19001_010e2_cv >= 15 and b19001_010e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_010e2_cv_cat,

    CASE
    	WHEN cv.b19001_010c_cv < 15 Then 'high'
    	WHEN cv.b19001_010c_cv >= 15 and b19001_010c_cv < 30 Then 'medium'
    	WHEN cv.b19001_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_010c_cv_cat,

    CASE
    	WHEN cv.b19001_010p_cv < 15 Then 'high'
    	WHEN cv.b19001_010p_cv >= 15 and b19001_010p_cv < 30 Then 'medium'
    	WHEN cv.b19001_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_010p_cv_cat,
CASE
    WHEN ch.b19001_010sd > 1.645 THEN True
    WHEN ch.b19001_010sd <= 1.645 THEN False
    WHEN ch.b19001_010sd IS NULL AND cv.b19001_010c_cv = 0 AND ch.b19001_010cm = 0 THEN True
    ELSE NULL
    END AS b19001_010sd_tf,

    CASE
    	WHEN cv.b19001_011e1_cv < 15 Then 'high'
    	WHEN cv.b19001_011e1_cv >= 15 and b19001_011e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_011e1_cv_cat,

    CASE
    	WHEN cv.b19001_011e2_cv < 15 Then 'high'
    	WHEN cv.b19001_011e2_cv >= 15 and b19001_011e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_011e2_cv_cat,

    CASE
    	WHEN cv.b19001_011c_cv < 15 Then 'high'
    	WHEN cv.b19001_011c_cv >= 15 and b19001_011c_cv < 30 Then 'medium'
    	WHEN cv.b19001_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_011c_cv_cat,

    CASE
    	WHEN cv.b19001_011p_cv < 15 Then 'high'
    	WHEN cv.b19001_011p_cv >= 15 and b19001_011p_cv < 30 Then 'medium'
    	WHEN cv.b19001_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_011p_cv_cat,
CASE
    WHEN ch.b19001_011sd > 1.645 THEN True
    WHEN ch.b19001_011sd <= 1.645 THEN False
    WHEN ch.b19001_011sd IS NULL AND cv.b19001_011c_cv = 0 AND ch.b19001_011cm = 0 THEN True
    ELSE NULL
    END AS b19001_011sd_tf,

    CASE
    	WHEN cv.b19001_012e1_cv < 15 Then 'high'
    	WHEN cv.b19001_012e1_cv >= 15 and b19001_012e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_012e1_cv_cat,

    CASE
    	WHEN cv.b19001_012e2_cv < 15 Then 'high'
    	WHEN cv.b19001_012e2_cv >= 15 and b19001_012e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_012e2_cv_cat,

    CASE
    	WHEN cv.b19001_012c_cv < 15 Then 'high'
    	WHEN cv.b19001_012c_cv >= 15 and b19001_012c_cv < 30 Then 'medium'
    	WHEN cv.b19001_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_012c_cv_cat,

    CASE
    	WHEN cv.b19001_012p_cv < 15 Then 'high'
    	WHEN cv.b19001_012p_cv >= 15 and b19001_012p_cv < 30 Then 'medium'
    	WHEN cv.b19001_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_012p_cv_cat,
CASE
    WHEN ch.b19001_012sd > 1.645 THEN True
    WHEN ch.b19001_012sd <= 1.645 THEN False
    WHEN ch.b19001_012sd IS NULL AND cv.b19001_012c_cv = 0 AND ch.b19001_012cm = 0 THEN True
    ELSE NULL
    END AS b19001_012sd_tf,

    CASE
    	WHEN cv.b19001_013e1_cv < 15 Then 'high'
    	WHEN cv.b19001_013e1_cv >= 15 and b19001_013e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_013e1_cv_cat,

    CASE
    	WHEN cv.b19001_013e2_cv < 15 Then 'high'
    	WHEN cv.b19001_013e2_cv >= 15 and b19001_013e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_013e2_cv_cat,

    CASE
    	WHEN cv.b19001_013c_cv < 15 Then 'high'
    	WHEN cv.b19001_013c_cv >= 15 and b19001_013c_cv < 30 Then 'medium'
    	WHEN cv.b19001_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_013c_cv_cat,

    CASE
    	WHEN cv.b19001_013p_cv < 15 Then 'high'
    	WHEN cv.b19001_013p_cv >= 15 and b19001_013p_cv < 30 Then 'medium'
    	WHEN cv.b19001_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_013p_cv_cat,
CASE
    WHEN ch.b19001_013sd > 1.645 THEN True
    WHEN ch.b19001_013sd <= 1.645 THEN False
    WHEN ch.b19001_013sd IS NULL AND cv.b19001_013c_cv = 0 AND ch.b19001_013cm = 0 THEN True
    ELSE NULL
    END AS b19001_013sd_tf,

    CASE
    	WHEN cv.b19001_014e1_cv < 15 Then 'high'
    	WHEN cv.b19001_014e1_cv >= 15 and b19001_014e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_014e1_cv_cat,

    CASE
    	WHEN cv.b19001_014e2_cv < 15 Then 'high'
    	WHEN cv.b19001_014e2_cv >= 15 and b19001_014e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_014e2_cv_cat,

    CASE
    	WHEN cv.b19001_014c_cv < 15 Then 'high'
    	WHEN cv.b19001_014c_cv >= 15 and b19001_014c_cv < 30 Then 'medium'
    	WHEN cv.b19001_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_014c_cv_cat,

    CASE
    	WHEN cv.b19001_014p_cv < 15 Then 'high'
    	WHEN cv.b19001_014p_cv >= 15 and b19001_014p_cv < 30 Then 'medium'
    	WHEN cv.b19001_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_014p_cv_cat,
CASE
    WHEN ch.b19001_014sd > 1.645 THEN True
    WHEN ch.b19001_014sd <= 1.645 THEN False
    WHEN ch.b19001_014sd IS NULL AND cv.b19001_014c_cv = 0 AND ch.b19001_014cm = 0 THEN True
    ELSE NULL
    END AS b19001_014sd_tf,

    CASE
    	WHEN cv.b19001_015e1_cv < 15 Then 'high'
    	WHEN cv.b19001_015e1_cv >= 15 and b19001_015e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_015e1_cv_cat,

    CASE
    	WHEN cv.b19001_015e2_cv < 15 Then 'high'
    	WHEN cv.b19001_015e2_cv >= 15 and b19001_015e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_015e2_cv_cat,

    CASE
    	WHEN cv.b19001_015c_cv < 15 Then 'high'
    	WHEN cv.b19001_015c_cv >= 15 and b19001_015c_cv < 30 Then 'medium'
    	WHEN cv.b19001_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_015c_cv_cat,

    CASE
    	WHEN cv.b19001_015p_cv < 15 Then 'high'
    	WHEN cv.b19001_015p_cv >= 15 and b19001_015p_cv < 30 Then 'medium'
    	WHEN cv.b19001_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_015p_cv_cat,
CASE
    WHEN ch.b19001_015sd > 1.645 THEN True
    WHEN ch.b19001_015sd <= 1.645 THEN False
    WHEN ch.b19001_015sd IS NULL AND cv.b19001_015c_cv = 0 AND ch.b19001_015cm = 0 THEN True
    ELSE NULL
    END AS b19001_015sd_tf,

    CASE
    	WHEN cv.b19001_016e1_cv < 15 Then 'high'
    	WHEN cv.b19001_016e1_cv >= 15 and b19001_016e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_016e1_cv_cat,

    CASE
    	WHEN cv.b19001_016e2_cv < 15 Then 'high'
    	WHEN cv.b19001_016e2_cv >= 15 and b19001_016e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_016e2_cv_cat,

    CASE
    	WHEN cv.b19001_016c_cv < 15 Then 'high'
    	WHEN cv.b19001_016c_cv >= 15 and b19001_016c_cv < 30 Then 'medium'
    	WHEN cv.b19001_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_016c_cv_cat,

    CASE
    	WHEN cv.b19001_016p_cv < 15 Then 'high'
    	WHEN cv.b19001_016p_cv >= 15 and b19001_016p_cv < 30 Then 'medium'
    	WHEN cv.b19001_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_016p_cv_cat,
CASE
    WHEN ch.b19001_016sd > 1.645 THEN True
    WHEN ch.b19001_016sd <= 1.645 THEN False
    WHEN ch.b19001_016sd IS NULL AND cv.b19001_016c_cv = 0 AND ch.b19001_016cm = 0 THEN True
    ELSE NULL
    END AS b19001_016sd_tf,

    CASE
    	WHEN cv.b19001_017e1_cv < 15 Then 'high'
    	WHEN cv.b19001_017e1_cv >= 15 and b19001_017e1_cv < 30 Then 'medium'
    	WHEN cv.b19001_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_017e1_cv_cat,

    CASE
    	WHEN cv.b19001_017e2_cv < 15 Then 'high'
    	WHEN cv.b19001_017e2_cv >= 15 and b19001_017e2_cv < 30 Then 'medium'
    	WHEN cv.b19001_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_017e2_cv_cat,

    CASE
    	WHEN cv.b19001_017c_cv < 15 Then 'high'
    	WHEN cv.b19001_017c_cv >= 15 and b19001_017c_cv < 30 Then 'medium'
    	WHEN cv.b19001_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_017c_cv_cat,

    CASE
    	WHEN cv.b19001_017p_cv < 15 Then 'high'
    	WHEN cv.b19001_017p_cv >= 15 and b19001_017p_cv < 30 Then 'medium'
    	WHEN cv.b19001_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19001_017p_cv_cat,
CASE
    WHEN ch.b19001_017sd > 1.645 THEN True
    WHEN ch.b19001_017sd <= 1.645 THEN False
    WHEN ch.b19001_017sd IS NULL AND cv.b19001_017c_cv = 0 AND ch.b19001_017cm = 0 THEN True
    ELSE NULL
    END AS b19001_017sd_tf

    FROM acs_b19001_cvs cv
    INNER JOIN acs_b19001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b19013_cvsummary;
    CREATE VIEW acs_b19013_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b19013_001e1_cv < 15 Then 'high'
    	WHEN cv.b19013_001e1_cv >= 15 and b19013_001e1_cv < 30 Then 'medium'
    	WHEN cv.b19013_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19013_001e1_cv_cat,

    CASE
    	WHEN cv.b19013_001e2_cv < 15 Then 'high'
    	WHEN cv.b19013_001e2_cv >= 15 and b19013_001e2_cv < 30 Then 'medium'
    	WHEN cv.b19013_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19013_001e2_cv_cat,

    CASE
    	WHEN cv.b19013_001c_cv < 15 Then 'high'
    	WHEN cv.b19013_001c_cv >= 15 and b19013_001c_cv < 30 Then 'medium'
    	WHEN cv.b19013_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19013_001c_cv_cat,

    CASE
    	WHEN cv.b19013_001p_cv < 15 Then 'high'
    	WHEN cv.b19013_001p_cv >= 15 and b19013_001p_cv < 30 Then 'medium'
    	WHEN cv.b19013_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19013_001p_cv_cat,
CASE
    WHEN ch.b19013_001sd > 1.645 THEN True
    WHEN ch.b19013_001sd <= 1.645 THEN False
    WHEN ch.b19013_001sd IS NULL AND cv.b19013_001c_cv = 0 AND ch.b19013_001cm = 0 THEN True
    ELSE NULL
    END AS b19013_001sd_tf

    FROM acs_b19013_cvs cv
    INNER JOIN acs_b19013_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b19083_cvsummary;
    CREATE VIEW acs_b19083_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b19083_001e1_cv < 15 Then 'high'
    	WHEN cv.b19083_001e1_cv >= 15 and b19083_001e1_cv < 30 Then 'medium'
    	WHEN cv.b19083_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19083_001e1_cv_cat,

    CASE
    	WHEN cv.b19083_001e2_cv < 15 Then 'high'
    	WHEN cv.b19083_001e2_cv >= 15 and b19083_001e2_cv < 30 Then 'medium'
    	WHEN cv.b19083_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19083_001e2_cv_cat,

    CASE
    	WHEN cv.b19083_001c_cv < 15 Then 'high'
    	WHEN cv.b19083_001c_cv >= 15 and b19083_001c_cv < 30 Then 'medium'
    	WHEN cv.b19083_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19083_001c_cv_cat,

    CASE
    	WHEN cv.b19083_001p_cv < 15 Then 'high'
    	WHEN cv.b19083_001p_cv >= 15 and b19083_001p_cv < 30 Then 'medium'
    	WHEN cv.b19083_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b19083_001p_cv_cat,
CASE
    WHEN ch.b19083_001sd > 1.645 THEN True
    WHEN ch.b19083_001sd <= 1.645 THEN False
    WHEN ch.b19083_001sd IS NULL AND cv.b19083_001c_cv = 0 AND ch.b19083_001cm = 0 THEN True
    ELSE NULL
    END AS b19083_001sd_tf

    FROM acs_b19083_cvs cv
    INNER JOIN acs_b19083_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b23025_cvsummary;
    CREATE VIEW acs_b23025_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b23025_001e1_cv < 15 Then 'high'
    	WHEN cv.b23025_001e1_cv >= 15 and b23025_001e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_001e1_cv_cat,

    CASE
    	WHEN cv.b23025_001e2_cv < 15 Then 'high'
    	WHEN cv.b23025_001e2_cv >= 15 and b23025_001e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_001e2_cv_cat,

    CASE
    	WHEN cv.b23025_001c_cv < 15 Then 'high'
    	WHEN cv.b23025_001c_cv >= 15 and b23025_001c_cv < 30 Then 'medium'
    	WHEN cv.b23025_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_001c_cv_cat,

    CASE
    	WHEN cv.b23025_001p_cv < 15 Then 'high'
    	WHEN cv.b23025_001p_cv >= 15 and b23025_001p_cv < 30 Then 'medium'
    	WHEN cv.b23025_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_001p_cv_cat,
CASE
    WHEN ch.b23025_001sd > 1.645 THEN True
    WHEN ch.b23025_001sd <= 1.645 THEN False
    WHEN ch.b23025_001sd IS NULL AND cv.b23025_001c_cv = 0 AND ch.b23025_001cm = 0 THEN True
    ELSE NULL
    END AS b23025_001sd_tf,

    CASE
    	WHEN cv.b23025_002e1_cv < 15 Then 'high'
    	WHEN cv.b23025_002e1_cv >= 15 and b23025_002e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_002e1_cv_cat,

    CASE
    	WHEN cv.b23025_002e2_cv < 15 Then 'high'
    	WHEN cv.b23025_002e2_cv >= 15 and b23025_002e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_002e2_cv_cat,

    CASE
    	WHEN cv.b23025_002c_cv < 15 Then 'high'
    	WHEN cv.b23025_002c_cv >= 15 and b23025_002c_cv < 30 Then 'medium'
    	WHEN cv.b23025_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_002c_cv_cat,

    CASE
    	WHEN cv.b23025_002p_cv < 15 Then 'high'
    	WHEN cv.b23025_002p_cv >= 15 and b23025_002p_cv < 30 Then 'medium'
    	WHEN cv.b23025_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_002p_cv_cat,
CASE
    WHEN ch.b23025_002sd > 1.645 THEN True
    WHEN ch.b23025_002sd <= 1.645 THEN False
    WHEN ch.b23025_002sd IS NULL AND cv.b23025_002c_cv = 0 AND ch.b23025_002cm = 0 THEN True
    ELSE NULL
    END AS b23025_002sd_tf,

    CASE
    	WHEN cv.b23025_003e1_cv < 15 Then 'high'
    	WHEN cv.b23025_003e1_cv >= 15 and b23025_003e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_003e1_cv_cat,

    CASE
    	WHEN cv.b23025_003e2_cv < 15 Then 'high'
    	WHEN cv.b23025_003e2_cv >= 15 and b23025_003e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_003e2_cv_cat,

    CASE
    	WHEN cv.b23025_003c_cv < 15 Then 'high'
    	WHEN cv.b23025_003c_cv >= 15 and b23025_003c_cv < 30 Then 'medium'
    	WHEN cv.b23025_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_003c_cv_cat,

    CASE
    	WHEN cv.b23025_003p_cv < 15 Then 'high'
    	WHEN cv.b23025_003p_cv >= 15 and b23025_003p_cv < 30 Then 'medium'
    	WHEN cv.b23025_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_003p_cv_cat,
CASE
    WHEN ch.b23025_003sd > 1.645 THEN True
    WHEN ch.b23025_003sd <= 1.645 THEN False
    WHEN ch.b23025_003sd IS NULL AND cv.b23025_003c_cv = 0 AND ch.b23025_003cm = 0 THEN True
    ELSE NULL
    END AS b23025_003sd_tf,

    CASE
    	WHEN cv.b23025_004e1_cv < 15 Then 'high'
    	WHEN cv.b23025_004e1_cv >= 15 and b23025_004e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_004e1_cv_cat,

    CASE
    	WHEN cv.b23025_004e2_cv < 15 Then 'high'
    	WHEN cv.b23025_004e2_cv >= 15 and b23025_004e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_004e2_cv_cat,

    CASE
    	WHEN cv.b23025_004c_cv < 15 Then 'high'
    	WHEN cv.b23025_004c_cv >= 15 and b23025_004c_cv < 30 Then 'medium'
    	WHEN cv.b23025_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_004c_cv_cat,

    CASE
    	WHEN cv.b23025_004p_cv < 15 Then 'high'
    	WHEN cv.b23025_004p_cv >= 15 and b23025_004p_cv < 30 Then 'medium'
    	WHEN cv.b23025_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_004p_cv_cat,
CASE
    WHEN ch.b23025_004sd > 1.645 THEN True
    WHEN ch.b23025_004sd <= 1.645 THEN False
    WHEN ch.b23025_004sd IS NULL AND cv.b23025_004c_cv = 0 AND ch.b23025_004cm = 0 THEN True
    ELSE NULL
    END AS b23025_004sd_tf,

    CASE
    	WHEN cv.b23025_005e1_cv < 15 Then 'high'
    	WHEN cv.b23025_005e1_cv >= 15 and b23025_005e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_005e1_cv_cat,

    CASE
    	WHEN cv.b23025_005e2_cv < 15 Then 'high'
    	WHEN cv.b23025_005e2_cv >= 15 and b23025_005e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_005e2_cv_cat,

    CASE
    	WHEN cv.b23025_005c_cv < 15 Then 'high'
    	WHEN cv.b23025_005c_cv >= 15 and b23025_005c_cv < 30 Then 'medium'
    	WHEN cv.b23025_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_005c_cv_cat,

    CASE
    	WHEN cv.b23025_005p_cv < 15 Then 'high'
    	WHEN cv.b23025_005p_cv >= 15 and b23025_005p_cv < 30 Then 'medium'
    	WHEN cv.b23025_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_005p_cv_cat,
CASE
    WHEN ch.b23025_005sd > 1.645 THEN True
    WHEN ch.b23025_005sd <= 1.645 THEN False
    WHEN ch.b23025_005sd IS NULL AND cv.b23025_005c_cv = 0 AND ch.b23025_005cm = 0 THEN True
    ELSE NULL
    END AS b23025_005sd_tf,

    CASE
    	WHEN cv.b23025_006e1_cv < 15 Then 'high'
    	WHEN cv.b23025_006e1_cv >= 15 and b23025_006e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_006e1_cv_cat,

    CASE
    	WHEN cv.b23025_006e2_cv < 15 Then 'high'
    	WHEN cv.b23025_006e2_cv >= 15 and b23025_006e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_006e2_cv_cat,

    CASE
    	WHEN cv.b23025_006c_cv < 15 Then 'high'
    	WHEN cv.b23025_006c_cv >= 15 and b23025_006c_cv < 30 Then 'medium'
    	WHEN cv.b23025_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_006c_cv_cat,

    CASE
    	WHEN cv.b23025_006p_cv < 15 Then 'high'
    	WHEN cv.b23025_006p_cv >= 15 and b23025_006p_cv < 30 Then 'medium'
    	WHEN cv.b23025_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_006p_cv_cat,
CASE
    WHEN ch.b23025_006sd > 1.645 THEN True
    WHEN ch.b23025_006sd <= 1.645 THEN False
    WHEN ch.b23025_006sd IS NULL AND cv.b23025_006c_cv = 0 AND ch.b23025_006cm = 0 THEN True
    ELSE NULL
    END AS b23025_006sd_tf,

    CASE
    	WHEN cv.b23025_007e1_cv < 15 Then 'high'
    	WHEN cv.b23025_007e1_cv >= 15 and b23025_007e1_cv < 30 Then 'medium'
    	WHEN cv.b23025_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_007e1_cv_cat,

    CASE
    	WHEN cv.b23025_007e2_cv < 15 Then 'high'
    	WHEN cv.b23025_007e2_cv >= 15 and b23025_007e2_cv < 30 Then 'medium'
    	WHEN cv.b23025_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_007e2_cv_cat,

    CASE
    	WHEN cv.b23025_007c_cv < 15 Then 'high'
    	WHEN cv.b23025_007c_cv >= 15 and b23025_007c_cv < 30 Then 'medium'
    	WHEN cv.b23025_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_007c_cv_cat,

    CASE
    	WHEN cv.b23025_007p_cv < 15 Then 'high'
    	WHEN cv.b23025_007p_cv >= 15 and b23025_007p_cv < 30 Then 'medium'
    	WHEN cv.b23025_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b23025_007p_cv_cat,
CASE
    WHEN ch.b23025_007sd > 1.645 THEN True
    WHEN ch.b23025_007sd <= 1.645 THEN False
    WHEN ch.b23025_007sd IS NULL AND cv.b23025_007c_cv = 0 AND ch.b23025_007cm = 0 THEN True
    ELSE NULL
    END AS b23025_007sd_tf

    FROM acs_b23025_cvs cv
    INNER JOIN acs_b23025_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_c24030_cvsummary;
    CREATE VIEW acs_c24030_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.c24030_001e1_cv < 15 Then 'high'
    	WHEN cv.c24030_001e1_cv >= 15 and c24030_001e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_001e1_cv_cat,

    CASE
    	WHEN cv.c24030_001e2_cv < 15 Then 'high'
    	WHEN cv.c24030_001e2_cv >= 15 and c24030_001e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_001e2_cv_cat,

    CASE
    	WHEN cv.c24030_001c_cv < 15 Then 'high'
    	WHEN cv.c24030_001c_cv >= 15 and c24030_001c_cv < 30 Then 'medium'
    	WHEN cv.c24030_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_001c_cv_cat,

    CASE
    	WHEN cv.c24030_001p_cv < 15 Then 'high'
    	WHEN cv.c24030_001p_cv >= 15 and c24030_001p_cv < 30 Then 'medium'
    	WHEN cv.c24030_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_001p_cv_cat,
CASE
    WHEN ch.c24030_001sd > 1.645 THEN True
    WHEN ch.c24030_001sd <= 1.645 THEN False
    WHEN ch.c24030_001sd IS NULL AND cv.c24030_001c_cv = 0 AND ch.c24030_001cm = 0 THEN True
    ELSE NULL
    END AS c24030_001sd_tf,

    CASE
    	WHEN cv.c24030_002e1_cv < 15 Then 'high'
    	WHEN cv.c24030_002e1_cv >= 15 and c24030_002e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_002e1_cv_cat,

    CASE
    	WHEN cv.c24030_002e2_cv < 15 Then 'high'
    	WHEN cv.c24030_002e2_cv >= 15 and c24030_002e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_002e2_cv_cat,

    CASE
    	WHEN cv.c24030_002c_cv < 15 Then 'high'
    	WHEN cv.c24030_002c_cv >= 15 and c24030_002c_cv < 30 Then 'medium'
    	WHEN cv.c24030_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_002c_cv_cat,

    CASE
    	WHEN cv.c24030_002p_cv < 15 Then 'high'
    	WHEN cv.c24030_002p_cv >= 15 and c24030_002p_cv < 30 Then 'medium'
    	WHEN cv.c24030_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_002p_cv_cat,
CASE
    WHEN ch.c24030_002sd > 1.645 THEN True
    WHEN ch.c24030_002sd <= 1.645 THEN False
    WHEN ch.c24030_002sd IS NULL AND cv.c24030_002c_cv = 0 AND ch.c24030_002cm = 0 THEN True
    ELSE NULL
    END AS c24030_002sd_tf,

    CASE
    	WHEN cv.c24030_003e1_cv < 15 Then 'high'
    	WHEN cv.c24030_003e1_cv >= 15 and c24030_003e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_003e1_cv_cat,

    CASE
    	WHEN cv.c24030_003e2_cv < 15 Then 'high'
    	WHEN cv.c24030_003e2_cv >= 15 and c24030_003e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_003e2_cv_cat,

    CASE
    	WHEN cv.c24030_003c_cv < 15 Then 'high'
    	WHEN cv.c24030_003c_cv >= 15 and c24030_003c_cv < 30 Then 'medium'
    	WHEN cv.c24030_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_003c_cv_cat,

    CASE
    	WHEN cv.c24030_003p_cv < 15 Then 'high'
    	WHEN cv.c24030_003p_cv >= 15 and c24030_003p_cv < 30 Then 'medium'
    	WHEN cv.c24030_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_003p_cv_cat,
CASE
    WHEN ch.c24030_003sd > 1.645 THEN True
    WHEN ch.c24030_003sd <= 1.645 THEN False
    WHEN ch.c24030_003sd IS NULL AND cv.c24030_003c_cv = 0 AND ch.c24030_003cm = 0 THEN True
    ELSE NULL
    END AS c24030_003sd_tf,

    CASE
    	WHEN cv.c24030_006e1_cv < 15 Then 'high'
    	WHEN cv.c24030_006e1_cv >= 15 and c24030_006e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_006e1_cv_cat,

    CASE
    	WHEN cv.c24030_006e2_cv < 15 Then 'high'
    	WHEN cv.c24030_006e2_cv >= 15 and c24030_006e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_006e2_cv_cat,

    CASE
    	WHEN cv.c24030_006c_cv < 15 Then 'high'
    	WHEN cv.c24030_006c_cv >= 15 and c24030_006c_cv < 30 Then 'medium'
    	WHEN cv.c24030_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_006c_cv_cat,

    CASE
    	WHEN cv.c24030_006p_cv < 15 Then 'high'
    	WHEN cv.c24030_006p_cv >= 15 and c24030_006p_cv < 30 Then 'medium'
    	WHEN cv.c24030_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_006p_cv_cat,
CASE
    WHEN ch.c24030_006sd > 1.645 THEN True
    WHEN ch.c24030_006sd <= 1.645 THEN False
    WHEN ch.c24030_006sd IS NULL AND cv.c24030_006c_cv = 0 AND ch.c24030_006cm = 0 THEN True
    ELSE NULL
    END AS c24030_006sd_tf,

    CASE
    	WHEN cv.c24030_007e1_cv < 15 Then 'high'
    	WHEN cv.c24030_007e1_cv >= 15 and c24030_007e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_007e1_cv_cat,

    CASE
    	WHEN cv.c24030_007e2_cv < 15 Then 'high'
    	WHEN cv.c24030_007e2_cv >= 15 and c24030_007e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_007e2_cv_cat,

    CASE
    	WHEN cv.c24030_007c_cv < 15 Then 'high'
    	WHEN cv.c24030_007c_cv >= 15 and c24030_007c_cv < 30 Then 'medium'
    	WHEN cv.c24030_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_007c_cv_cat,

    CASE
    	WHEN cv.c24030_007p_cv < 15 Then 'high'
    	WHEN cv.c24030_007p_cv >= 15 and c24030_007p_cv < 30 Then 'medium'
    	WHEN cv.c24030_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_007p_cv_cat,
CASE
    WHEN ch.c24030_007sd > 1.645 THEN True
    WHEN ch.c24030_007sd <= 1.645 THEN False
    WHEN ch.c24030_007sd IS NULL AND cv.c24030_007c_cv = 0 AND ch.c24030_007cm = 0 THEN True
    ELSE NULL
    END AS c24030_007sd_tf,

    CASE
    	WHEN cv.c24030_008e1_cv < 15 Then 'high'
    	WHEN cv.c24030_008e1_cv >= 15 and c24030_008e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_008e1_cv_cat,

    CASE
    	WHEN cv.c24030_008e2_cv < 15 Then 'high'
    	WHEN cv.c24030_008e2_cv >= 15 and c24030_008e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_008e2_cv_cat,

    CASE
    	WHEN cv.c24030_008c_cv < 15 Then 'high'
    	WHEN cv.c24030_008c_cv >= 15 and c24030_008c_cv < 30 Then 'medium'
    	WHEN cv.c24030_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_008c_cv_cat,

    CASE
    	WHEN cv.c24030_008p_cv < 15 Then 'high'
    	WHEN cv.c24030_008p_cv >= 15 and c24030_008p_cv < 30 Then 'medium'
    	WHEN cv.c24030_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_008p_cv_cat,
CASE
    WHEN ch.c24030_008sd > 1.645 THEN True
    WHEN ch.c24030_008sd <= 1.645 THEN False
    WHEN ch.c24030_008sd IS NULL AND cv.c24030_008c_cv = 0 AND ch.c24030_008cm = 0 THEN True
    ELSE NULL
    END AS c24030_008sd_tf,

    CASE
    	WHEN cv.c24030_009e1_cv < 15 Then 'high'
    	WHEN cv.c24030_009e1_cv >= 15 and c24030_009e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_009e1_cv_cat,

    CASE
    	WHEN cv.c24030_009e2_cv < 15 Then 'high'
    	WHEN cv.c24030_009e2_cv >= 15 and c24030_009e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_009e2_cv_cat,

    CASE
    	WHEN cv.c24030_009c_cv < 15 Then 'high'
    	WHEN cv.c24030_009c_cv >= 15 and c24030_009c_cv < 30 Then 'medium'
    	WHEN cv.c24030_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_009c_cv_cat,

    CASE
    	WHEN cv.c24030_009p_cv < 15 Then 'high'
    	WHEN cv.c24030_009p_cv >= 15 and c24030_009p_cv < 30 Then 'medium'
    	WHEN cv.c24030_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_009p_cv_cat,
CASE
    WHEN ch.c24030_009sd > 1.645 THEN True
    WHEN ch.c24030_009sd <= 1.645 THEN False
    WHEN ch.c24030_009sd IS NULL AND cv.c24030_009c_cv = 0 AND ch.c24030_009cm = 0 THEN True
    ELSE NULL
    END AS c24030_009sd_tf,

    CASE
    	WHEN cv.c24030_010e1_cv < 15 Then 'high'
    	WHEN cv.c24030_010e1_cv >= 15 and c24030_010e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_010e1_cv_cat,

    CASE
    	WHEN cv.c24030_010e2_cv < 15 Then 'high'
    	WHEN cv.c24030_010e2_cv >= 15 and c24030_010e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_010e2_cv_cat,

    CASE
    	WHEN cv.c24030_010c_cv < 15 Then 'high'
    	WHEN cv.c24030_010c_cv >= 15 and c24030_010c_cv < 30 Then 'medium'
    	WHEN cv.c24030_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_010c_cv_cat,

    CASE
    	WHEN cv.c24030_010p_cv < 15 Then 'high'
    	WHEN cv.c24030_010p_cv >= 15 and c24030_010p_cv < 30 Then 'medium'
    	WHEN cv.c24030_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_010p_cv_cat,
CASE
    WHEN ch.c24030_010sd > 1.645 THEN True
    WHEN ch.c24030_010sd <= 1.645 THEN False
    WHEN ch.c24030_010sd IS NULL AND cv.c24030_010c_cv = 0 AND ch.c24030_010cm = 0 THEN True
    ELSE NULL
    END AS c24030_010sd_tf,

    CASE
    	WHEN cv.c24030_013e1_cv < 15 Then 'high'
    	WHEN cv.c24030_013e1_cv >= 15 and c24030_013e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_013e1_cv_cat,

    CASE
    	WHEN cv.c24030_013e2_cv < 15 Then 'high'
    	WHEN cv.c24030_013e2_cv >= 15 and c24030_013e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_013e2_cv_cat,

    CASE
    	WHEN cv.c24030_013c_cv < 15 Then 'high'
    	WHEN cv.c24030_013c_cv >= 15 and c24030_013c_cv < 30 Then 'medium'
    	WHEN cv.c24030_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_013c_cv_cat,

    CASE
    	WHEN cv.c24030_013p_cv < 15 Then 'high'
    	WHEN cv.c24030_013p_cv >= 15 and c24030_013p_cv < 30 Then 'medium'
    	WHEN cv.c24030_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_013p_cv_cat,
CASE
    WHEN ch.c24030_013sd > 1.645 THEN True
    WHEN ch.c24030_013sd <= 1.645 THEN False
    WHEN ch.c24030_013sd IS NULL AND cv.c24030_013c_cv = 0 AND ch.c24030_013cm = 0 THEN True
    ELSE NULL
    END AS c24030_013sd_tf,

    CASE
    	WHEN cv.c24030_014e1_cv < 15 Then 'high'
    	WHEN cv.c24030_014e1_cv >= 15 and c24030_014e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_014e1_cv_cat,

    CASE
    	WHEN cv.c24030_014e2_cv < 15 Then 'high'
    	WHEN cv.c24030_014e2_cv >= 15 and c24030_014e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_014e2_cv_cat,

    CASE
    	WHEN cv.c24030_014c_cv < 15 Then 'high'
    	WHEN cv.c24030_014c_cv >= 15 and c24030_014c_cv < 30 Then 'medium'
    	WHEN cv.c24030_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_014c_cv_cat,

    CASE
    	WHEN cv.c24030_014p_cv < 15 Then 'high'
    	WHEN cv.c24030_014p_cv >= 15 and c24030_014p_cv < 30 Then 'medium'
    	WHEN cv.c24030_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_014p_cv_cat,
CASE
    WHEN ch.c24030_014sd > 1.645 THEN True
    WHEN ch.c24030_014sd <= 1.645 THEN False
    WHEN ch.c24030_014sd IS NULL AND cv.c24030_014c_cv = 0 AND ch.c24030_014cm = 0 THEN True
    ELSE NULL
    END AS c24030_014sd_tf,

    CASE
    	WHEN cv.c24030_017e1_cv < 15 Then 'high'
    	WHEN cv.c24030_017e1_cv >= 15 and c24030_017e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_017e1_cv_cat,

    CASE
    	WHEN cv.c24030_017e2_cv < 15 Then 'high'
    	WHEN cv.c24030_017e2_cv >= 15 and c24030_017e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_017e2_cv_cat,

    CASE
    	WHEN cv.c24030_017c_cv < 15 Then 'high'
    	WHEN cv.c24030_017c_cv >= 15 and c24030_017c_cv < 30 Then 'medium'
    	WHEN cv.c24030_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_017c_cv_cat,

    CASE
    	WHEN cv.c24030_017p_cv < 15 Then 'high'
    	WHEN cv.c24030_017p_cv >= 15 and c24030_017p_cv < 30 Then 'medium'
    	WHEN cv.c24030_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_017p_cv_cat,
CASE
    WHEN ch.c24030_017sd > 1.645 THEN True
    WHEN ch.c24030_017sd <= 1.645 THEN False
    WHEN ch.c24030_017sd IS NULL AND cv.c24030_017c_cv = 0 AND ch.c24030_017cm = 0 THEN True
    ELSE NULL
    END AS c24030_017sd_tf,

    CASE
    	WHEN cv.c24030_021e1_cv < 15 Then 'high'
    	WHEN cv.c24030_021e1_cv >= 15 and c24030_021e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_021e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_021e1_cv_cat,

    CASE
    	WHEN cv.c24030_021e2_cv < 15 Then 'high'
    	WHEN cv.c24030_021e2_cv >= 15 and c24030_021e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_021e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_021e2_cv_cat,

    CASE
    	WHEN cv.c24030_021c_cv < 15 Then 'high'
    	WHEN cv.c24030_021c_cv >= 15 and c24030_021c_cv < 30 Then 'medium'
    	WHEN cv.c24030_021c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_021c_cv_cat,

    CASE
    	WHEN cv.c24030_021p_cv < 15 Then 'high'
    	WHEN cv.c24030_021p_cv >= 15 and c24030_021p_cv < 30 Then 'medium'
    	WHEN cv.c24030_021p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_021p_cv_cat,
CASE
    WHEN ch.c24030_021sd > 1.645 THEN True
    WHEN ch.c24030_021sd <= 1.645 THEN False
    WHEN ch.c24030_021sd IS NULL AND cv.c24030_021c_cv = 0 AND ch.c24030_021cm = 0 THEN True
    ELSE NULL
    END AS c24030_021sd_tf,

    CASE
    	WHEN cv.c24030_024e1_cv < 15 Then 'high'
    	WHEN cv.c24030_024e1_cv >= 15 and c24030_024e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_024e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_024e1_cv_cat,

    CASE
    	WHEN cv.c24030_024e2_cv < 15 Then 'high'
    	WHEN cv.c24030_024e2_cv >= 15 and c24030_024e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_024e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_024e2_cv_cat,

    CASE
    	WHEN cv.c24030_024c_cv < 15 Then 'high'
    	WHEN cv.c24030_024c_cv >= 15 and c24030_024c_cv < 30 Then 'medium'
    	WHEN cv.c24030_024c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_024c_cv_cat,

    CASE
    	WHEN cv.c24030_024p_cv < 15 Then 'high'
    	WHEN cv.c24030_024p_cv >= 15 and c24030_024p_cv < 30 Then 'medium'
    	WHEN cv.c24030_024p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_024p_cv_cat,
CASE
    WHEN ch.c24030_024sd > 1.645 THEN True
    WHEN ch.c24030_024sd <= 1.645 THEN False
    WHEN ch.c24030_024sd IS NULL AND cv.c24030_024c_cv = 0 AND ch.c24030_024cm = 0 THEN True
    ELSE NULL
    END AS c24030_024sd_tf,

    CASE
    	WHEN cv.c24030_027e1_cv < 15 Then 'high'
    	WHEN cv.c24030_027e1_cv >= 15 and c24030_027e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_027e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_027e1_cv_cat,

    CASE
    	WHEN cv.c24030_027e2_cv < 15 Then 'high'
    	WHEN cv.c24030_027e2_cv >= 15 and c24030_027e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_027e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_027e2_cv_cat,

    CASE
    	WHEN cv.c24030_027c_cv < 15 Then 'high'
    	WHEN cv.c24030_027c_cv >= 15 and c24030_027c_cv < 30 Then 'medium'
    	WHEN cv.c24030_027c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_027c_cv_cat,

    CASE
    	WHEN cv.c24030_027p_cv < 15 Then 'high'
    	WHEN cv.c24030_027p_cv >= 15 and c24030_027p_cv < 30 Then 'medium'
    	WHEN cv.c24030_027p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_027p_cv_cat,
CASE
    WHEN ch.c24030_027sd > 1.645 THEN True
    WHEN ch.c24030_027sd <= 1.645 THEN False
    WHEN ch.c24030_027sd IS NULL AND cv.c24030_027c_cv = 0 AND ch.c24030_027cm = 0 THEN True
    ELSE NULL
    END AS c24030_027sd_tf,

    CASE
    	WHEN cv.c24030_028e1_cv < 15 Then 'high'
    	WHEN cv.c24030_028e1_cv >= 15 and c24030_028e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_028e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_028e1_cv_cat,

    CASE
    	WHEN cv.c24030_028e2_cv < 15 Then 'high'
    	WHEN cv.c24030_028e2_cv >= 15 and c24030_028e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_028e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_028e2_cv_cat,

    CASE
    	WHEN cv.c24030_028c_cv < 15 Then 'high'
    	WHEN cv.c24030_028c_cv >= 15 and c24030_028c_cv < 30 Then 'medium'
    	WHEN cv.c24030_028c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_028c_cv_cat,

    CASE
    	WHEN cv.c24030_028p_cv < 15 Then 'high'
    	WHEN cv.c24030_028p_cv >= 15 and c24030_028p_cv < 30 Then 'medium'
    	WHEN cv.c24030_028p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_028p_cv_cat,
CASE
    WHEN ch.c24030_028sd > 1.645 THEN True
    WHEN ch.c24030_028sd <= 1.645 THEN False
    WHEN ch.c24030_028sd IS NULL AND cv.c24030_028c_cv = 0 AND ch.c24030_028cm = 0 THEN True
    ELSE NULL
    END AS c24030_028sd_tf,

    CASE
    	WHEN cv.c24030_029e1_cv < 15 Then 'high'
    	WHEN cv.c24030_029e1_cv >= 15 and c24030_029e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_029e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_029e1_cv_cat,

    CASE
    	WHEN cv.c24030_029e2_cv < 15 Then 'high'
    	WHEN cv.c24030_029e2_cv >= 15 and c24030_029e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_029e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_029e2_cv_cat,

    CASE
    	WHEN cv.c24030_029c_cv < 15 Then 'high'
    	WHEN cv.c24030_029c_cv >= 15 and c24030_029c_cv < 30 Then 'medium'
    	WHEN cv.c24030_029c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_029c_cv_cat,

    CASE
    	WHEN cv.c24030_029p_cv < 15 Then 'high'
    	WHEN cv.c24030_029p_cv >= 15 and c24030_029p_cv < 30 Then 'medium'
    	WHEN cv.c24030_029p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_029p_cv_cat,
CASE
    WHEN ch.c24030_029sd > 1.645 THEN True
    WHEN ch.c24030_029sd <= 1.645 THEN False
    WHEN ch.c24030_029sd IS NULL AND cv.c24030_029c_cv = 0 AND ch.c24030_029cm = 0 THEN True
    ELSE NULL
    END AS c24030_029sd_tf,

    CASE
    	WHEN cv.c24030_030e1_cv < 15 Then 'high'
    	WHEN cv.c24030_030e1_cv >= 15 and c24030_030e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_030e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_030e1_cv_cat,

    CASE
    	WHEN cv.c24030_030e2_cv < 15 Then 'high'
    	WHEN cv.c24030_030e2_cv >= 15 and c24030_030e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_030e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_030e2_cv_cat,

    CASE
    	WHEN cv.c24030_030c_cv < 15 Then 'high'
    	WHEN cv.c24030_030c_cv >= 15 and c24030_030c_cv < 30 Then 'medium'
    	WHEN cv.c24030_030c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_030c_cv_cat,

    CASE
    	WHEN cv.c24030_030p_cv < 15 Then 'high'
    	WHEN cv.c24030_030p_cv >= 15 and c24030_030p_cv < 30 Then 'medium'
    	WHEN cv.c24030_030p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_030p_cv_cat,
CASE
    WHEN ch.c24030_030sd > 1.645 THEN True
    WHEN ch.c24030_030sd <= 1.645 THEN False
    WHEN ch.c24030_030sd IS NULL AND cv.c24030_030c_cv = 0 AND ch.c24030_030cm = 0 THEN True
    ELSE NULL
    END AS c24030_030sd_tf,

    CASE
    	WHEN cv.c24030_033e1_cv < 15 Then 'high'
    	WHEN cv.c24030_033e1_cv >= 15 and c24030_033e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_033e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_033e1_cv_cat,

    CASE
    	WHEN cv.c24030_033e2_cv < 15 Then 'high'
    	WHEN cv.c24030_033e2_cv >= 15 and c24030_033e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_033e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_033e2_cv_cat,

    CASE
    	WHEN cv.c24030_033c_cv < 15 Then 'high'
    	WHEN cv.c24030_033c_cv >= 15 and c24030_033c_cv < 30 Then 'medium'
    	WHEN cv.c24030_033c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_033c_cv_cat,

    CASE
    	WHEN cv.c24030_033p_cv < 15 Then 'high'
    	WHEN cv.c24030_033p_cv >= 15 and c24030_033p_cv < 30 Then 'medium'
    	WHEN cv.c24030_033p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_033p_cv_cat,
CASE
    WHEN ch.c24030_033sd > 1.645 THEN True
    WHEN ch.c24030_033sd <= 1.645 THEN False
    WHEN ch.c24030_033sd IS NULL AND cv.c24030_033c_cv = 0 AND ch.c24030_033cm = 0 THEN True
    ELSE NULL
    END AS c24030_033sd_tf,

    CASE
    	WHEN cv.c24030_034e1_cv < 15 Then 'high'
    	WHEN cv.c24030_034e1_cv >= 15 and c24030_034e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_034e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_034e1_cv_cat,

    CASE
    	WHEN cv.c24030_034e2_cv < 15 Then 'high'
    	WHEN cv.c24030_034e2_cv >= 15 and c24030_034e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_034e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_034e2_cv_cat,

    CASE
    	WHEN cv.c24030_034c_cv < 15 Then 'high'
    	WHEN cv.c24030_034c_cv >= 15 and c24030_034c_cv < 30 Then 'medium'
    	WHEN cv.c24030_034c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_034c_cv_cat,

    CASE
    	WHEN cv.c24030_034p_cv < 15 Then 'high'
    	WHEN cv.c24030_034p_cv >= 15 and c24030_034p_cv < 30 Then 'medium'
    	WHEN cv.c24030_034p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_034p_cv_cat,
CASE
    WHEN ch.c24030_034sd > 1.645 THEN True
    WHEN ch.c24030_034sd <= 1.645 THEN False
    WHEN ch.c24030_034sd IS NULL AND cv.c24030_034c_cv = 0 AND ch.c24030_034cm = 0 THEN True
    ELSE NULL
    END AS c24030_034sd_tf,

    CASE
    	WHEN cv.c24030_035e1_cv < 15 Then 'high'
    	WHEN cv.c24030_035e1_cv >= 15 and c24030_035e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_035e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_035e1_cv_cat,

    CASE
    	WHEN cv.c24030_035e2_cv < 15 Then 'high'
    	WHEN cv.c24030_035e2_cv >= 15 and c24030_035e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_035e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_035e2_cv_cat,

    CASE
    	WHEN cv.c24030_035c_cv < 15 Then 'high'
    	WHEN cv.c24030_035c_cv >= 15 and c24030_035c_cv < 30 Then 'medium'
    	WHEN cv.c24030_035c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_035c_cv_cat,

    CASE
    	WHEN cv.c24030_035p_cv < 15 Then 'high'
    	WHEN cv.c24030_035p_cv >= 15 and c24030_035p_cv < 30 Then 'medium'
    	WHEN cv.c24030_035p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_035p_cv_cat,
CASE
    WHEN ch.c24030_035sd > 1.645 THEN True
    WHEN ch.c24030_035sd <= 1.645 THEN False
    WHEN ch.c24030_035sd IS NULL AND cv.c24030_035c_cv = 0 AND ch.c24030_035cm = 0 THEN True
    ELSE NULL
    END AS c24030_035sd_tf,

    CASE
    	WHEN cv.c24030_036e1_cv < 15 Then 'high'
    	WHEN cv.c24030_036e1_cv >= 15 and c24030_036e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_036e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_036e1_cv_cat,

    CASE
    	WHEN cv.c24030_036e2_cv < 15 Then 'high'
    	WHEN cv.c24030_036e2_cv >= 15 and c24030_036e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_036e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_036e2_cv_cat,

    CASE
    	WHEN cv.c24030_036c_cv < 15 Then 'high'
    	WHEN cv.c24030_036c_cv >= 15 and c24030_036c_cv < 30 Then 'medium'
    	WHEN cv.c24030_036c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_036c_cv_cat,

    CASE
    	WHEN cv.c24030_036p_cv < 15 Then 'high'
    	WHEN cv.c24030_036p_cv >= 15 and c24030_036p_cv < 30 Then 'medium'
    	WHEN cv.c24030_036p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_036p_cv_cat,
CASE
    WHEN ch.c24030_036sd > 1.645 THEN True
    WHEN ch.c24030_036sd <= 1.645 THEN False
    WHEN ch.c24030_036sd IS NULL AND cv.c24030_036c_cv = 0 AND ch.c24030_036cm = 0 THEN True
    ELSE NULL
    END AS c24030_036sd_tf,

    CASE
    	WHEN cv.c24030_037e1_cv < 15 Then 'high'
    	WHEN cv.c24030_037e1_cv >= 15 and c24030_037e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_037e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_037e1_cv_cat,

    CASE
    	WHEN cv.c24030_037e2_cv < 15 Then 'high'
    	WHEN cv.c24030_037e2_cv >= 15 and c24030_037e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_037e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_037e2_cv_cat,

    CASE
    	WHEN cv.c24030_037c_cv < 15 Then 'high'
    	WHEN cv.c24030_037c_cv >= 15 and c24030_037c_cv < 30 Then 'medium'
    	WHEN cv.c24030_037c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_037c_cv_cat,

    CASE
    	WHEN cv.c24030_037p_cv < 15 Then 'high'
    	WHEN cv.c24030_037p_cv >= 15 and c24030_037p_cv < 30 Then 'medium'
    	WHEN cv.c24030_037p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_037p_cv_cat,
CASE
    WHEN ch.c24030_037sd > 1.645 THEN True
    WHEN ch.c24030_037sd <= 1.645 THEN False
    WHEN ch.c24030_037sd IS NULL AND cv.c24030_037c_cv = 0 AND ch.c24030_037cm = 0 THEN True
    ELSE NULL
    END AS c24030_037sd_tf,

    CASE
    	WHEN cv.c24030_040e1_cv < 15 Then 'high'
    	WHEN cv.c24030_040e1_cv >= 15 and c24030_040e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_040e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_040e1_cv_cat,

    CASE
    	WHEN cv.c24030_040e2_cv < 15 Then 'high'
    	WHEN cv.c24030_040e2_cv >= 15 and c24030_040e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_040e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_040e2_cv_cat,

    CASE
    	WHEN cv.c24030_040c_cv < 15 Then 'high'
    	WHEN cv.c24030_040c_cv >= 15 and c24030_040c_cv < 30 Then 'medium'
    	WHEN cv.c24030_040c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_040c_cv_cat,

    CASE
    	WHEN cv.c24030_040p_cv < 15 Then 'high'
    	WHEN cv.c24030_040p_cv >= 15 and c24030_040p_cv < 30 Then 'medium'
    	WHEN cv.c24030_040p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_040p_cv_cat,
CASE
    WHEN ch.c24030_040sd > 1.645 THEN True
    WHEN ch.c24030_040sd <= 1.645 THEN False
    WHEN ch.c24030_040sd IS NULL AND cv.c24030_040c_cv = 0 AND ch.c24030_040cm = 0 THEN True
    ELSE NULL
    END AS c24030_040sd_tf,

    CASE
    	WHEN cv.c24030_041e1_cv < 15 Then 'high'
    	WHEN cv.c24030_041e1_cv >= 15 and c24030_041e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_041e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_041e1_cv_cat,

    CASE
    	WHEN cv.c24030_041e2_cv < 15 Then 'high'
    	WHEN cv.c24030_041e2_cv >= 15 and c24030_041e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_041e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_041e2_cv_cat,

    CASE
    	WHEN cv.c24030_041c_cv < 15 Then 'high'
    	WHEN cv.c24030_041c_cv >= 15 and c24030_041c_cv < 30 Then 'medium'
    	WHEN cv.c24030_041c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_041c_cv_cat,

    CASE
    	WHEN cv.c24030_041p_cv < 15 Then 'high'
    	WHEN cv.c24030_041p_cv >= 15 and c24030_041p_cv < 30 Then 'medium'
    	WHEN cv.c24030_041p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_041p_cv_cat,
CASE
    WHEN ch.c24030_041sd > 1.645 THEN True
    WHEN ch.c24030_041sd <= 1.645 THEN False
    WHEN ch.c24030_041sd IS NULL AND cv.c24030_041c_cv = 0 AND ch.c24030_041cm = 0 THEN True
    ELSE NULL
    END AS c24030_041sd_tf,

    CASE
    	WHEN cv.c24030_044e1_cv < 15 Then 'high'
    	WHEN cv.c24030_044e1_cv >= 15 and c24030_044e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_044e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_044e1_cv_cat,

    CASE
    	WHEN cv.c24030_044e2_cv < 15 Then 'high'
    	WHEN cv.c24030_044e2_cv >= 15 and c24030_044e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_044e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_044e2_cv_cat,

    CASE
    	WHEN cv.c24030_044c_cv < 15 Then 'high'
    	WHEN cv.c24030_044c_cv >= 15 and c24030_044c_cv < 30 Then 'medium'
    	WHEN cv.c24030_044c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_044c_cv_cat,

    CASE
    	WHEN cv.c24030_044p_cv < 15 Then 'high'
    	WHEN cv.c24030_044p_cv >= 15 and c24030_044p_cv < 30 Then 'medium'
    	WHEN cv.c24030_044p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_044p_cv_cat,
CASE
    WHEN ch.c24030_044sd > 1.645 THEN True
    WHEN ch.c24030_044sd <= 1.645 THEN False
    WHEN ch.c24030_044sd IS NULL AND cv.c24030_044c_cv = 0 AND ch.c24030_044cm = 0 THEN True
    ELSE NULL
    END AS c24030_044sd_tf,

    CASE
    	WHEN cv.c24030_048e1_cv < 15 Then 'high'
    	WHEN cv.c24030_048e1_cv >= 15 and c24030_048e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_048e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_048e1_cv_cat,

    CASE
    	WHEN cv.c24030_048e2_cv < 15 Then 'high'
    	WHEN cv.c24030_048e2_cv >= 15 and c24030_048e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_048e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_048e2_cv_cat,

    CASE
    	WHEN cv.c24030_048c_cv < 15 Then 'high'
    	WHEN cv.c24030_048c_cv >= 15 and c24030_048c_cv < 30 Then 'medium'
    	WHEN cv.c24030_048c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_048c_cv_cat,

    CASE
    	WHEN cv.c24030_048p_cv < 15 Then 'high'
    	WHEN cv.c24030_048p_cv >= 15 and c24030_048p_cv < 30 Then 'medium'
    	WHEN cv.c24030_048p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_048p_cv_cat,
CASE
    WHEN ch.c24030_048sd > 1.645 THEN True
    WHEN ch.c24030_048sd <= 1.645 THEN False
    WHEN ch.c24030_048sd IS NULL AND cv.c24030_048c_cv = 0 AND ch.c24030_048cm = 0 THEN True
    ELSE NULL
    END AS c24030_048sd_tf,

    CASE
    	WHEN cv.c24030_051e1_cv < 15 Then 'high'
    	WHEN cv.c24030_051e1_cv >= 15 and c24030_051e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_051e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_051e1_cv_cat,

    CASE
    	WHEN cv.c24030_051e2_cv < 15 Then 'high'
    	WHEN cv.c24030_051e2_cv >= 15 and c24030_051e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_051e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_051e2_cv_cat,

    CASE
    	WHEN cv.c24030_051c_cv < 15 Then 'high'
    	WHEN cv.c24030_051c_cv >= 15 and c24030_051c_cv < 30 Then 'medium'
    	WHEN cv.c24030_051c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_051c_cv_cat,

    CASE
    	WHEN cv.c24030_051p_cv < 15 Then 'high'
    	WHEN cv.c24030_051p_cv >= 15 and c24030_051p_cv < 30 Then 'medium'
    	WHEN cv.c24030_051p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_051p_cv_cat,
CASE
    WHEN ch.c24030_051sd > 1.645 THEN True
    WHEN ch.c24030_051sd <= 1.645 THEN False
    WHEN ch.c24030_051sd IS NULL AND cv.c24030_051c_cv = 0 AND ch.c24030_051cm = 0 THEN True
    ELSE NULL
    END AS c24030_051sd_tf,

    CASE
    	WHEN cv.c24030_054e1_cv < 15 Then 'high'
    	WHEN cv.c24030_054e1_cv >= 15 and c24030_054e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_054e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_054e1_cv_cat,

    CASE
    	WHEN cv.c24030_054e2_cv < 15 Then 'high'
    	WHEN cv.c24030_054e2_cv >= 15 and c24030_054e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_054e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_054e2_cv_cat,

    CASE
    	WHEN cv.c24030_054c_cv < 15 Then 'high'
    	WHEN cv.c24030_054c_cv >= 15 and c24030_054c_cv < 30 Then 'medium'
    	WHEN cv.c24030_054c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_054c_cv_cat,

    CASE
    	WHEN cv.c24030_054p_cv < 15 Then 'high'
    	WHEN cv.c24030_054p_cv >= 15 and c24030_054p_cv < 30 Then 'medium'
    	WHEN cv.c24030_054p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_054p_cv_cat,
CASE
    WHEN ch.c24030_054sd > 1.645 THEN True
    WHEN ch.c24030_054sd <= 1.645 THEN False
    WHEN ch.c24030_054sd IS NULL AND cv.c24030_054c_cv = 0 AND ch.c24030_054cm = 0 THEN True
    ELSE NULL
    END AS c24030_054sd_tf,

    CASE
    	WHEN cv.c24030_055e1_cv < 15 Then 'high'
    	WHEN cv.c24030_055e1_cv >= 15 and c24030_055e1_cv < 30 Then 'medium'
    	WHEN cv.c24030_055e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_055e1_cv_cat,

    CASE
    	WHEN cv.c24030_055e2_cv < 15 Then 'high'
    	WHEN cv.c24030_055e2_cv >= 15 and c24030_055e2_cv < 30 Then 'medium'
    	WHEN cv.c24030_055e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_055e2_cv_cat,

    CASE
    	WHEN cv.c24030_055c_cv < 15 Then 'high'
    	WHEN cv.c24030_055c_cv >= 15 and c24030_055c_cv < 30 Then 'medium'
    	WHEN cv.c24030_055c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_055c_cv_cat,

    CASE
    	WHEN cv.c24030_055p_cv < 15 Then 'high'
    	WHEN cv.c24030_055p_cv >= 15 and c24030_055p_cv < 30 Then 'medium'
    	WHEN cv.c24030_055p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS c24030_055p_cv_cat,
CASE
    WHEN ch.c24030_055sd > 1.645 THEN True
    WHEN ch.c24030_055sd <= 1.645 THEN False
    WHEN ch.c24030_055sd IS NULL AND cv.c24030_055c_cv = 0 AND ch.c24030_055cm = 0 THEN True
    ELSE NULL
    END AS c24030_055sd_tf

    FROM acs_c24030_cvs cv
    INNER JOIN acs_c24030_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25002_cvsummary;
    CREATE VIEW acs_b25002_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25002_001e1_cv < 15 Then 'high'
    	WHEN cv.b25002_001e1_cv >= 15 and b25002_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25002_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_001e1_cv_cat,

    CASE
    	WHEN cv.b25002_001e2_cv < 15 Then 'high'
    	WHEN cv.b25002_001e2_cv >= 15 and b25002_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25002_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_001e2_cv_cat,

    CASE
    	WHEN cv.b25002_001c_cv < 15 Then 'high'
    	WHEN cv.b25002_001c_cv >= 15 and b25002_001c_cv < 30 Then 'medium'
    	WHEN cv.b25002_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_001c_cv_cat,

    CASE
    	WHEN cv.b25002_001p_cv < 15 Then 'high'
    	WHEN cv.b25002_001p_cv >= 15 and b25002_001p_cv < 30 Then 'medium'
    	WHEN cv.b25002_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_001p_cv_cat,
CASE
    WHEN ch.b25002_001sd > 1.645 THEN True
    WHEN ch.b25002_001sd <= 1.645 THEN False
    WHEN ch.b25002_001sd IS NULL AND cv.b25002_001c_cv = 0 AND ch.b25002_001cm = 0 THEN True
    ELSE NULL
    END AS b25002_001sd_tf,

    CASE
    	WHEN cv.b25002_002e1_cv < 15 Then 'high'
    	WHEN cv.b25002_002e1_cv >= 15 and b25002_002e1_cv < 30 Then 'medium'
    	WHEN cv.b25002_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_002e1_cv_cat,

    CASE
    	WHEN cv.b25002_002e2_cv < 15 Then 'high'
    	WHEN cv.b25002_002e2_cv >= 15 and b25002_002e2_cv < 30 Then 'medium'
    	WHEN cv.b25002_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_002e2_cv_cat,

    CASE
    	WHEN cv.b25002_002c_cv < 15 Then 'high'
    	WHEN cv.b25002_002c_cv >= 15 and b25002_002c_cv < 30 Then 'medium'
    	WHEN cv.b25002_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_002c_cv_cat,

    CASE
    	WHEN cv.b25002_002p_cv < 15 Then 'high'
    	WHEN cv.b25002_002p_cv >= 15 and b25002_002p_cv < 30 Then 'medium'
    	WHEN cv.b25002_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_002p_cv_cat,
CASE
    WHEN ch.b25002_002sd > 1.645 THEN True
    WHEN ch.b25002_002sd <= 1.645 THEN False
    WHEN ch.b25002_002sd IS NULL AND cv.b25002_002c_cv = 0 AND ch.b25002_002cm = 0 THEN True
    ELSE NULL
    END AS b25002_002sd_tf,

    CASE
    	WHEN cv.b25002_003e1_cv < 15 Then 'high'
    	WHEN cv.b25002_003e1_cv >= 15 and b25002_003e1_cv < 30 Then 'medium'
    	WHEN cv.b25002_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_003e1_cv_cat,

    CASE
    	WHEN cv.b25002_003e2_cv < 15 Then 'high'
    	WHEN cv.b25002_003e2_cv >= 15 and b25002_003e2_cv < 30 Then 'medium'
    	WHEN cv.b25002_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_003e2_cv_cat,

    CASE
    	WHEN cv.b25002_003c_cv < 15 Then 'high'
    	WHEN cv.b25002_003c_cv >= 15 and b25002_003c_cv < 30 Then 'medium'
    	WHEN cv.b25002_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_003c_cv_cat,

    CASE
    	WHEN cv.b25002_003p_cv < 15 Then 'high'
    	WHEN cv.b25002_003p_cv >= 15 and b25002_003p_cv < 30 Then 'medium'
    	WHEN cv.b25002_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25002_003p_cv_cat,
CASE
    WHEN ch.b25002_003sd > 1.645 THEN True
    WHEN ch.b25002_003sd <= 1.645 THEN False
    WHEN ch.b25002_003sd IS NULL AND cv.b25002_003c_cv = 0 AND ch.b25002_003cm = 0 THEN True
    ELSE NULL
    END AS b25002_003sd_tf

    FROM acs_b25002_cvs cv
    INNER JOIN acs_b25002_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25003_cvsummary;
    CREATE VIEW acs_b25003_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25003_001e1_cv < 15 Then 'high'
    	WHEN cv.b25003_001e1_cv >= 15 and b25003_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25003_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_001e1_cv_cat,

    CASE
    	WHEN cv.b25003_001e2_cv < 15 Then 'high'
    	WHEN cv.b25003_001e2_cv >= 15 and b25003_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25003_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_001e2_cv_cat,

    CASE
    	WHEN cv.b25003_001c_cv < 15 Then 'high'
    	WHEN cv.b25003_001c_cv >= 15 and b25003_001c_cv < 30 Then 'medium'
    	WHEN cv.b25003_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_001c_cv_cat,

    CASE
    	WHEN cv.b25003_001p_cv < 15 Then 'high'
    	WHEN cv.b25003_001p_cv >= 15 and b25003_001p_cv < 30 Then 'medium'
    	WHEN cv.b25003_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_001p_cv_cat,
CASE
    WHEN ch.b25003_001sd > 1.645 THEN True
    WHEN ch.b25003_001sd <= 1.645 THEN False
    WHEN ch.b25003_001sd IS NULL AND cv.b25003_001c_cv = 0 AND ch.b25003_001cm = 0 THEN True
    ELSE NULL
    END AS b25003_001sd_tf,

    CASE
    	WHEN cv.b25003_002e1_cv < 15 Then 'high'
    	WHEN cv.b25003_002e1_cv >= 15 and b25003_002e1_cv < 30 Then 'medium'
    	WHEN cv.b25003_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_002e1_cv_cat,

    CASE
    	WHEN cv.b25003_002e2_cv < 15 Then 'high'
    	WHEN cv.b25003_002e2_cv >= 15 and b25003_002e2_cv < 30 Then 'medium'
    	WHEN cv.b25003_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_002e2_cv_cat,

    CASE
    	WHEN cv.b25003_002c_cv < 15 Then 'high'
    	WHEN cv.b25003_002c_cv >= 15 and b25003_002c_cv < 30 Then 'medium'
    	WHEN cv.b25003_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_002c_cv_cat,

    CASE
    	WHEN cv.b25003_002p_cv < 15 Then 'high'
    	WHEN cv.b25003_002p_cv >= 15 and b25003_002p_cv < 30 Then 'medium'
    	WHEN cv.b25003_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_002p_cv_cat,
CASE
    WHEN ch.b25003_002sd > 1.645 THEN True
    WHEN ch.b25003_002sd <= 1.645 THEN False
    WHEN ch.b25003_002sd IS NULL AND cv.b25003_002c_cv = 0 AND ch.b25003_002cm = 0 THEN True
    ELSE NULL
    END AS b25003_002sd_tf,

    CASE
    	WHEN cv.b25003_003e1_cv < 15 Then 'high'
    	WHEN cv.b25003_003e1_cv >= 15 and b25003_003e1_cv < 30 Then 'medium'
    	WHEN cv.b25003_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_003e1_cv_cat,

    CASE
    	WHEN cv.b25003_003e2_cv < 15 Then 'high'
    	WHEN cv.b25003_003e2_cv >= 15 and b25003_003e2_cv < 30 Then 'medium'
    	WHEN cv.b25003_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_003e2_cv_cat,

    CASE
    	WHEN cv.b25003_003c_cv < 15 Then 'high'
    	WHEN cv.b25003_003c_cv >= 15 and b25003_003c_cv < 30 Then 'medium'
    	WHEN cv.b25003_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_003c_cv_cat,

    CASE
    	WHEN cv.b25003_003p_cv < 15 Then 'high'
    	WHEN cv.b25003_003p_cv >= 15 and b25003_003p_cv < 30 Then 'medium'
    	WHEN cv.b25003_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25003_003p_cv_cat,
CASE
    WHEN ch.b25003_003sd > 1.645 THEN True
    WHEN ch.b25003_003sd <= 1.645 THEN False
    WHEN ch.b25003_003sd IS NULL AND cv.b25003_003c_cv = 0 AND ch.b25003_003cm = 0 THEN True
    ELSE NULL
    END AS b25003_003sd_tf

    FROM acs_b25003_cvs cv
    INNER JOIN acs_b25003_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25010_cvsummary;
    CREATE VIEW acs_b25010_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25010_001e1_cv < 15 Then 'high'
    	WHEN cv.b25010_001e1_cv >= 15 and b25010_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25010_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_001e1_cv_cat,

    CASE
    	WHEN cv.b25010_001e2_cv < 15 Then 'high'
    	WHEN cv.b25010_001e2_cv >= 15 and b25010_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25010_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_001e2_cv_cat,

    CASE
    	WHEN cv.b25010_001c_cv < 15 Then 'high'
    	WHEN cv.b25010_001c_cv >= 15 and b25010_001c_cv < 30 Then 'medium'
    	WHEN cv.b25010_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_001c_cv_cat,

    CASE
    	WHEN cv.b25010_001p_cv < 15 Then 'high'
    	WHEN cv.b25010_001p_cv >= 15 and b25010_001p_cv < 30 Then 'medium'
    	WHEN cv.b25010_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_001p_cv_cat,
CASE
    WHEN ch.b25010_001sd > 1.645 THEN True
    WHEN ch.b25010_001sd <= 1.645 THEN False
    WHEN ch.b25010_001sd IS NULL AND cv.b25010_001c_cv = 0 AND ch.b25010_001cm = 0 THEN True
    ELSE NULL
    END AS b25010_001sd_tf,

    CASE
    	WHEN cv.b25010_002e1_cv < 15 Then 'high'
    	WHEN cv.b25010_002e1_cv >= 15 and b25010_002e1_cv < 30 Then 'medium'
    	WHEN cv.b25010_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_002e1_cv_cat,

    CASE
    	WHEN cv.b25010_002e2_cv < 15 Then 'high'
    	WHEN cv.b25010_002e2_cv >= 15 and b25010_002e2_cv < 30 Then 'medium'
    	WHEN cv.b25010_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_002e2_cv_cat,

    CASE
    	WHEN cv.b25010_002c_cv < 15 Then 'high'
    	WHEN cv.b25010_002c_cv >= 15 and b25010_002c_cv < 30 Then 'medium'
    	WHEN cv.b25010_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_002c_cv_cat,

    CASE
    	WHEN cv.b25010_002p_cv < 15 Then 'high'
    	WHEN cv.b25010_002p_cv >= 15 and b25010_002p_cv < 30 Then 'medium'
    	WHEN cv.b25010_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_002p_cv_cat,
CASE
    WHEN ch.b25010_002sd > 1.645 THEN True
    WHEN ch.b25010_002sd <= 1.645 THEN False
    WHEN ch.b25010_002sd IS NULL AND cv.b25010_002c_cv = 0 AND ch.b25010_002cm = 0 THEN True
    ELSE NULL
    END AS b25010_002sd_tf,

    CASE
    	WHEN cv.b25010_003e1_cv < 15 Then 'high'
    	WHEN cv.b25010_003e1_cv >= 15 and b25010_003e1_cv < 30 Then 'medium'
    	WHEN cv.b25010_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_003e1_cv_cat,

    CASE
    	WHEN cv.b25010_003e2_cv < 15 Then 'high'
    	WHEN cv.b25010_003e2_cv >= 15 and b25010_003e2_cv < 30 Then 'medium'
    	WHEN cv.b25010_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_003e2_cv_cat,

    CASE
    	WHEN cv.b25010_003c_cv < 15 Then 'high'
    	WHEN cv.b25010_003c_cv >= 15 and b25010_003c_cv < 30 Then 'medium'
    	WHEN cv.b25010_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_003c_cv_cat,

    CASE
    	WHEN cv.b25010_003p_cv < 15 Then 'high'
    	WHEN cv.b25010_003p_cv >= 15 and b25010_003p_cv < 30 Then 'medium'
    	WHEN cv.b25010_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25010_003p_cv_cat,
CASE
    WHEN ch.b25010_003sd > 1.645 THEN True
    WHEN ch.b25010_003sd <= 1.645 THEN False
    WHEN ch.b25010_003sd IS NULL AND cv.b25010_003c_cv = 0 AND ch.b25010_003cm = 0 THEN True
    ELSE NULL
    END AS b25010_003sd_tf

    FROM acs_b25010_cvs cv
    INNER JOIN acs_b25010_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25063_cvsummary;
    CREATE VIEW acs_b25063_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25063_001e1_cv < 15 Then 'high'
    	WHEN cv.b25063_001e1_cv >= 15 and b25063_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_001e1_cv_cat,

    CASE
    	WHEN cv.b25063_001e2_cv < 15 Then 'high'
    	WHEN cv.b25063_001e2_cv >= 15 and b25063_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_001e2_cv_cat,

    CASE
    	WHEN cv.b25063_001c_cv < 15 Then 'high'
    	WHEN cv.b25063_001c_cv >= 15 and b25063_001c_cv < 30 Then 'medium'
    	WHEN cv.b25063_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_001c_cv_cat,

    CASE
    	WHEN cv.b25063_001p_cv < 15 Then 'high'
    	WHEN cv.b25063_001p_cv >= 15 and b25063_001p_cv < 30 Then 'medium'
    	WHEN cv.b25063_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_001p_cv_cat,
CASE
    WHEN ch.b25063_001sd > 1.645 THEN True
    WHEN ch.b25063_001sd <= 1.645 THEN False
    WHEN ch.b25063_001sd IS NULL AND cv.b25063_001c_cv = 0 AND ch.b25063_001cm = 0 THEN True
    ELSE NULL
    END AS b25063_001sd_tf,

    CASE
    	WHEN cv.b25063_002e1_cv < 15 Then 'high'
    	WHEN cv.b25063_002e1_cv >= 15 and b25063_002e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_002e1_cv_cat,

    CASE
    	WHEN cv.b25063_002e2_cv < 15 Then 'high'
    	WHEN cv.b25063_002e2_cv >= 15 and b25063_002e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_002e2_cv_cat,

    CASE
    	WHEN cv.b25063_002c_cv < 15 Then 'high'
    	WHEN cv.b25063_002c_cv >= 15 and b25063_002c_cv < 30 Then 'medium'
    	WHEN cv.b25063_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_002c_cv_cat,

    CASE
    	WHEN cv.b25063_002p_cv < 15 Then 'high'
    	WHEN cv.b25063_002p_cv >= 15 and b25063_002p_cv < 30 Then 'medium'
    	WHEN cv.b25063_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_002p_cv_cat,
CASE
    WHEN ch.b25063_002sd > 1.645 THEN True
    WHEN ch.b25063_002sd <= 1.645 THEN False
    WHEN ch.b25063_002sd IS NULL AND cv.b25063_002c_cv = 0 AND ch.b25063_002cm = 0 THEN True
    ELSE NULL
    END AS b25063_002sd_tf,

    CASE
    	WHEN cv.b25063_003e1_cv < 15 Then 'high'
    	WHEN cv.b25063_003e1_cv >= 15 and b25063_003e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_003e1_cv_cat,

    CASE
    	WHEN cv.b25063_003e2_cv < 15 Then 'high'
    	WHEN cv.b25063_003e2_cv >= 15 and b25063_003e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_003e2_cv_cat,

    CASE
    	WHEN cv.b25063_003c_cv < 15 Then 'high'
    	WHEN cv.b25063_003c_cv >= 15 and b25063_003c_cv < 30 Then 'medium'
    	WHEN cv.b25063_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_003c_cv_cat,

    CASE
    	WHEN cv.b25063_003p_cv < 15 Then 'high'
    	WHEN cv.b25063_003p_cv >= 15 and b25063_003p_cv < 30 Then 'medium'
    	WHEN cv.b25063_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_003p_cv_cat,
CASE
    WHEN ch.b25063_003sd > 1.645 THEN True
    WHEN ch.b25063_003sd <= 1.645 THEN False
    WHEN ch.b25063_003sd IS NULL AND cv.b25063_003c_cv = 0 AND ch.b25063_003cm = 0 THEN True
    ELSE NULL
    END AS b25063_003sd_tf,

    CASE
    	WHEN cv.b25063_004e1_cv < 15 Then 'high'
    	WHEN cv.b25063_004e1_cv >= 15 and b25063_004e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_004e1_cv_cat,

    CASE
    	WHEN cv.b25063_004e2_cv < 15 Then 'high'
    	WHEN cv.b25063_004e2_cv >= 15 and b25063_004e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_004e2_cv_cat,

    CASE
    	WHEN cv.b25063_004c_cv < 15 Then 'high'
    	WHEN cv.b25063_004c_cv >= 15 and b25063_004c_cv < 30 Then 'medium'
    	WHEN cv.b25063_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_004c_cv_cat,

    CASE
    	WHEN cv.b25063_004p_cv < 15 Then 'high'
    	WHEN cv.b25063_004p_cv >= 15 and b25063_004p_cv < 30 Then 'medium'
    	WHEN cv.b25063_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_004p_cv_cat,
CASE
    WHEN ch.b25063_004sd > 1.645 THEN True
    WHEN ch.b25063_004sd <= 1.645 THEN False
    WHEN ch.b25063_004sd IS NULL AND cv.b25063_004c_cv = 0 AND ch.b25063_004cm = 0 THEN True
    ELSE NULL
    END AS b25063_004sd_tf,

    CASE
    	WHEN cv.b25063_005e1_cv < 15 Then 'high'
    	WHEN cv.b25063_005e1_cv >= 15 and b25063_005e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_005e1_cv_cat,

    CASE
    	WHEN cv.b25063_005e2_cv < 15 Then 'high'
    	WHEN cv.b25063_005e2_cv >= 15 and b25063_005e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_005e2_cv_cat,

    CASE
    	WHEN cv.b25063_005c_cv < 15 Then 'high'
    	WHEN cv.b25063_005c_cv >= 15 and b25063_005c_cv < 30 Then 'medium'
    	WHEN cv.b25063_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_005c_cv_cat,

    CASE
    	WHEN cv.b25063_005p_cv < 15 Then 'high'
    	WHEN cv.b25063_005p_cv >= 15 and b25063_005p_cv < 30 Then 'medium'
    	WHEN cv.b25063_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_005p_cv_cat,
CASE
    WHEN ch.b25063_005sd > 1.645 THEN True
    WHEN ch.b25063_005sd <= 1.645 THEN False
    WHEN ch.b25063_005sd IS NULL AND cv.b25063_005c_cv = 0 AND ch.b25063_005cm = 0 THEN True
    ELSE NULL
    END AS b25063_005sd_tf,

    CASE
    	WHEN cv.b25063_006e1_cv < 15 Then 'high'
    	WHEN cv.b25063_006e1_cv >= 15 and b25063_006e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_006e1_cv_cat,

    CASE
    	WHEN cv.b25063_006e2_cv < 15 Then 'high'
    	WHEN cv.b25063_006e2_cv >= 15 and b25063_006e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_006e2_cv_cat,

    CASE
    	WHEN cv.b25063_006c_cv < 15 Then 'high'
    	WHEN cv.b25063_006c_cv >= 15 and b25063_006c_cv < 30 Then 'medium'
    	WHEN cv.b25063_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_006c_cv_cat,

    CASE
    	WHEN cv.b25063_006p_cv < 15 Then 'high'
    	WHEN cv.b25063_006p_cv >= 15 and b25063_006p_cv < 30 Then 'medium'
    	WHEN cv.b25063_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_006p_cv_cat,
CASE
    WHEN ch.b25063_006sd > 1.645 THEN True
    WHEN ch.b25063_006sd <= 1.645 THEN False
    WHEN ch.b25063_006sd IS NULL AND cv.b25063_006c_cv = 0 AND ch.b25063_006cm = 0 THEN True
    ELSE NULL
    END AS b25063_006sd_tf,

    CASE
    	WHEN cv.b25063_007e1_cv < 15 Then 'high'
    	WHEN cv.b25063_007e1_cv >= 15 and b25063_007e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_007e1_cv_cat,

    CASE
    	WHEN cv.b25063_007e2_cv < 15 Then 'high'
    	WHEN cv.b25063_007e2_cv >= 15 and b25063_007e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_007e2_cv_cat,

    CASE
    	WHEN cv.b25063_007c_cv < 15 Then 'high'
    	WHEN cv.b25063_007c_cv >= 15 and b25063_007c_cv < 30 Then 'medium'
    	WHEN cv.b25063_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_007c_cv_cat,

    CASE
    	WHEN cv.b25063_007p_cv < 15 Then 'high'
    	WHEN cv.b25063_007p_cv >= 15 and b25063_007p_cv < 30 Then 'medium'
    	WHEN cv.b25063_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_007p_cv_cat,
CASE
    WHEN ch.b25063_007sd > 1.645 THEN True
    WHEN ch.b25063_007sd <= 1.645 THEN False
    WHEN ch.b25063_007sd IS NULL AND cv.b25063_007c_cv = 0 AND ch.b25063_007cm = 0 THEN True
    ELSE NULL
    END AS b25063_007sd_tf,

    CASE
    	WHEN cv.b25063_008e1_cv < 15 Then 'high'
    	WHEN cv.b25063_008e1_cv >= 15 and b25063_008e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_008e1_cv_cat,

    CASE
    	WHEN cv.b25063_008e2_cv < 15 Then 'high'
    	WHEN cv.b25063_008e2_cv >= 15 and b25063_008e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_008e2_cv_cat,

    CASE
    	WHEN cv.b25063_008c_cv < 15 Then 'high'
    	WHEN cv.b25063_008c_cv >= 15 and b25063_008c_cv < 30 Then 'medium'
    	WHEN cv.b25063_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_008c_cv_cat,

    CASE
    	WHEN cv.b25063_008p_cv < 15 Then 'high'
    	WHEN cv.b25063_008p_cv >= 15 and b25063_008p_cv < 30 Then 'medium'
    	WHEN cv.b25063_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_008p_cv_cat,
CASE
    WHEN ch.b25063_008sd > 1.645 THEN True
    WHEN ch.b25063_008sd <= 1.645 THEN False
    WHEN ch.b25063_008sd IS NULL AND cv.b25063_008c_cv = 0 AND ch.b25063_008cm = 0 THEN True
    ELSE NULL
    END AS b25063_008sd_tf,

    CASE
    	WHEN cv.b25063_009e1_cv < 15 Then 'high'
    	WHEN cv.b25063_009e1_cv >= 15 and b25063_009e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_009e1_cv_cat,

    CASE
    	WHEN cv.b25063_009e2_cv < 15 Then 'high'
    	WHEN cv.b25063_009e2_cv >= 15 and b25063_009e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_009e2_cv_cat,

    CASE
    	WHEN cv.b25063_009c_cv < 15 Then 'high'
    	WHEN cv.b25063_009c_cv >= 15 and b25063_009c_cv < 30 Then 'medium'
    	WHEN cv.b25063_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_009c_cv_cat,

    CASE
    	WHEN cv.b25063_009p_cv < 15 Then 'high'
    	WHEN cv.b25063_009p_cv >= 15 and b25063_009p_cv < 30 Then 'medium'
    	WHEN cv.b25063_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_009p_cv_cat,
CASE
    WHEN ch.b25063_009sd > 1.645 THEN True
    WHEN ch.b25063_009sd <= 1.645 THEN False
    WHEN ch.b25063_009sd IS NULL AND cv.b25063_009c_cv = 0 AND ch.b25063_009cm = 0 THEN True
    ELSE NULL
    END AS b25063_009sd_tf,

    CASE
    	WHEN cv.b25063_010e1_cv < 15 Then 'high'
    	WHEN cv.b25063_010e1_cv >= 15 and b25063_010e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_010e1_cv_cat,

    CASE
    	WHEN cv.b25063_010e2_cv < 15 Then 'high'
    	WHEN cv.b25063_010e2_cv >= 15 and b25063_010e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_010e2_cv_cat,

    CASE
    	WHEN cv.b25063_010c_cv < 15 Then 'high'
    	WHEN cv.b25063_010c_cv >= 15 and b25063_010c_cv < 30 Then 'medium'
    	WHEN cv.b25063_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_010c_cv_cat,

    CASE
    	WHEN cv.b25063_010p_cv < 15 Then 'high'
    	WHEN cv.b25063_010p_cv >= 15 and b25063_010p_cv < 30 Then 'medium'
    	WHEN cv.b25063_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_010p_cv_cat,
CASE
    WHEN ch.b25063_010sd > 1.645 THEN True
    WHEN ch.b25063_010sd <= 1.645 THEN False
    WHEN ch.b25063_010sd IS NULL AND cv.b25063_010c_cv = 0 AND ch.b25063_010cm = 0 THEN True
    ELSE NULL
    END AS b25063_010sd_tf,

    CASE
    	WHEN cv.b25063_011e1_cv < 15 Then 'high'
    	WHEN cv.b25063_011e1_cv >= 15 and b25063_011e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_011e1_cv_cat,

    CASE
    	WHEN cv.b25063_011e2_cv < 15 Then 'high'
    	WHEN cv.b25063_011e2_cv >= 15 and b25063_011e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_011e2_cv_cat,

    CASE
    	WHEN cv.b25063_011c_cv < 15 Then 'high'
    	WHEN cv.b25063_011c_cv >= 15 and b25063_011c_cv < 30 Then 'medium'
    	WHEN cv.b25063_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_011c_cv_cat,

    CASE
    	WHEN cv.b25063_011p_cv < 15 Then 'high'
    	WHEN cv.b25063_011p_cv >= 15 and b25063_011p_cv < 30 Then 'medium'
    	WHEN cv.b25063_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_011p_cv_cat,
CASE
    WHEN ch.b25063_011sd > 1.645 THEN True
    WHEN ch.b25063_011sd <= 1.645 THEN False
    WHEN ch.b25063_011sd IS NULL AND cv.b25063_011c_cv = 0 AND ch.b25063_011cm = 0 THEN True
    ELSE NULL
    END AS b25063_011sd_tf,

    CASE
    	WHEN cv.b25063_012e1_cv < 15 Then 'high'
    	WHEN cv.b25063_012e1_cv >= 15 and b25063_012e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_012e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_012e1_cv_cat,

    CASE
    	WHEN cv.b25063_012e2_cv < 15 Then 'high'
    	WHEN cv.b25063_012e2_cv >= 15 and b25063_012e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_012e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_012e2_cv_cat,

    CASE
    	WHEN cv.b25063_012c_cv < 15 Then 'high'
    	WHEN cv.b25063_012c_cv >= 15 and b25063_012c_cv < 30 Then 'medium'
    	WHEN cv.b25063_012c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_012c_cv_cat,

    CASE
    	WHEN cv.b25063_012p_cv < 15 Then 'high'
    	WHEN cv.b25063_012p_cv >= 15 and b25063_012p_cv < 30 Then 'medium'
    	WHEN cv.b25063_012p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_012p_cv_cat,
CASE
    WHEN ch.b25063_012sd > 1.645 THEN True
    WHEN ch.b25063_012sd <= 1.645 THEN False
    WHEN ch.b25063_012sd IS NULL AND cv.b25063_012c_cv = 0 AND ch.b25063_012cm = 0 THEN True
    ELSE NULL
    END AS b25063_012sd_tf,

    CASE
    	WHEN cv.b25063_013e1_cv < 15 Then 'high'
    	WHEN cv.b25063_013e1_cv >= 15 and b25063_013e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_013e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_013e1_cv_cat,

    CASE
    	WHEN cv.b25063_013e2_cv < 15 Then 'high'
    	WHEN cv.b25063_013e2_cv >= 15 and b25063_013e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_013e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_013e2_cv_cat,

    CASE
    	WHEN cv.b25063_013c_cv < 15 Then 'high'
    	WHEN cv.b25063_013c_cv >= 15 and b25063_013c_cv < 30 Then 'medium'
    	WHEN cv.b25063_013c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_013c_cv_cat,

    CASE
    	WHEN cv.b25063_013p_cv < 15 Then 'high'
    	WHEN cv.b25063_013p_cv >= 15 and b25063_013p_cv < 30 Then 'medium'
    	WHEN cv.b25063_013p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_013p_cv_cat,
CASE
    WHEN ch.b25063_013sd > 1.645 THEN True
    WHEN ch.b25063_013sd <= 1.645 THEN False
    WHEN ch.b25063_013sd IS NULL AND cv.b25063_013c_cv = 0 AND ch.b25063_013cm = 0 THEN True
    ELSE NULL
    END AS b25063_013sd_tf,

    CASE
    	WHEN cv.b25063_014e1_cv < 15 Then 'high'
    	WHEN cv.b25063_014e1_cv >= 15 and b25063_014e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_014e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_014e1_cv_cat,

    CASE
    	WHEN cv.b25063_014e2_cv < 15 Then 'high'
    	WHEN cv.b25063_014e2_cv >= 15 and b25063_014e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_014e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_014e2_cv_cat,

    CASE
    	WHEN cv.b25063_014c_cv < 15 Then 'high'
    	WHEN cv.b25063_014c_cv >= 15 and b25063_014c_cv < 30 Then 'medium'
    	WHEN cv.b25063_014c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_014c_cv_cat,

    CASE
    	WHEN cv.b25063_014p_cv < 15 Then 'high'
    	WHEN cv.b25063_014p_cv >= 15 and b25063_014p_cv < 30 Then 'medium'
    	WHEN cv.b25063_014p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_014p_cv_cat,
CASE
    WHEN ch.b25063_014sd > 1.645 THEN True
    WHEN ch.b25063_014sd <= 1.645 THEN False
    WHEN ch.b25063_014sd IS NULL AND cv.b25063_014c_cv = 0 AND ch.b25063_014cm = 0 THEN True
    ELSE NULL
    END AS b25063_014sd_tf,

    CASE
    	WHEN cv.b25063_015e1_cv < 15 Then 'high'
    	WHEN cv.b25063_015e1_cv >= 15 and b25063_015e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_015e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_015e1_cv_cat,

    CASE
    	WHEN cv.b25063_015e2_cv < 15 Then 'high'
    	WHEN cv.b25063_015e2_cv >= 15 and b25063_015e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_015e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_015e2_cv_cat,

    CASE
    	WHEN cv.b25063_015c_cv < 15 Then 'high'
    	WHEN cv.b25063_015c_cv >= 15 and b25063_015c_cv < 30 Then 'medium'
    	WHEN cv.b25063_015c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_015c_cv_cat,

    CASE
    	WHEN cv.b25063_015p_cv < 15 Then 'high'
    	WHEN cv.b25063_015p_cv >= 15 and b25063_015p_cv < 30 Then 'medium'
    	WHEN cv.b25063_015p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_015p_cv_cat,
CASE
    WHEN ch.b25063_015sd > 1.645 THEN True
    WHEN ch.b25063_015sd <= 1.645 THEN False
    WHEN ch.b25063_015sd IS NULL AND cv.b25063_015c_cv = 0 AND ch.b25063_015cm = 0 THEN True
    ELSE NULL
    END AS b25063_015sd_tf,

    CASE
    	WHEN cv.b25063_016e1_cv < 15 Then 'high'
    	WHEN cv.b25063_016e1_cv >= 15 and b25063_016e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_016e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_016e1_cv_cat,

    CASE
    	WHEN cv.b25063_016e2_cv < 15 Then 'high'
    	WHEN cv.b25063_016e2_cv >= 15 and b25063_016e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_016e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_016e2_cv_cat,

    CASE
    	WHEN cv.b25063_016c_cv < 15 Then 'high'
    	WHEN cv.b25063_016c_cv >= 15 and b25063_016c_cv < 30 Then 'medium'
    	WHEN cv.b25063_016c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_016c_cv_cat,

    CASE
    	WHEN cv.b25063_016p_cv < 15 Then 'high'
    	WHEN cv.b25063_016p_cv >= 15 and b25063_016p_cv < 30 Then 'medium'
    	WHEN cv.b25063_016p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_016p_cv_cat,
CASE
    WHEN ch.b25063_016sd > 1.645 THEN True
    WHEN ch.b25063_016sd <= 1.645 THEN False
    WHEN ch.b25063_016sd IS NULL AND cv.b25063_016c_cv = 0 AND ch.b25063_016cm = 0 THEN True
    ELSE NULL
    END AS b25063_016sd_tf,

    CASE
    	WHEN cv.b25063_017e1_cv < 15 Then 'high'
    	WHEN cv.b25063_017e1_cv >= 15 and b25063_017e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_017e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_017e1_cv_cat,

    CASE
    	WHEN cv.b25063_017e2_cv < 15 Then 'high'
    	WHEN cv.b25063_017e2_cv >= 15 and b25063_017e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_017e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_017e2_cv_cat,

    CASE
    	WHEN cv.b25063_017c_cv < 15 Then 'high'
    	WHEN cv.b25063_017c_cv >= 15 and b25063_017c_cv < 30 Then 'medium'
    	WHEN cv.b25063_017c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_017c_cv_cat,

    CASE
    	WHEN cv.b25063_017p_cv < 15 Then 'high'
    	WHEN cv.b25063_017p_cv >= 15 and b25063_017p_cv < 30 Then 'medium'
    	WHEN cv.b25063_017p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_017p_cv_cat,
CASE
    WHEN ch.b25063_017sd > 1.645 THEN True
    WHEN ch.b25063_017sd <= 1.645 THEN False
    WHEN ch.b25063_017sd IS NULL AND cv.b25063_017c_cv = 0 AND ch.b25063_017cm = 0 THEN True
    ELSE NULL
    END AS b25063_017sd_tf,

    CASE
    	WHEN cv.b25063_018e1_cv < 15 Then 'high'
    	WHEN cv.b25063_018e1_cv >= 15 and b25063_018e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_018e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_018e1_cv_cat,

    CASE
    	WHEN cv.b25063_018e2_cv < 15 Then 'high'
    	WHEN cv.b25063_018e2_cv >= 15 and b25063_018e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_018e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_018e2_cv_cat,

    CASE
    	WHEN cv.b25063_018c_cv < 15 Then 'high'
    	WHEN cv.b25063_018c_cv >= 15 and b25063_018c_cv < 30 Then 'medium'
    	WHEN cv.b25063_018c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_018c_cv_cat,

    CASE
    	WHEN cv.b25063_018p_cv < 15 Then 'high'
    	WHEN cv.b25063_018p_cv >= 15 and b25063_018p_cv < 30 Then 'medium'
    	WHEN cv.b25063_018p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_018p_cv_cat,
CASE
    WHEN ch.b25063_018sd > 1.645 THEN True
    WHEN ch.b25063_018sd <= 1.645 THEN False
    WHEN ch.b25063_018sd IS NULL AND cv.b25063_018c_cv = 0 AND ch.b25063_018cm = 0 THEN True
    ELSE NULL
    END AS b25063_018sd_tf,

    CASE
    	WHEN cv.b25063_019e1_cv < 15 Then 'high'
    	WHEN cv.b25063_019e1_cv >= 15 and b25063_019e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_019e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_019e1_cv_cat,

    CASE
    	WHEN cv.b25063_019e2_cv < 15 Then 'high'
    	WHEN cv.b25063_019e2_cv >= 15 and b25063_019e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_019e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_019e2_cv_cat,

    CASE
    	WHEN cv.b25063_019c_cv < 15 Then 'high'
    	WHEN cv.b25063_019c_cv >= 15 and b25063_019c_cv < 30 Then 'medium'
    	WHEN cv.b25063_019c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_019c_cv_cat,

    CASE
    	WHEN cv.b25063_019p_cv < 15 Then 'high'
    	WHEN cv.b25063_019p_cv >= 15 and b25063_019p_cv < 30 Then 'medium'
    	WHEN cv.b25063_019p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_019p_cv_cat,
CASE
    WHEN ch.b25063_019sd > 1.645 THEN True
    WHEN ch.b25063_019sd <= 1.645 THEN False
    WHEN ch.b25063_019sd IS NULL AND cv.b25063_019c_cv = 0 AND ch.b25063_019cm = 0 THEN True
    ELSE NULL
    END AS b25063_019sd_tf,

    CASE
    	WHEN cv.b25063_020e1_cv < 15 Then 'high'
    	WHEN cv.b25063_020e1_cv >= 15 and b25063_020e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_020e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_020e1_cv_cat,

    CASE
    	WHEN cv.b25063_020e2_cv < 15 Then 'high'
    	WHEN cv.b25063_020e2_cv >= 15 and b25063_020e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_020e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_020e2_cv_cat,

    CASE
    	WHEN cv.b25063_020c_cv < 15 Then 'high'
    	WHEN cv.b25063_020c_cv >= 15 and b25063_020c_cv < 30 Then 'medium'
    	WHEN cv.b25063_020c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_020c_cv_cat,

    CASE
    	WHEN cv.b25063_020p_cv < 15 Then 'high'
    	WHEN cv.b25063_020p_cv >= 15 and b25063_020p_cv < 30 Then 'medium'
    	WHEN cv.b25063_020p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_020p_cv_cat,
CASE
    WHEN ch.b25063_020sd > 1.645 THEN True
    WHEN ch.b25063_020sd <= 1.645 THEN False
    WHEN ch.b25063_020sd IS NULL AND cv.b25063_020c_cv = 0 AND ch.b25063_020cm = 0 THEN True
    ELSE NULL
    END AS b25063_020sd_tf,

    CASE
    	WHEN cv.b25063_021e1_cv < 15 Then 'high'
    	WHEN cv.b25063_021e1_cv >= 15 and b25063_021e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_021e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_021e1_cv_cat,

    CASE
    	WHEN cv.b25063_021e2_cv < 15 Then 'high'
    	WHEN cv.b25063_021e2_cv >= 15 and b25063_021e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_021e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_021e2_cv_cat,

    CASE
    	WHEN cv.b25063_021c_cv < 15 Then 'high'
    	WHEN cv.b25063_021c_cv >= 15 and b25063_021c_cv < 30 Then 'medium'
    	WHEN cv.b25063_021c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_021c_cv_cat,

    CASE
    	WHEN cv.b25063_021p_cv < 15 Then 'high'
    	WHEN cv.b25063_021p_cv >= 15 and b25063_021p_cv < 30 Then 'medium'
    	WHEN cv.b25063_021p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_021p_cv_cat,
CASE
    WHEN ch.b25063_021sd > 1.645 THEN True
    WHEN ch.b25063_021sd <= 1.645 THEN False
    WHEN ch.b25063_021sd IS NULL AND cv.b25063_021c_cv = 0 AND ch.b25063_021cm = 0 THEN True
    ELSE NULL
    END AS b25063_021sd_tf,

    CASE
    	WHEN cv.b25063_022e1_cv < 15 Then 'high'
    	WHEN cv.b25063_022e1_cv >= 15 and b25063_022e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_022e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_022e1_cv_cat,

    CASE
    	WHEN cv.b25063_022e2_cv < 15 Then 'high'
    	WHEN cv.b25063_022e2_cv >= 15 and b25063_022e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_022e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_022e2_cv_cat,

    CASE
    	WHEN cv.b25063_022c_cv < 15 Then 'high'
    	WHEN cv.b25063_022c_cv >= 15 and b25063_022c_cv < 30 Then 'medium'
    	WHEN cv.b25063_022c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_022c_cv_cat,

    CASE
    	WHEN cv.b25063_022p_cv < 15 Then 'high'
    	WHEN cv.b25063_022p_cv >= 15 and b25063_022p_cv < 30 Then 'medium'
    	WHEN cv.b25063_022p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_022p_cv_cat,
CASE
    WHEN ch.b25063_022sd > 1.645 THEN True
    WHEN ch.b25063_022sd <= 1.645 THEN False
    WHEN ch.b25063_022sd IS NULL AND cv.b25063_022c_cv = 0 AND ch.b25063_022cm = 0 THEN True
    ELSE NULL
    END AS b25063_022sd_tf,

    CASE
    	WHEN cv.b25063_023e1_cv < 15 Then 'high'
    	WHEN cv.b25063_023e1_cv >= 15 and b25063_023e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_023e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_023e1_cv_cat,

    CASE
    	WHEN cv.b25063_023e2_cv < 15 Then 'high'
    	WHEN cv.b25063_023e2_cv >= 15 and b25063_023e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_023e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_023e2_cv_cat,

    CASE
    	WHEN cv.b25063_023c_cv < 15 Then 'high'
    	WHEN cv.b25063_023c_cv >= 15 and b25063_023c_cv < 30 Then 'medium'
    	WHEN cv.b25063_023c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_023c_cv_cat,

    CASE
    	WHEN cv.b25063_023p_cv < 15 Then 'high'
    	WHEN cv.b25063_023p_cv >= 15 and b25063_023p_cv < 30 Then 'medium'
    	WHEN cv.b25063_023p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_023p_cv_cat,
CASE
    WHEN ch.b25063_023sd > 1.645 THEN True
    WHEN ch.b25063_023sd <= 1.645 THEN False
    WHEN ch.b25063_023sd IS NULL AND cv.b25063_023c_cv = 0 AND ch.b25063_023cm = 0 THEN True
    ELSE NULL
    END AS b25063_023sd_tf,

    CASE
    	WHEN cv.b25063_024e1_cv < 15 Then 'high'
    	WHEN cv.b25063_024e1_cv >= 15 and b25063_024e1_cv < 30 Then 'medium'
    	WHEN cv.b25063_024e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_024e1_cv_cat,

    CASE
    	WHEN cv.b25063_024e2_cv < 15 Then 'high'
    	WHEN cv.b25063_024e2_cv >= 15 and b25063_024e2_cv < 30 Then 'medium'
    	WHEN cv.b25063_024e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_024e2_cv_cat,

    CASE
    	WHEN cv.b25063_024c_cv < 15 Then 'high'
    	WHEN cv.b25063_024c_cv >= 15 and b25063_024c_cv < 30 Then 'medium'
    	WHEN cv.b25063_024c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_024c_cv_cat,

    CASE
    	WHEN cv.b25063_024p_cv < 15 Then 'high'
    	WHEN cv.b25063_024p_cv >= 15 and b25063_024p_cv < 30 Then 'medium'
    	WHEN cv.b25063_024p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25063_024p_cv_cat,
CASE
    WHEN ch.b25063_024sd > 1.645 THEN True
    WHEN ch.b25063_024sd <= 1.645 THEN False
    WHEN ch.b25063_024sd IS NULL AND cv.b25063_024c_cv = 0 AND ch.b25063_024cm = 0 THEN True
    ELSE NULL
    END AS b25063_024sd_tf

    FROM acs_b25063_cvs cv
    INNER JOIN acs_b25063_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25064_cvsummary;
    CREATE VIEW acs_b25064_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25064_001e1_cv < 15 Then 'high'
    	WHEN cv.b25064_001e1_cv >= 15 and b25064_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25064_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25064_001e1_cv_cat,

    CASE
    	WHEN cv.b25064_001e2_cv < 15 Then 'high'
    	WHEN cv.b25064_001e2_cv >= 15 and b25064_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25064_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25064_001e2_cv_cat,

    CASE
    	WHEN cv.b25064_001c_cv < 15 Then 'high'
    	WHEN cv.b25064_001c_cv >= 15 and b25064_001c_cv < 30 Then 'medium'
    	WHEN cv.b25064_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25064_001c_cv_cat,

    CASE
    	WHEN cv.b25064_001p_cv < 15 Then 'high'
    	WHEN cv.b25064_001p_cv >= 15 and b25064_001p_cv < 30 Then 'medium'
    	WHEN cv.b25064_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25064_001p_cv_cat,
CASE
    WHEN ch.b25064_001sd > 1.645 THEN True
    WHEN ch.b25064_001sd <= 1.645 THEN False
    WHEN ch.b25064_001sd IS NULL AND cv.b25064_001c_cv = 0 AND ch.b25064_001cm = 0 THEN True
    ELSE NULL
    END AS b25064_001sd_tf

    FROM acs_b25064_cvs cv
    INNER JOIN acs_b25064_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25070_cvsummary;
    CREATE VIEW acs_b25070_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25070_001e1_cv < 15 Then 'high'
    	WHEN cv.b25070_001e1_cv >= 15 and b25070_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_001e1_cv_cat,

    CASE
    	WHEN cv.b25070_001e2_cv < 15 Then 'high'
    	WHEN cv.b25070_001e2_cv >= 15 and b25070_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_001e2_cv_cat,

    CASE
    	WHEN cv.b25070_001c_cv < 15 Then 'high'
    	WHEN cv.b25070_001c_cv >= 15 and b25070_001c_cv < 30 Then 'medium'
    	WHEN cv.b25070_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_001c_cv_cat,

    CASE
    	WHEN cv.b25070_001p_cv < 15 Then 'high'
    	WHEN cv.b25070_001p_cv >= 15 and b25070_001p_cv < 30 Then 'medium'
    	WHEN cv.b25070_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_001p_cv_cat,
CASE
    WHEN ch.b25070_001sd > 1.645 THEN True
    WHEN ch.b25070_001sd <= 1.645 THEN False
    WHEN ch.b25070_001sd IS NULL AND cv.b25070_001c_cv = 0 AND ch.b25070_001cm = 0 THEN True
    ELSE NULL
    END AS b25070_001sd_tf,

    CASE
    	WHEN cv.b25070_002e1_cv < 15 Then 'high'
    	WHEN cv.b25070_002e1_cv >= 15 and b25070_002e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_002e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_002e1_cv_cat,

    CASE
    	WHEN cv.b25070_002e2_cv < 15 Then 'high'
    	WHEN cv.b25070_002e2_cv >= 15 and b25070_002e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_002e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_002e2_cv_cat,

    CASE
    	WHEN cv.b25070_002c_cv < 15 Then 'high'
    	WHEN cv.b25070_002c_cv >= 15 and b25070_002c_cv < 30 Then 'medium'
    	WHEN cv.b25070_002c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_002c_cv_cat,

    CASE
    	WHEN cv.b25070_002p_cv < 15 Then 'high'
    	WHEN cv.b25070_002p_cv >= 15 and b25070_002p_cv < 30 Then 'medium'
    	WHEN cv.b25070_002p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_002p_cv_cat,
CASE
    WHEN ch.b25070_002sd > 1.645 THEN True
    WHEN ch.b25070_002sd <= 1.645 THEN False
    WHEN ch.b25070_002sd IS NULL AND cv.b25070_002c_cv = 0 AND ch.b25070_002cm = 0 THEN True
    ELSE NULL
    END AS b25070_002sd_tf,

    CASE
    	WHEN cv.b25070_003e1_cv < 15 Then 'high'
    	WHEN cv.b25070_003e1_cv >= 15 and b25070_003e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_003e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_003e1_cv_cat,

    CASE
    	WHEN cv.b25070_003e2_cv < 15 Then 'high'
    	WHEN cv.b25070_003e2_cv >= 15 and b25070_003e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_003e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_003e2_cv_cat,

    CASE
    	WHEN cv.b25070_003c_cv < 15 Then 'high'
    	WHEN cv.b25070_003c_cv >= 15 and b25070_003c_cv < 30 Then 'medium'
    	WHEN cv.b25070_003c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_003c_cv_cat,

    CASE
    	WHEN cv.b25070_003p_cv < 15 Then 'high'
    	WHEN cv.b25070_003p_cv >= 15 and b25070_003p_cv < 30 Then 'medium'
    	WHEN cv.b25070_003p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_003p_cv_cat,
CASE
    WHEN ch.b25070_003sd > 1.645 THEN True
    WHEN ch.b25070_003sd <= 1.645 THEN False
    WHEN ch.b25070_003sd IS NULL AND cv.b25070_003c_cv = 0 AND ch.b25070_003cm = 0 THEN True
    ELSE NULL
    END AS b25070_003sd_tf,

    CASE
    	WHEN cv.b25070_004e1_cv < 15 Then 'high'
    	WHEN cv.b25070_004e1_cv >= 15 and b25070_004e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_004e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_004e1_cv_cat,

    CASE
    	WHEN cv.b25070_004e2_cv < 15 Then 'high'
    	WHEN cv.b25070_004e2_cv >= 15 and b25070_004e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_004e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_004e2_cv_cat,

    CASE
    	WHEN cv.b25070_004c_cv < 15 Then 'high'
    	WHEN cv.b25070_004c_cv >= 15 and b25070_004c_cv < 30 Then 'medium'
    	WHEN cv.b25070_004c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_004c_cv_cat,

    CASE
    	WHEN cv.b25070_004p_cv < 15 Then 'high'
    	WHEN cv.b25070_004p_cv >= 15 and b25070_004p_cv < 30 Then 'medium'
    	WHEN cv.b25070_004p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_004p_cv_cat,
CASE
    WHEN ch.b25070_004sd > 1.645 THEN True
    WHEN ch.b25070_004sd <= 1.645 THEN False
    WHEN ch.b25070_004sd IS NULL AND cv.b25070_004c_cv = 0 AND ch.b25070_004cm = 0 THEN True
    ELSE NULL
    END AS b25070_004sd_tf,

    CASE
    	WHEN cv.b25070_005e1_cv < 15 Then 'high'
    	WHEN cv.b25070_005e1_cv >= 15 and b25070_005e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_005e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_005e1_cv_cat,

    CASE
    	WHEN cv.b25070_005e2_cv < 15 Then 'high'
    	WHEN cv.b25070_005e2_cv >= 15 and b25070_005e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_005e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_005e2_cv_cat,

    CASE
    	WHEN cv.b25070_005c_cv < 15 Then 'high'
    	WHEN cv.b25070_005c_cv >= 15 and b25070_005c_cv < 30 Then 'medium'
    	WHEN cv.b25070_005c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_005c_cv_cat,

    CASE
    	WHEN cv.b25070_005p_cv < 15 Then 'high'
    	WHEN cv.b25070_005p_cv >= 15 and b25070_005p_cv < 30 Then 'medium'
    	WHEN cv.b25070_005p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_005p_cv_cat,
CASE
    WHEN ch.b25070_005sd > 1.645 THEN True
    WHEN ch.b25070_005sd <= 1.645 THEN False
    WHEN ch.b25070_005sd IS NULL AND cv.b25070_005c_cv = 0 AND ch.b25070_005cm = 0 THEN True
    ELSE NULL
    END AS b25070_005sd_tf,

    CASE
    	WHEN cv.b25070_006e1_cv < 15 Then 'high'
    	WHEN cv.b25070_006e1_cv >= 15 and b25070_006e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_006e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_006e1_cv_cat,

    CASE
    	WHEN cv.b25070_006e2_cv < 15 Then 'high'
    	WHEN cv.b25070_006e2_cv >= 15 and b25070_006e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_006e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_006e2_cv_cat,

    CASE
    	WHEN cv.b25070_006c_cv < 15 Then 'high'
    	WHEN cv.b25070_006c_cv >= 15 and b25070_006c_cv < 30 Then 'medium'
    	WHEN cv.b25070_006c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_006c_cv_cat,

    CASE
    	WHEN cv.b25070_006p_cv < 15 Then 'high'
    	WHEN cv.b25070_006p_cv >= 15 and b25070_006p_cv < 30 Then 'medium'
    	WHEN cv.b25070_006p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_006p_cv_cat,
CASE
    WHEN ch.b25070_006sd > 1.645 THEN True
    WHEN ch.b25070_006sd <= 1.645 THEN False
    WHEN ch.b25070_006sd IS NULL AND cv.b25070_006c_cv = 0 AND ch.b25070_006cm = 0 THEN True
    ELSE NULL
    END AS b25070_006sd_tf,

    CASE
    	WHEN cv.b25070_007e1_cv < 15 Then 'high'
    	WHEN cv.b25070_007e1_cv >= 15 and b25070_007e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_007e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_007e1_cv_cat,

    CASE
    	WHEN cv.b25070_007e2_cv < 15 Then 'high'
    	WHEN cv.b25070_007e2_cv >= 15 and b25070_007e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_007e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_007e2_cv_cat,

    CASE
    	WHEN cv.b25070_007c_cv < 15 Then 'high'
    	WHEN cv.b25070_007c_cv >= 15 and b25070_007c_cv < 30 Then 'medium'
    	WHEN cv.b25070_007c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_007c_cv_cat,

    CASE
    	WHEN cv.b25070_007p_cv < 15 Then 'high'
    	WHEN cv.b25070_007p_cv >= 15 and b25070_007p_cv < 30 Then 'medium'
    	WHEN cv.b25070_007p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_007p_cv_cat,
CASE
    WHEN ch.b25070_007sd > 1.645 THEN True
    WHEN ch.b25070_007sd <= 1.645 THEN False
    WHEN ch.b25070_007sd IS NULL AND cv.b25070_007c_cv = 0 AND ch.b25070_007cm = 0 THEN True
    ELSE NULL
    END AS b25070_007sd_tf,

    CASE
    	WHEN cv.b25070_008e1_cv < 15 Then 'high'
    	WHEN cv.b25070_008e1_cv >= 15 and b25070_008e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_008e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_008e1_cv_cat,

    CASE
    	WHEN cv.b25070_008e2_cv < 15 Then 'high'
    	WHEN cv.b25070_008e2_cv >= 15 and b25070_008e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_008e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_008e2_cv_cat,

    CASE
    	WHEN cv.b25070_008c_cv < 15 Then 'high'
    	WHEN cv.b25070_008c_cv >= 15 and b25070_008c_cv < 30 Then 'medium'
    	WHEN cv.b25070_008c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_008c_cv_cat,

    CASE
    	WHEN cv.b25070_008p_cv < 15 Then 'high'
    	WHEN cv.b25070_008p_cv >= 15 and b25070_008p_cv < 30 Then 'medium'
    	WHEN cv.b25070_008p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_008p_cv_cat,
CASE
    WHEN ch.b25070_008sd > 1.645 THEN True
    WHEN ch.b25070_008sd <= 1.645 THEN False
    WHEN ch.b25070_008sd IS NULL AND cv.b25070_008c_cv = 0 AND ch.b25070_008cm = 0 THEN True
    ELSE NULL
    END AS b25070_008sd_tf,

    CASE
    	WHEN cv.b25070_009e1_cv < 15 Then 'high'
    	WHEN cv.b25070_009e1_cv >= 15 and b25070_009e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_009e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_009e1_cv_cat,

    CASE
    	WHEN cv.b25070_009e2_cv < 15 Then 'high'
    	WHEN cv.b25070_009e2_cv >= 15 and b25070_009e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_009e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_009e2_cv_cat,

    CASE
    	WHEN cv.b25070_009c_cv < 15 Then 'high'
    	WHEN cv.b25070_009c_cv >= 15 and b25070_009c_cv < 30 Then 'medium'
    	WHEN cv.b25070_009c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_009c_cv_cat,

    CASE
    	WHEN cv.b25070_009p_cv < 15 Then 'high'
    	WHEN cv.b25070_009p_cv >= 15 and b25070_009p_cv < 30 Then 'medium'
    	WHEN cv.b25070_009p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_009p_cv_cat,
CASE
    WHEN ch.b25070_009sd > 1.645 THEN True
    WHEN ch.b25070_009sd <= 1.645 THEN False
    WHEN ch.b25070_009sd IS NULL AND cv.b25070_009c_cv = 0 AND ch.b25070_009cm = 0 THEN True
    ELSE NULL
    END AS b25070_009sd_tf,

    CASE
    	WHEN cv.b25070_010e1_cv < 15 Then 'high'
    	WHEN cv.b25070_010e1_cv >= 15 and b25070_010e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_010e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_010e1_cv_cat,

    CASE
    	WHEN cv.b25070_010e2_cv < 15 Then 'high'
    	WHEN cv.b25070_010e2_cv >= 15 and b25070_010e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_010e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_010e2_cv_cat,

    CASE
    	WHEN cv.b25070_010c_cv < 15 Then 'high'
    	WHEN cv.b25070_010c_cv >= 15 and b25070_010c_cv < 30 Then 'medium'
    	WHEN cv.b25070_010c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_010c_cv_cat,

    CASE
    	WHEN cv.b25070_010p_cv < 15 Then 'high'
    	WHEN cv.b25070_010p_cv >= 15 and b25070_010p_cv < 30 Then 'medium'
    	WHEN cv.b25070_010p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_010p_cv_cat,
CASE
    WHEN ch.b25070_010sd > 1.645 THEN True
    WHEN ch.b25070_010sd <= 1.645 THEN False
    WHEN ch.b25070_010sd IS NULL AND cv.b25070_010c_cv = 0 AND ch.b25070_010cm = 0 THEN True
    ELSE NULL
    END AS b25070_010sd_tf,

    CASE
    	WHEN cv.b25070_011e1_cv < 15 Then 'high'
    	WHEN cv.b25070_011e1_cv >= 15 and b25070_011e1_cv < 30 Then 'medium'
    	WHEN cv.b25070_011e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_011e1_cv_cat,

    CASE
    	WHEN cv.b25070_011e2_cv < 15 Then 'high'
    	WHEN cv.b25070_011e2_cv >= 15 and b25070_011e2_cv < 30 Then 'medium'
    	WHEN cv.b25070_011e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_011e2_cv_cat,

    CASE
    	WHEN cv.b25070_011c_cv < 15 Then 'high'
    	WHEN cv.b25070_011c_cv >= 15 and b25070_011c_cv < 30 Then 'medium'
    	WHEN cv.b25070_011c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_011c_cv_cat,

    CASE
    	WHEN cv.b25070_011p_cv < 15 Then 'high'
    	WHEN cv.b25070_011p_cv >= 15 and b25070_011p_cv < 30 Then 'medium'
    	WHEN cv.b25070_011p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25070_011p_cv_cat,
CASE
    WHEN ch.b25070_011sd > 1.645 THEN True
    WHEN ch.b25070_011sd <= 1.645 THEN False
    WHEN ch.b25070_011sd IS NULL AND cv.b25070_011c_cv = 0 AND ch.b25070_011cm = 0 THEN True
    ELSE NULL
    END AS b25070_011sd_tf

    FROM acs_b25070_cvs cv
    INNER JOIN acs_b25070_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b25077_cvsummary;
    CREATE VIEW acs_b25077_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b25077_001e1_cv < 15 Then 'high'
    	WHEN cv.b25077_001e1_cv >= 15 and b25077_001e1_cv < 30 Then 'medium'
    	WHEN cv.b25077_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25077_001e1_cv_cat,

    CASE
    	WHEN cv.b25077_001e2_cv < 15 Then 'high'
    	WHEN cv.b25077_001e2_cv >= 15 and b25077_001e2_cv < 30 Then 'medium'
    	WHEN cv.b25077_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25077_001e2_cv_cat,

    CASE
    	WHEN cv.b25077_001c_cv < 15 Then 'high'
    	WHEN cv.b25077_001c_cv >= 15 and b25077_001c_cv < 30 Then 'medium'
    	WHEN cv.b25077_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25077_001c_cv_cat,

    CASE
    	WHEN cv.b25077_001p_cv < 15 Then 'high'
    	WHEN cv.b25077_001p_cv >= 15 and b25077_001p_cv < 30 Then 'medium'
    	WHEN cv.b25077_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b25077_001p_cv_cat,
CASE
    WHEN ch.b25077_001sd > 1.645 THEN True
    WHEN ch.b25077_001sd <= 1.645 THEN False
    WHEN ch.b25077_001sd IS NULL AND cv.b25077_001c_cv = 0 AND ch.b25077_001cm = 0 THEN True
    ELSE NULL
    END AS b25077_001sd_tf

    FROM acs_b25077_cvs cv
    INNER JOIN acs_b25077_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

DROP VIEW IF EXISTS acs_b26001_cvsummary;
    CREATE VIEW acs_b26001_cvsummary AS
SELECT ch.geoid, g.sumlevel2019 AS sumlevel, g.stusab2019 AS stusab,

    CASE
    	WHEN cv.b26001_001e1_cv < 15 Then 'high'
    	WHEN cv.b26001_001e1_cv >= 15 and b26001_001e1_cv < 30 Then 'medium'
    	WHEN cv.b26001_001e1_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b26001_001e1_cv_cat,

    CASE
    	WHEN cv.b26001_001e2_cv < 15 Then 'high'
    	WHEN cv.b26001_001e2_cv >= 15 and b26001_001e2_cv < 30 Then 'medium'
    	WHEN cv.b26001_001e2_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b26001_001e2_cv_cat,

    CASE
    	WHEN cv.b26001_001c_cv < 15 Then 'high'
    	WHEN cv.b26001_001c_cv >= 15 and b26001_001c_cv < 30 Then 'medium'
    	WHEN cv.b26001_001c_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b26001_001c_cv_cat,

    CASE
    	WHEN cv.b26001_001p_cv < 15 Then 'high'
    	WHEN cv.b26001_001p_cv >= 15 and b26001_001p_cv < 30 Then 'medium'
    	WHEN cv.b26001_001p_cv >= 30 Then 'low'
    	ELSE NULL
    END AS b26001_001p_cv_cat,
CASE
    WHEN ch.b26001_001sd > 1.645 THEN True
    WHEN ch.b26001_001sd <= 1.645 THEN False
    WHEN ch.b26001_001sd IS NULL AND cv.b26001_001c_cv = 0 AND ch.b26001_001cm = 0 THEN True
    ELSE NULL
    END AS b26001_001sd_tf

    FROM acs_b26001_cvs cv
    INNER JOIN acs_b26001_change ch ON cv.geoid=ch.geoid
    INNER JOIN acs_geos_join g ON cv.geoid=g.geo2019
    ORDER BY ch.geoid; 

END;
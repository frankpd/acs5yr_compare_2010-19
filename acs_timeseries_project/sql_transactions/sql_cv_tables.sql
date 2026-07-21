-- Create Tables with cvs 
BEGIN;
DROP TABLE IF EXISTS acs_b01001_cvs;
    CREATE TABLE acs_b01001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b01001_001m/1.645)/CAST(NULLIF(e1.b01001_001e,0) as numeric))*100 as numeric),1) AS b01001_001e1_cv,
ROUND(CAST(ABS((e2.b01001_001m/1.645)/CAST(NULLIF(e2.b01001_001e,0) as numeric))*100 as numeric),1) AS b01001_001e2_cv,
ROUND(CAST(ABS((b01001_001cm/1.645)/CAST(NULLIF(b01001_001c,0) as numeric))*100 as numeric),1) AS b01001_001c_cv,
ROUND(CAST(ABS((b01001_001pm/1.645)/CAST(NULLIF(b01001_001p,0) as numeric))*100 as numeric),1) AS b01001_001p_cv,
ROUND(CAST(ABS((e1.b01001_002m/1.645)/CAST(NULLIF(e1.b01001_002e,0) as numeric))*100 as numeric),1) AS b01001_002e1_cv,
ROUND(CAST(ABS((e2.b01001_002m/1.645)/CAST(NULLIF(e2.b01001_002e,0) as numeric))*100 as numeric),1) AS b01001_002e2_cv,
ROUND(CAST(ABS((b01001_002cm/1.645)/CAST(NULLIF(b01001_002c,0) as numeric))*100 as numeric),1) AS b01001_002c_cv,
ROUND(CAST(ABS((b01001_002pm/1.645)/CAST(NULLIF(b01001_002p,0) as numeric))*100 as numeric),1) AS b01001_002p_cv,
ROUND(CAST(ABS((e1.b01001_003m/1.645)/CAST(NULLIF(e1.b01001_003e,0) as numeric))*100 as numeric),1) AS b01001_003e1_cv,
ROUND(CAST(ABS((e2.b01001_003m/1.645)/CAST(NULLIF(e2.b01001_003e,0) as numeric))*100 as numeric),1) AS b01001_003e2_cv,
ROUND(CAST(ABS((b01001_003cm/1.645)/CAST(NULLIF(b01001_003c,0) as numeric))*100 as numeric),1) AS b01001_003c_cv,
ROUND(CAST(ABS((b01001_003pm/1.645)/CAST(NULLIF(b01001_003p,0) as numeric))*100 as numeric),1) AS b01001_003p_cv,
ROUND(CAST(ABS((e1.b01001_004m/1.645)/CAST(NULLIF(e1.b01001_004e,0) as numeric))*100 as numeric),1) AS b01001_004e1_cv,
ROUND(CAST(ABS((e2.b01001_004m/1.645)/CAST(NULLIF(e2.b01001_004e,0) as numeric))*100 as numeric),1) AS b01001_004e2_cv,
ROUND(CAST(ABS((b01001_004cm/1.645)/CAST(NULLIF(b01001_004c,0) as numeric))*100 as numeric),1) AS b01001_004c_cv,
ROUND(CAST(ABS((b01001_004pm/1.645)/CAST(NULLIF(b01001_004p,0) as numeric))*100 as numeric),1) AS b01001_004p_cv,
ROUND(CAST(ABS((e1.b01001_005m/1.645)/CAST(NULLIF(e1.b01001_005e,0) as numeric))*100 as numeric),1) AS b01001_005e1_cv,
ROUND(CAST(ABS((e2.b01001_005m/1.645)/CAST(NULLIF(e2.b01001_005e,0) as numeric))*100 as numeric),1) AS b01001_005e2_cv,
ROUND(CAST(ABS((b01001_005cm/1.645)/CAST(NULLIF(b01001_005c,0) as numeric))*100 as numeric),1) AS b01001_005c_cv,
ROUND(CAST(ABS((b01001_005pm/1.645)/CAST(NULLIF(b01001_005p,0) as numeric))*100 as numeric),1) AS b01001_005p_cv,
ROUND(CAST(ABS((e1.b01001_006m/1.645)/CAST(NULLIF(e1.b01001_006e,0) as numeric))*100 as numeric),1) AS b01001_006e1_cv,
ROUND(CAST(ABS((e2.b01001_006m/1.645)/CAST(NULLIF(e2.b01001_006e,0) as numeric))*100 as numeric),1) AS b01001_006e2_cv,
ROUND(CAST(ABS((b01001_006cm/1.645)/CAST(NULLIF(b01001_006c,0) as numeric))*100 as numeric),1) AS b01001_006c_cv,
ROUND(CAST(ABS((b01001_006pm/1.645)/CAST(NULLIF(b01001_006p,0) as numeric))*100 as numeric),1) AS b01001_006p_cv,
ROUND(CAST(ABS((e1.b01001_007m/1.645)/CAST(NULLIF(e1.b01001_007e,0) as numeric))*100 as numeric),1) AS b01001_007e1_cv,
ROUND(CAST(ABS((e2.b01001_007m/1.645)/CAST(NULLIF(e2.b01001_007e,0) as numeric))*100 as numeric),1) AS b01001_007e2_cv,
ROUND(CAST(ABS((b01001_007cm/1.645)/CAST(NULLIF(b01001_007c,0) as numeric))*100 as numeric),1) AS b01001_007c_cv,
ROUND(CAST(ABS((b01001_007pm/1.645)/CAST(NULLIF(b01001_007p,0) as numeric))*100 as numeric),1) AS b01001_007p_cv,
ROUND(CAST(ABS((e1.b01001_008m/1.645)/CAST(NULLIF(e1.b01001_008e,0) as numeric))*100 as numeric),1) AS b01001_008e1_cv,
ROUND(CAST(ABS((e2.b01001_008m/1.645)/CAST(NULLIF(e2.b01001_008e,0) as numeric))*100 as numeric),1) AS b01001_008e2_cv,
ROUND(CAST(ABS((b01001_008cm/1.645)/CAST(NULLIF(b01001_008c,0) as numeric))*100 as numeric),1) AS b01001_008c_cv,
ROUND(CAST(ABS((b01001_008pm/1.645)/CAST(NULLIF(b01001_008p,0) as numeric))*100 as numeric),1) AS b01001_008p_cv,
ROUND(CAST(ABS((e1.b01001_009m/1.645)/CAST(NULLIF(e1.b01001_009e,0) as numeric))*100 as numeric),1) AS b01001_009e1_cv,
ROUND(CAST(ABS((e2.b01001_009m/1.645)/CAST(NULLIF(e2.b01001_009e,0) as numeric))*100 as numeric),1) AS b01001_009e2_cv,
ROUND(CAST(ABS((b01001_009cm/1.645)/CAST(NULLIF(b01001_009c,0) as numeric))*100 as numeric),1) AS b01001_009c_cv,
ROUND(CAST(ABS((b01001_009pm/1.645)/CAST(NULLIF(b01001_009p,0) as numeric))*100 as numeric),1) AS b01001_009p_cv,
ROUND(CAST(ABS((e1.b01001_010m/1.645)/CAST(NULLIF(e1.b01001_010e,0) as numeric))*100 as numeric),1) AS b01001_010e1_cv,
ROUND(CAST(ABS((e2.b01001_010m/1.645)/CAST(NULLIF(e2.b01001_010e,0) as numeric))*100 as numeric),1) AS b01001_010e2_cv,
ROUND(CAST(ABS((b01001_010cm/1.645)/CAST(NULLIF(b01001_010c,0) as numeric))*100 as numeric),1) AS b01001_010c_cv,
ROUND(CAST(ABS((b01001_010pm/1.645)/CAST(NULLIF(b01001_010p,0) as numeric))*100 as numeric),1) AS b01001_010p_cv,
ROUND(CAST(ABS((e1.b01001_011m/1.645)/CAST(NULLIF(e1.b01001_011e,0) as numeric))*100 as numeric),1) AS b01001_011e1_cv,
ROUND(CAST(ABS((e2.b01001_011m/1.645)/CAST(NULLIF(e2.b01001_011e,0) as numeric))*100 as numeric),1) AS b01001_011e2_cv,
ROUND(CAST(ABS((b01001_011cm/1.645)/CAST(NULLIF(b01001_011c,0) as numeric))*100 as numeric),1) AS b01001_011c_cv,
ROUND(CAST(ABS((b01001_011pm/1.645)/CAST(NULLIF(b01001_011p,0) as numeric))*100 as numeric),1) AS b01001_011p_cv,
ROUND(CAST(ABS((e1.b01001_012m/1.645)/CAST(NULLIF(e1.b01001_012e,0) as numeric))*100 as numeric),1) AS b01001_012e1_cv,
ROUND(CAST(ABS((e2.b01001_012m/1.645)/CAST(NULLIF(e2.b01001_012e,0) as numeric))*100 as numeric),1) AS b01001_012e2_cv,
ROUND(CAST(ABS((b01001_012cm/1.645)/CAST(NULLIF(b01001_012c,0) as numeric))*100 as numeric),1) AS b01001_012c_cv,
ROUND(CAST(ABS((b01001_012pm/1.645)/CAST(NULLIF(b01001_012p,0) as numeric))*100 as numeric),1) AS b01001_012p_cv,
ROUND(CAST(ABS((e1.b01001_013m/1.645)/CAST(NULLIF(e1.b01001_013e,0) as numeric))*100 as numeric),1) AS b01001_013e1_cv,
ROUND(CAST(ABS((e2.b01001_013m/1.645)/CAST(NULLIF(e2.b01001_013e,0) as numeric))*100 as numeric),1) AS b01001_013e2_cv,
ROUND(CAST(ABS((b01001_013cm/1.645)/CAST(NULLIF(b01001_013c,0) as numeric))*100 as numeric),1) AS b01001_013c_cv,
ROUND(CAST(ABS((b01001_013pm/1.645)/CAST(NULLIF(b01001_013p,0) as numeric))*100 as numeric),1) AS b01001_013p_cv,
ROUND(CAST(ABS((e1.b01001_014m/1.645)/CAST(NULLIF(e1.b01001_014e,0) as numeric))*100 as numeric),1) AS b01001_014e1_cv,
ROUND(CAST(ABS((e2.b01001_014m/1.645)/CAST(NULLIF(e2.b01001_014e,0) as numeric))*100 as numeric),1) AS b01001_014e2_cv,
ROUND(CAST(ABS((b01001_014cm/1.645)/CAST(NULLIF(b01001_014c,0) as numeric))*100 as numeric),1) AS b01001_014c_cv,
ROUND(CAST(ABS((b01001_014pm/1.645)/CAST(NULLIF(b01001_014p,0) as numeric))*100 as numeric),1) AS b01001_014p_cv,
ROUND(CAST(ABS((e1.b01001_015m/1.645)/CAST(NULLIF(e1.b01001_015e,0) as numeric))*100 as numeric),1) AS b01001_015e1_cv,
ROUND(CAST(ABS((e2.b01001_015m/1.645)/CAST(NULLIF(e2.b01001_015e,0) as numeric))*100 as numeric),1) AS b01001_015e2_cv,
ROUND(CAST(ABS((b01001_015cm/1.645)/CAST(NULLIF(b01001_015c,0) as numeric))*100 as numeric),1) AS b01001_015c_cv,
ROUND(CAST(ABS((b01001_015pm/1.645)/CAST(NULLIF(b01001_015p,0) as numeric))*100 as numeric),1) AS b01001_015p_cv,
ROUND(CAST(ABS((e1.b01001_016m/1.645)/CAST(NULLIF(e1.b01001_016e,0) as numeric))*100 as numeric),1) AS b01001_016e1_cv,
ROUND(CAST(ABS((e2.b01001_016m/1.645)/CAST(NULLIF(e2.b01001_016e,0) as numeric))*100 as numeric),1) AS b01001_016e2_cv,
ROUND(CAST(ABS((b01001_016cm/1.645)/CAST(NULLIF(b01001_016c,0) as numeric))*100 as numeric),1) AS b01001_016c_cv,
ROUND(CAST(ABS((b01001_016pm/1.645)/CAST(NULLIF(b01001_016p,0) as numeric))*100 as numeric),1) AS b01001_016p_cv,
ROUND(CAST(ABS((e1.b01001_017m/1.645)/CAST(NULLIF(e1.b01001_017e,0) as numeric))*100 as numeric),1) AS b01001_017e1_cv,
ROUND(CAST(ABS((e2.b01001_017m/1.645)/CAST(NULLIF(e2.b01001_017e,0) as numeric))*100 as numeric),1) AS b01001_017e2_cv,
ROUND(CAST(ABS((b01001_017cm/1.645)/CAST(NULLIF(b01001_017c,0) as numeric))*100 as numeric),1) AS b01001_017c_cv,
ROUND(CAST(ABS((b01001_017pm/1.645)/CAST(NULLIF(b01001_017p,0) as numeric))*100 as numeric),1) AS b01001_017p_cv,
ROUND(CAST(ABS((e1.b01001_018m/1.645)/CAST(NULLIF(e1.b01001_018e,0) as numeric))*100 as numeric),1) AS b01001_018e1_cv,
ROUND(CAST(ABS((e2.b01001_018m/1.645)/CAST(NULLIF(e2.b01001_018e,0) as numeric))*100 as numeric),1) AS b01001_018e2_cv,
ROUND(CAST(ABS((b01001_018cm/1.645)/CAST(NULLIF(b01001_018c,0) as numeric))*100 as numeric),1) AS b01001_018c_cv,
ROUND(CAST(ABS((b01001_018pm/1.645)/CAST(NULLIF(b01001_018p,0) as numeric))*100 as numeric),1) AS b01001_018p_cv,
ROUND(CAST(ABS((e1.b01001_019m/1.645)/CAST(NULLIF(e1.b01001_019e,0) as numeric))*100 as numeric),1) AS b01001_019e1_cv,
ROUND(CAST(ABS((e2.b01001_019m/1.645)/CAST(NULLIF(e2.b01001_019e,0) as numeric))*100 as numeric),1) AS b01001_019e2_cv,
ROUND(CAST(ABS((b01001_019cm/1.645)/CAST(NULLIF(b01001_019c,0) as numeric))*100 as numeric),1) AS b01001_019c_cv,
ROUND(CAST(ABS((b01001_019pm/1.645)/CAST(NULLIF(b01001_019p,0) as numeric))*100 as numeric),1) AS b01001_019p_cv,
ROUND(CAST(ABS((e1.b01001_020m/1.645)/CAST(NULLIF(e1.b01001_020e,0) as numeric))*100 as numeric),1) AS b01001_020e1_cv,
ROUND(CAST(ABS((e2.b01001_020m/1.645)/CAST(NULLIF(e2.b01001_020e,0) as numeric))*100 as numeric),1) AS b01001_020e2_cv,
ROUND(CAST(ABS((b01001_020cm/1.645)/CAST(NULLIF(b01001_020c,0) as numeric))*100 as numeric),1) AS b01001_020c_cv,
ROUND(CAST(ABS((b01001_020pm/1.645)/CAST(NULLIF(b01001_020p,0) as numeric))*100 as numeric),1) AS b01001_020p_cv,
ROUND(CAST(ABS((e1.b01001_021m/1.645)/CAST(NULLIF(e1.b01001_021e,0) as numeric))*100 as numeric),1) AS b01001_021e1_cv,
ROUND(CAST(ABS((e2.b01001_021m/1.645)/CAST(NULLIF(e2.b01001_021e,0) as numeric))*100 as numeric),1) AS b01001_021e2_cv,
ROUND(CAST(ABS((b01001_021cm/1.645)/CAST(NULLIF(b01001_021c,0) as numeric))*100 as numeric),1) AS b01001_021c_cv,
ROUND(CAST(ABS((b01001_021pm/1.645)/CAST(NULLIF(b01001_021p,0) as numeric))*100 as numeric),1) AS b01001_021p_cv,
ROUND(CAST(ABS((e1.b01001_022m/1.645)/CAST(NULLIF(e1.b01001_022e,0) as numeric))*100 as numeric),1) AS b01001_022e1_cv,
ROUND(CAST(ABS((e2.b01001_022m/1.645)/CAST(NULLIF(e2.b01001_022e,0) as numeric))*100 as numeric),1) AS b01001_022e2_cv,
ROUND(CAST(ABS((b01001_022cm/1.645)/CAST(NULLIF(b01001_022c,0) as numeric))*100 as numeric),1) AS b01001_022c_cv,
ROUND(CAST(ABS((b01001_022pm/1.645)/CAST(NULLIF(b01001_022p,0) as numeric))*100 as numeric),1) AS b01001_022p_cv,
ROUND(CAST(ABS((e1.b01001_023m/1.645)/CAST(NULLIF(e1.b01001_023e,0) as numeric))*100 as numeric),1) AS b01001_023e1_cv,
ROUND(CAST(ABS((e2.b01001_023m/1.645)/CAST(NULLIF(e2.b01001_023e,0) as numeric))*100 as numeric),1) AS b01001_023e2_cv,
ROUND(CAST(ABS((b01001_023cm/1.645)/CAST(NULLIF(b01001_023c,0) as numeric))*100 as numeric),1) AS b01001_023c_cv,
ROUND(CAST(ABS((b01001_023pm/1.645)/CAST(NULLIF(b01001_023p,0) as numeric))*100 as numeric),1) AS b01001_023p_cv,
ROUND(CAST(ABS((e1.b01001_024m/1.645)/CAST(NULLIF(e1.b01001_024e,0) as numeric))*100 as numeric),1) AS b01001_024e1_cv,
ROUND(CAST(ABS((e2.b01001_024m/1.645)/CAST(NULLIF(e2.b01001_024e,0) as numeric))*100 as numeric),1) AS b01001_024e2_cv,
ROUND(CAST(ABS((b01001_024cm/1.645)/CAST(NULLIF(b01001_024c,0) as numeric))*100 as numeric),1) AS b01001_024c_cv,
ROUND(CAST(ABS((b01001_024pm/1.645)/CAST(NULLIF(b01001_024p,0) as numeric))*100 as numeric),1) AS b01001_024p_cv,
ROUND(CAST(ABS((e1.b01001_025m/1.645)/CAST(NULLIF(e1.b01001_025e,0) as numeric))*100 as numeric),1) AS b01001_025e1_cv,
ROUND(CAST(ABS((e2.b01001_025m/1.645)/CAST(NULLIF(e2.b01001_025e,0) as numeric))*100 as numeric),1) AS b01001_025e2_cv,
ROUND(CAST(ABS((b01001_025cm/1.645)/CAST(NULLIF(b01001_025c,0) as numeric))*100 as numeric),1) AS b01001_025c_cv,
ROUND(CAST(ABS((b01001_025pm/1.645)/CAST(NULLIF(b01001_025p,0) as numeric))*100 as numeric),1) AS b01001_025p_cv,
ROUND(CAST(ABS((e1.b01001_026m/1.645)/CAST(NULLIF(e1.b01001_026e,0) as numeric))*100 as numeric),1) AS b01001_026e1_cv,
ROUND(CAST(ABS((e2.b01001_026m/1.645)/CAST(NULLIF(e2.b01001_026e,0) as numeric))*100 as numeric),1) AS b01001_026e2_cv,
ROUND(CAST(ABS((b01001_026cm/1.645)/CAST(NULLIF(b01001_026c,0) as numeric))*100 as numeric),1) AS b01001_026c_cv,
ROUND(CAST(ABS((b01001_026pm/1.645)/CAST(NULLIF(b01001_026p,0) as numeric))*100 as numeric),1) AS b01001_026p_cv,
ROUND(CAST(ABS((e1.b01001_027m/1.645)/CAST(NULLIF(e1.b01001_027e,0) as numeric))*100 as numeric),1) AS b01001_027e1_cv,
ROUND(CAST(ABS((e2.b01001_027m/1.645)/CAST(NULLIF(e2.b01001_027e,0) as numeric))*100 as numeric),1) AS b01001_027e2_cv,
ROUND(CAST(ABS((b01001_027cm/1.645)/CAST(NULLIF(b01001_027c,0) as numeric))*100 as numeric),1) AS b01001_027c_cv,
ROUND(CAST(ABS((b01001_027pm/1.645)/CAST(NULLIF(b01001_027p,0) as numeric))*100 as numeric),1) AS b01001_027p_cv,
ROUND(CAST(ABS((e1.b01001_028m/1.645)/CAST(NULLIF(e1.b01001_028e,0) as numeric))*100 as numeric),1) AS b01001_028e1_cv,
ROUND(CAST(ABS((e2.b01001_028m/1.645)/CAST(NULLIF(e2.b01001_028e,0) as numeric))*100 as numeric),1) AS b01001_028e2_cv,
ROUND(CAST(ABS((b01001_028cm/1.645)/CAST(NULLIF(b01001_028c,0) as numeric))*100 as numeric),1) AS b01001_028c_cv,
ROUND(CAST(ABS((b01001_028pm/1.645)/CAST(NULLIF(b01001_028p,0) as numeric))*100 as numeric),1) AS b01001_028p_cv,
ROUND(CAST(ABS((e1.b01001_029m/1.645)/CAST(NULLIF(e1.b01001_029e,0) as numeric))*100 as numeric),1) AS b01001_029e1_cv,
ROUND(CAST(ABS((e2.b01001_029m/1.645)/CAST(NULLIF(e2.b01001_029e,0) as numeric))*100 as numeric),1) AS b01001_029e2_cv,
ROUND(CAST(ABS((b01001_029cm/1.645)/CAST(NULLIF(b01001_029c,0) as numeric))*100 as numeric),1) AS b01001_029c_cv,
ROUND(CAST(ABS((b01001_029pm/1.645)/CAST(NULLIF(b01001_029p,0) as numeric))*100 as numeric),1) AS b01001_029p_cv,
ROUND(CAST(ABS((e1.b01001_030m/1.645)/CAST(NULLIF(e1.b01001_030e,0) as numeric))*100 as numeric),1) AS b01001_030e1_cv,
ROUND(CAST(ABS((e2.b01001_030m/1.645)/CAST(NULLIF(e2.b01001_030e,0) as numeric))*100 as numeric),1) AS b01001_030e2_cv,
ROUND(CAST(ABS((b01001_030cm/1.645)/CAST(NULLIF(b01001_030c,0) as numeric))*100 as numeric),1) AS b01001_030c_cv,
ROUND(CAST(ABS((b01001_030pm/1.645)/CAST(NULLIF(b01001_030p,0) as numeric))*100 as numeric),1) AS b01001_030p_cv,
ROUND(CAST(ABS((e1.b01001_031m/1.645)/CAST(NULLIF(e1.b01001_031e,0) as numeric))*100 as numeric),1) AS b01001_031e1_cv,
ROUND(CAST(ABS((e2.b01001_031m/1.645)/CAST(NULLIF(e2.b01001_031e,0) as numeric))*100 as numeric),1) AS b01001_031e2_cv,
ROUND(CAST(ABS((b01001_031cm/1.645)/CAST(NULLIF(b01001_031c,0) as numeric))*100 as numeric),1) AS b01001_031c_cv,
ROUND(CAST(ABS((b01001_031pm/1.645)/CAST(NULLIF(b01001_031p,0) as numeric))*100 as numeric),1) AS b01001_031p_cv,
ROUND(CAST(ABS((e1.b01001_032m/1.645)/CAST(NULLIF(e1.b01001_032e,0) as numeric))*100 as numeric),1) AS b01001_032e1_cv,
ROUND(CAST(ABS((e2.b01001_032m/1.645)/CAST(NULLIF(e2.b01001_032e,0) as numeric))*100 as numeric),1) AS b01001_032e2_cv,
ROUND(CAST(ABS((b01001_032cm/1.645)/CAST(NULLIF(b01001_032c,0) as numeric))*100 as numeric),1) AS b01001_032c_cv,
ROUND(CAST(ABS((b01001_032pm/1.645)/CAST(NULLIF(b01001_032p,0) as numeric))*100 as numeric),1) AS b01001_032p_cv,
ROUND(CAST(ABS((e1.b01001_033m/1.645)/CAST(NULLIF(e1.b01001_033e,0) as numeric))*100 as numeric),1) AS b01001_033e1_cv,
ROUND(CAST(ABS((e2.b01001_033m/1.645)/CAST(NULLIF(e2.b01001_033e,0) as numeric))*100 as numeric),1) AS b01001_033e2_cv,
ROUND(CAST(ABS((b01001_033cm/1.645)/CAST(NULLIF(b01001_033c,0) as numeric))*100 as numeric),1) AS b01001_033c_cv,
ROUND(CAST(ABS((b01001_033pm/1.645)/CAST(NULLIF(b01001_033p,0) as numeric))*100 as numeric),1) AS b01001_033p_cv,
ROUND(CAST(ABS((e1.b01001_034m/1.645)/CAST(NULLIF(e1.b01001_034e,0) as numeric))*100 as numeric),1) AS b01001_034e1_cv,
ROUND(CAST(ABS((e2.b01001_034m/1.645)/CAST(NULLIF(e2.b01001_034e,0) as numeric))*100 as numeric),1) AS b01001_034e2_cv,
ROUND(CAST(ABS((b01001_034cm/1.645)/CAST(NULLIF(b01001_034c,0) as numeric))*100 as numeric),1) AS b01001_034c_cv,
ROUND(CAST(ABS((b01001_034pm/1.645)/CAST(NULLIF(b01001_034p,0) as numeric))*100 as numeric),1) AS b01001_034p_cv,
ROUND(CAST(ABS((e1.b01001_035m/1.645)/CAST(NULLIF(e1.b01001_035e,0) as numeric))*100 as numeric),1) AS b01001_035e1_cv,
ROUND(CAST(ABS((e2.b01001_035m/1.645)/CAST(NULLIF(e2.b01001_035e,0) as numeric))*100 as numeric),1) AS b01001_035e2_cv,
ROUND(CAST(ABS((b01001_035cm/1.645)/CAST(NULLIF(b01001_035c,0) as numeric))*100 as numeric),1) AS b01001_035c_cv,
ROUND(CAST(ABS((b01001_035pm/1.645)/CAST(NULLIF(b01001_035p,0) as numeric))*100 as numeric),1) AS b01001_035p_cv,
ROUND(CAST(ABS((e1.b01001_036m/1.645)/CAST(NULLIF(e1.b01001_036e,0) as numeric))*100 as numeric),1) AS b01001_036e1_cv,
ROUND(CAST(ABS((e2.b01001_036m/1.645)/CAST(NULLIF(e2.b01001_036e,0) as numeric))*100 as numeric),1) AS b01001_036e2_cv,
ROUND(CAST(ABS((b01001_036cm/1.645)/CAST(NULLIF(b01001_036c,0) as numeric))*100 as numeric),1) AS b01001_036c_cv,
ROUND(CAST(ABS((b01001_036pm/1.645)/CAST(NULLIF(b01001_036p,0) as numeric))*100 as numeric),1) AS b01001_036p_cv,
ROUND(CAST(ABS((e1.b01001_037m/1.645)/CAST(NULLIF(e1.b01001_037e,0) as numeric))*100 as numeric),1) AS b01001_037e1_cv,
ROUND(CAST(ABS((e2.b01001_037m/1.645)/CAST(NULLIF(e2.b01001_037e,0) as numeric))*100 as numeric),1) AS b01001_037e2_cv,
ROUND(CAST(ABS((b01001_037cm/1.645)/CAST(NULLIF(b01001_037c,0) as numeric))*100 as numeric),1) AS b01001_037c_cv,
ROUND(CAST(ABS((b01001_037pm/1.645)/CAST(NULLIF(b01001_037p,0) as numeric))*100 as numeric),1) AS b01001_037p_cv,
ROUND(CAST(ABS((e1.b01001_038m/1.645)/CAST(NULLIF(e1.b01001_038e,0) as numeric))*100 as numeric),1) AS b01001_038e1_cv,
ROUND(CAST(ABS((e2.b01001_038m/1.645)/CAST(NULLIF(e2.b01001_038e,0) as numeric))*100 as numeric),1) AS b01001_038e2_cv,
ROUND(CAST(ABS((b01001_038cm/1.645)/CAST(NULLIF(b01001_038c,0) as numeric))*100 as numeric),1) AS b01001_038c_cv,
ROUND(CAST(ABS((b01001_038pm/1.645)/CAST(NULLIF(b01001_038p,0) as numeric))*100 as numeric),1) AS b01001_038p_cv,
ROUND(CAST(ABS((e1.b01001_039m/1.645)/CAST(NULLIF(e1.b01001_039e,0) as numeric))*100 as numeric),1) AS b01001_039e1_cv,
ROUND(CAST(ABS((e2.b01001_039m/1.645)/CAST(NULLIF(e2.b01001_039e,0) as numeric))*100 as numeric),1) AS b01001_039e2_cv,
ROUND(CAST(ABS((b01001_039cm/1.645)/CAST(NULLIF(b01001_039c,0) as numeric))*100 as numeric),1) AS b01001_039c_cv,
ROUND(CAST(ABS((b01001_039pm/1.645)/CAST(NULLIF(b01001_039p,0) as numeric))*100 as numeric),1) AS b01001_039p_cv,
ROUND(CAST(ABS((e1.b01001_040m/1.645)/CAST(NULLIF(e1.b01001_040e,0) as numeric))*100 as numeric),1) AS b01001_040e1_cv,
ROUND(CAST(ABS((e2.b01001_040m/1.645)/CAST(NULLIF(e2.b01001_040e,0) as numeric))*100 as numeric),1) AS b01001_040e2_cv,
ROUND(CAST(ABS((b01001_040cm/1.645)/CAST(NULLIF(b01001_040c,0) as numeric))*100 as numeric),1) AS b01001_040c_cv,
ROUND(CAST(ABS((b01001_040pm/1.645)/CAST(NULLIF(b01001_040p,0) as numeric))*100 as numeric),1) AS b01001_040p_cv,
ROUND(CAST(ABS((e1.b01001_041m/1.645)/CAST(NULLIF(e1.b01001_041e,0) as numeric))*100 as numeric),1) AS b01001_041e1_cv,
ROUND(CAST(ABS((e2.b01001_041m/1.645)/CAST(NULLIF(e2.b01001_041e,0) as numeric))*100 as numeric),1) AS b01001_041e2_cv,
ROUND(CAST(ABS((b01001_041cm/1.645)/CAST(NULLIF(b01001_041c,0) as numeric))*100 as numeric),1) AS b01001_041c_cv,
ROUND(CAST(ABS((b01001_041pm/1.645)/CAST(NULLIF(b01001_041p,0) as numeric))*100 as numeric),1) AS b01001_041p_cv,
ROUND(CAST(ABS((e1.b01001_042m/1.645)/CAST(NULLIF(e1.b01001_042e,0) as numeric))*100 as numeric),1) AS b01001_042e1_cv,
ROUND(CAST(ABS((e2.b01001_042m/1.645)/CAST(NULLIF(e2.b01001_042e,0) as numeric))*100 as numeric),1) AS b01001_042e2_cv,
ROUND(CAST(ABS((b01001_042cm/1.645)/CAST(NULLIF(b01001_042c,0) as numeric))*100 as numeric),1) AS b01001_042c_cv,
ROUND(CAST(ABS((b01001_042pm/1.645)/CAST(NULLIF(b01001_042p,0) as numeric))*100 as numeric),1) AS b01001_042p_cv,
ROUND(CAST(ABS((e1.b01001_043m/1.645)/CAST(NULLIF(e1.b01001_043e,0) as numeric))*100 as numeric),1) AS b01001_043e1_cv,
ROUND(CAST(ABS((e2.b01001_043m/1.645)/CAST(NULLIF(e2.b01001_043e,0) as numeric))*100 as numeric),1) AS b01001_043e2_cv,
ROUND(CAST(ABS((b01001_043cm/1.645)/CAST(NULLIF(b01001_043c,0) as numeric))*100 as numeric),1) AS b01001_043c_cv,
ROUND(CAST(ABS((b01001_043pm/1.645)/CAST(NULLIF(b01001_043p,0) as numeric))*100 as numeric),1) AS b01001_043p_cv,
ROUND(CAST(ABS((e1.b01001_044m/1.645)/CAST(NULLIF(e1.b01001_044e,0) as numeric))*100 as numeric),1) AS b01001_044e1_cv,
ROUND(CAST(ABS((e2.b01001_044m/1.645)/CAST(NULLIF(e2.b01001_044e,0) as numeric))*100 as numeric),1) AS b01001_044e2_cv,
ROUND(CAST(ABS((b01001_044cm/1.645)/CAST(NULLIF(b01001_044c,0) as numeric))*100 as numeric),1) AS b01001_044c_cv,
ROUND(CAST(ABS((b01001_044pm/1.645)/CAST(NULLIF(b01001_044p,0) as numeric))*100 as numeric),1) AS b01001_044p_cv,
ROUND(CAST(ABS((e1.b01001_045m/1.645)/CAST(NULLIF(e1.b01001_045e,0) as numeric))*100 as numeric),1) AS b01001_045e1_cv,
ROUND(CAST(ABS((e2.b01001_045m/1.645)/CAST(NULLIF(e2.b01001_045e,0) as numeric))*100 as numeric),1) AS b01001_045e2_cv,
ROUND(CAST(ABS((b01001_045cm/1.645)/CAST(NULLIF(b01001_045c,0) as numeric))*100 as numeric),1) AS b01001_045c_cv,
ROUND(CAST(ABS((b01001_045pm/1.645)/CAST(NULLIF(b01001_045p,0) as numeric))*100 as numeric),1) AS b01001_045p_cv,
ROUND(CAST(ABS((e1.b01001_046m/1.645)/CAST(NULLIF(e1.b01001_046e,0) as numeric))*100 as numeric),1) AS b01001_046e1_cv,
ROUND(CAST(ABS((e2.b01001_046m/1.645)/CAST(NULLIF(e2.b01001_046e,0) as numeric))*100 as numeric),1) AS b01001_046e2_cv,
ROUND(CAST(ABS((b01001_046cm/1.645)/CAST(NULLIF(b01001_046c,0) as numeric))*100 as numeric),1) AS b01001_046c_cv,
ROUND(CAST(ABS((b01001_046pm/1.645)/CAST(NULLIF(b01001_046p,0) as numeric))*100 as numeric),1) AS b01001_046p_cv,
ROUND(CAST(ABS((e1.b01001_047m/1.645)/CAST(NULLIF(e1.b01001_047e,0) as numeric))*100 as numeric),1) AS b01001_047e1_cv,
ROUND(CAST(ABS((e2.b01001_047m/1.645)/CAST(NULLIF(e2.b01001_047e,0) as numeric))*100 as numeric),1) AS b01001_047e2_cv,
ROUND(CAST(ABS((b01001_047cm/1.645)/CAST(NULLIF(b01001_047c,0) as numeric))*100 as numeric),1) AS b01001_047c_cv,
ROUND(CAST(ABS((b01001_047pm/1.645)/CAST(NULLIF(b01001_047p,0) as numeric))*100 as numeric),1) AS b01001_047p_cv,
ROUND(CAST(ABS((e1.b01001_048m/1.645)/CAST(NULLIF(e1.b01001_048e,0) as numeric))*100 as numeric),1) AS b01001_048e1_cv,
ROUND(CAST(ABS((e2.b01001_048m/1.645)/CAST(NULLIF(e2.b01001_048e,0) as numeric))*100 as numeric),1) AS b01001_048e2_cv,
ROUND(CAST(ABS((b01001_048cm/1.645)/CAST(NULLIF(b01001_048c,0) as numeric))*100 as numeric),1) AS b01001_048c_cv,
ROUND(CAST(ABS((b01001_048pm/1.645)/CAST(NULLIF(b01001_048p,0) as numeric))*100 as numeric),1) AS b01001_048p_cv,
ROUND(CAST(ABS((e1.b01001_049m/1.645)/CAST(NULLIF(e1.b01001_049e,0) as numeric))*100 as numeric),1) AS b01001_049e1_cv,
ROUND(CAST(ABS((e2.b01001_049m/1.645)/CAST(NULLIF(e2.b01001_049e,0) as numeric))*100 as numeric),1) AS b01001_049e2_cv,
ROUND(CAST(ABS((b01001_049cm/1.645)/CAST(NULLIF(b01001_049c,0) as numeric))*100 as numeric),1) AS b01001_049c_cv,
ROUND(CAST(ABS((b01001_049pm/1.645)/CAST(NULLIF(b01001_049p,0) as numeric))*100 as numeric),1) AS b01001_049p_cv
FROM acs_b01001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b01001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b01001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b01002_cvs;
    CREATE TABLE acs_b01002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b01002_001m/1.645)/CAST(NULLIF(e1.b01002_001e,0) as numeric))*100 as numeric),1) AS b01002_001e1_cv,
ROUND(CAST(ABS((e2.b01002_001m/1.645)/CAST(NULLIF(e2.b01002_001e,0) as numeric))*100 as numeric),1) AS b01002_001e2_cv,
ROUND(CAST(ABS((b01002_001cm/1.645)/CAST(NULLIF(b01002_001c,0) as numeric))*100 as numeric),1) AS b01002_001c_cv,
ROUND(CAST(ABS((b01002_001pm/1.645)/CAST(NULLIF(b01002_001p,0) as numeric))*100 as numeric),1) AS b01002_001p_cv,
ROUND(CAST(ABS((e1.b01002_002m/1.645)/CAST(NULLIF(e1.b01002_002e,0) as numeric))*100 as numeric),1) AS b01002_002e1_cv,
ROUND(CAST(ABS((e2.b01002_002m/1.645)/CAST(NULLIF(e2.b01002_002e,0) as numeric))*100 as numeric),1) AS b01002_002e2_cv,
ROUND(CAST(ABS((b01002_002cm/1.645)/CAST(NULLIF(b01002_002c,0) as numeric))*100 as numeric),1) AS b01002_002c_cv,
ROUND(CAST(ABS((b01002_002pm/1.645)/CAST(NULLIF(b01002_002p,0) as numeric))*100 as numeric),1) AS b01002_002p_cv,
ROUND(CAST(ABS((e1.b01002_003m/1.645)/CAST(NULLIF(e1.b01002_003e,0) as numeric))*100 as numeric),1) AS b01002_003e1_cv,
ROUND(CAST(ABS((e2.b01002_003m/1.645)/CAST(NULLIF(e2.b01002_003e,0) as numeric))*100 as numeric),1) AS b01002_003e2_cv,
ROUND(CAST(ABS((b01002_003cm/1.645)/CAST(NULLIF(b01002_003c,0) as numeric))*100 as numeric),1) AS b01002_003c_cv,
ROUND(CAST(ABS((b01002_003pm/1.645)/CAST(NULLIF(b01002_003p,0) as numeric))*100 as numeric),1) AS b01002_003p_cv
FROM acs_b01002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b01002 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b01002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b02001_cvs;
    CREATE TABLE acs_b02001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b02001_001m/1.645)/CAST(NULLIF(e1.b02001_001e,0) as numeric))*100 as numeric),1) AS b02001_001e1_cv,
ROUND(CAST(ABS((e2.b02001_001m/1.645)/CAST(NULLIF(e2.b02001_001e,0) as numeric))*100 as numeric),1) AS b02001_001e2_cv,
ROUND(CAST(ABS((b02001_001cm/1.645)/CAST(NULLIF(b02001_001c,0) as numeric))*100 as numeric),1) AS b02001_001c_cv,
ROUND(CAST(ABS((b02001_001pm/1.645)/CAST(NULLIF(b02001_001p,0) as numeric))*100 as numeric),1) AS b02001_001p_cv,
ROUND(CAST(ABS((e1.b02001_002m/1.645)/CAST(NULLIF(e1.b02001_002e,0) as numeric))*100 as numeric),1) AS b02001_002e1_cv,
ROUND(CAST(ABS((e2.b02001_002m/1.645)/CAST(NULLIF(e2.b02001_002e,0) as numeric))*100 as numeric),1) AS b02001_002e2_cv,
ROUND(CAST(ABS((b02001_002cm/1.645)/CAST(NULLIF(b02001_002c,0) as numeric))*100 as numeric),1) AS b02001_002c_cv,
ROUND(CAST(ABS((b02001_002pm/1.645)/CAST(NULLIF(b02001_002p,0) as numeric))*100 as numeric),1) AS b02001_002p_cv,
ROUND(CAST(ABS((e1.b02001_003m/1.645)/CAST(NULLIF(e1.b02001_003e,0) as numeric))*100 as numeric),1) AS b02001_003e1_cv,
ROUND(CAST(ABS((e2.b02001_003m/1.645)/CAST(NULLIF(e2.b02001_003e,0) as numeric))*100 as numeric),1) AS b02001_003e2_cv,
ROUND(CAST(ABS((b02001_003cm/1.645)/CAST(NULLIF(b02001_003c,0) as numeric))*100 as numeric),1) AS b02001_003c_cv,
ROUND(CAST(ABS((b02001_003pm/1.645)/CAST(NULLIF(b02001_003p,0) as numeric))*100 as numeric),1) AS b02001_003p_cv,
ROUND(CAST(ABS((e1.b02001_004m/1.645)/CAST(NULLIF(e1.b02001_004e,0) as numeric))*100 as numeric),1) AS b02001_004e1_cv,
ROUND(CAST(ABS((e2.b02001_004m/1.645)/CAST(NULLIF(e2.b02001_004e,0) as numeric))*100 as numeric),1) AS b02001_004e2_cv,
ROUND(CAST(ABS((b02001_004cm/1.645)/CAST(NULLIF(b02001_004c,0) as numeric))*100 as numeric),1) AS b02001_004c_cv,
ROUND(CAST(ABS((b02001_004pm/1.645)/CAST(NULLIF(b02001_004p,0) as numeric))*100 as numeric),1) AS b02001_004p_cv,
ROUND(CAST(ABS((e1.b02001_005m/1.645)/CAST(NULLIF(e1.b02001_005e,0) as numeric))*100 as numeric),1) AS b02001_005e1_cv,
ROUND(CAST(ABS((e2.b02001_005m/1.645)/CAST(NULLIF(e2.b02001_005e,0) as numeric))*100 as numeric),1) AS b02001_005e2_cv,
ROUND(CAST(ABS((b02001_005cm/1.645)/CAST(NULLIF(b02001_005c,0) as numeric))*100 as numeric),1) AS b02001_005c_cv,
ROUND(CAST(ABS((b02001_005pm/1.645)/CAST(NULLIF(b02001_005p,0) as numeric))*100 as numeric),1) AS b02001_005p_cv,
ROUND(CAST(ABS((e1.b02001_006m/1.645)/CAST(NULLIF(e1.b02001_006e,0) as numeric))*100 as numeric),1) AS b02001_006e1_cv,
ROUND(CAST(ABS((e2.b02001_006m/1.645)/CAST(NULLIF(e2.b02001_006e,0) as numeric))*100 as numeric),1) AS b02001_006e2_cv,
ROUND(CAST(ABS((b02001_006cm/1.645)/CAST(NULLIF(b02001_006c,0) as numeric))*100 as numeric),1) AS b02001_006c_cv,
ROUND(CAST(ABS((b02001_006pm/1.645)/CAST(NULLIF(b02001_006p,0) as numeric))*100 as numeric),1) AS b02001_006p_cv,
ROUND(CAST(ABS((e1.b02001_007m/1.645)/CAST(NULLIF(e1.b02001_007e,0) as numeric))*100 as numeric),1) AS b02001_007e1_cv,
ROUND(CAST(ABS((e2.b02001_007m/1.645)/CAST(NULLIF(e2.b02001_007e,0) as numeric))*100 as numeric),1) AS b02001_007e2_cv,
ROUND(CAST(ABS((b02001_007cm/1.645)/CAST(NULLIF(b02001_007c,0) as numeric))*100 as numeric),1) AS b02001_007c_cv,
ROUND(CAST(ABS((b02001_007pm/1.645)/CAST(NULLIF(b02001_007p,0) as numeric))*100 as numeric),1) AS b02001_007p_cv,
ROUND(CAST(ABS((e1.b02001_008m/1.645)/CAST(NULLIF(e1.b02001_008e,0) as numeric))*100 as numeric),1) AS b02001_008e1_cv,
ROUND(CAST(ABS((e2.b02001_008m/1.645)/CAST(NULLIF(e2.b02001_008e,0) as numeric))*100 as numeric),1) AS b02001_008e2_cv,
ROUND(CAST(ABS((b02001_008cm/1.645)/CAST(NULLIF(b02001_008c,0) as numeric))*100 as numeric),1) AS b02001_008c_cv,
ROUND(CAST(ABS((b02001_008pm/1.645)/CAST(NULLIF(b02001_008p,0) as numeric))*100 as numeric),1) AS b02001_008p_cv,
ROUND(CAST(ABS((e1.b02001_009m/1.645)/CAST(NULLIF(e1.b02001_009e,0) as numeric))*100 as numeric),1) AS b02001_009e1_cv,
ROUND(CAST(ABS((e2.b02001_009m/1.645)/CAST(NULLIF(e2.b02001_009e,0) as numeric))*100 as numeric),1) AS b02001_009e2_cv,
ROUND(CAST(ABS((b02001_009cm/1.645)/CAST(NULLIF(b02001_009c,0) as numeric))*100 as numeric),1) AS b02001_009c_cv,
ROUND(CAST(ABS((b02001_009pm/1.645)/CAST(NULLIF(b02001_009p,0) as numeric))*100 as numeric),1) AS b02001_009p_cv,
ROUND(CAST(ABS((e1.b02001_010m/1.645)/CAST(NULLIF(e1.b02001_010e,0) as numeric))*100 as numeric),1) AS b02001_010e1_cv,
ROUND(CAST(ABS((e2.b02001_010m/1.645)/CAST(NULLIF(e2.b02001_010e,0) as numeric))*100 as numeric),1) AS b02001_010e2_cv,
ROUND(CAST(ABS((b02001_010cm/1.645)/CAST(NULLIF(b02001_010c,0) as numeric))*100 as numeric),1) AS b02001_010c_cv,
ROUND(CAST(ABS((b02001_010pm/1.645)/CAST(NULLIF(b02001_010p,0) as numeric))*100 as numeric),1) AS b02001_010p_cv
FROM acs_b02001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b02001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b02001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b03002_cvs;
    CREATE TABLE acs_b03002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b03002_001m/1.645)/CAST(NULLIF(e1.b03002_001e,0) as numeric))*100 as numeric),1) AS b03002_001e1_cv,
ROUND(CAST(ABS((e2.b03002_001m/1.645)/CAST(NULLIF(e2.b03002_001e,0) as numeric))*100 as numeric),1) AS b03002_001e2_cv,
ROUND(CAST(ABS((b03002_001cm/1.645)/CAST(NULLIF(b03002_001c,0) as numeric))*100 as numeric),1) AS b03002_001c_cv,
ROUND(CAST(ABS((b03002_001pm/1.645)/CAST(NULLIF(b03002_001p,0) as numeric))*100 as numeric),1) AS b03002_001p_cv,
ROUND(CAST(ABS((e1.b03002_002m/1.645)/CAST(NULLIF(e1.b03002_002e,0) as numeric))*100 as numeric),1) AS b03002_002e1_cv,
ROUND(CAST(ABS((e2.b03002_002m/1.645)/CAST(NULLIF(e2.b03002_002e,0) as numeric))*100 as numeric),1) AS b03002_002e2_cv,
ROUND(CAST(ABS((b03002_002cm/1.645)/CAST(NULLIF(b03002_002c,0) as numeric))*100 as numeric),1) AS b03002_002c_cv,
ROUND(CAST(ABS((b03002_002pm/1.645)/CAST(NULLIF(b03002_002p,0) as numeric))*100 as numeric),1) AS b03002_002p_cv,
ROUND(CAST(ABS((e1.b03002_003m/1.645)/CAST(NULLIF(e1.b03002_003e,0) as numeric))*100 as numeric),1) AS b03002_003e1_cv,
ROUND(CAST(ABS((e2.b03002_003m/1.645)/CAST(NULLIF(e2.b03002_003e,0) as numeric))*100 as numeric),1) AS b03002_003e2_cv,
ROUND(CAST(ABS((b03002_003cm/1.645)/CAST(NULLIF(b03002_003c,0) as numeric))*100 as numeric),1) AS b03002_003c_cv,
ROUND(CAST(ABS((b03002_003pm/1.645)/CAST(NULLIF(b03002_003p,0) as numeric))*100 as numeric),1) AS b03002_003p_cv,
ROUND(CAST(ABS((e1.b03002_004m/1.645)/CAST(NULLIF(e1.b03002_004e,0) as numeric))*100 as numeric),1) AS b03002_004e1_cv,
ROUND(CAST(ABS((e2.b03002_004m/1.645)/CAST(NULLIF(e2.b03002_004e,0) as numeric))*100 as numeric),1) AS b03002_004e2_cv,
ROUND(CAST(ABS((b03002_004cm/1.645)/CAST(NULLIF(b03002_004c,0) as numeric))*100 as numeric),1) AS b03002_004c_cv,
ROUND(CAST(ABS((b03002_004pm/1.645)/CAST(NULLIF(b03002_004p,0) as numeric))*100 as numeric),1) AS b03002_004p_cv,
ROUND(CAST(ABS((e1.b03002_005m/1.645)/CAST(NULLIF(e1.b03002_005e,0) as numeric))*100 as numeric),1) AS b03002_005e1_cv,
ROUND(CAST(ABS((e2.b03002_005m/1.645)/CAST(NULLIF(e2.b03002_005e,0) as numeric))*100 as numeric),1) AS b03002_005e2_cv,
ROUND(CAST(ABS((b03002_005cm/1.645)/CAST(NULLIF(b03002_005c,0) as numeric))*100 as numeric),1) AS b03002_005c_cv,
ROUND(CAST(ABS((b03002_005pm/1.645)/CAST(NULLIF(b03002_005p,0) as numeric))*100 as numeric),1) AS b03002_005p_cv,
ROUND(CAST(ABS((e1.b03002_006m/1.645)/CAST(NULLIF(e1.b03002_006e,0) as numeric))*100 as numeric),1) AS b03002_006e1_cv,
ROUND(CAST(ABS((e2.b03002_006m/1.645)/CAST(NULLIF(e2.b03002_006e,0) as numeric))*100 as numeric),1) AS b03002_006e2_cv,
ROUND(CAST(ABS((b03002_006cm/1.645)/CAST(NULLIF(b03002_006c,0) as numeric))*100 as numeric),1) AS b03002_006c_cv,
ROUND(CAST(ABS((b03002_006pm/1.645)/CAST(NULLIF(b03002_006p,0) as numeric))*100 as numeric),1) AS b03002_006p_cv,
ROUND(CAST(ABS((e1.b03002_007m/1.645)/CAST(NULLIF(e1.b03002_007e,0) as numeric))*100 as numeric),1) AS b03002_007e1_cv,
ROUND(CAST(ABS((e2.b03002_007m/1.645)/CAST(NULLIF(e2.b03002_007e,0) as numeric))*100 as numeric),1) AS b03002_007e2_cv,
ROUND(CAST(ABS((b03002_007cm/1.645)/CAST(NULLIF(b03002_007c,0) as numeric))*100 as numeric),1) AS b03002_007c_cv,
ROUND(CAST(ABS((b03002_007pm/1.645)/CAST(NULLIF(b03002_007p,0) as numeric))*100 as numeric),1) AS b03002_007p_cv,
ROUND(CAST(ABS((e1.b03002_008m/1.645)/CAST(NULLIF(e1.b03002_008e,0) as numeric))*100 as numeric),1) AS b03002_008e1_cv,
ROUND(CAST(ABS((e2.b03002_008m/1.645)/CAST(NULLIF(e2.b03002_008e,0) as numeric))*100 as numeric),1) AS b03002_008e2_cv,
ROUND(CAST(ABS((b03002_008cm/1.645)/CAST(NULLIF(b03002_008c,0) as numeric))*100 as numeric),1) AS b03002_008c_cv,
ROUND(CAST(ABS((b03002_008pm/1.645)/CAST(NULLIF(b03002_008p,0) as numeric))*100 as numeric),1) AS b03002_008p_cv,
ROUND(CAST(ABS((e1.b03002_009m/1.645)/CAST(NULLIF(e1.b03002_009e,0) as numeric))*100 as numeric),1) AS b03002_009e1_cv,
ROUND(CAST(ABS((e2.b03002_009m/1.645)/CAST(NULLIF(e2.b03002_009e,0) as numeric))*100 as numeric),1) AS b03002_009e2_cv,
ROUND(CAST(ABS((b03002_009cm/1.645)/CAST(NULLIF(b03002_009c,0) as numeric))*100 as numeric),1) AS b03002_009c_cv,
ROUND(CAST(ABS((b03002_009pm/1.645)/CAST(NULLIF(b03002_009p,0) as numeric))*100 as numeric),1) AS b03002_009p_cv,
ROUND(CAST(ABS((e1.b03002_010m/1.645)/CAST(NULLIF(e1.b03002_010e,0) as numeric))*100 as numeric),1) AS b03002_010e1_cv,
ROUND(CAST(ABS((e2.b03002_010m/1.645)/CAST(NULLIF(e2.b03002_010e,0) as numeric))*100 as numeric),1) AS b03002_010e2_cv,
ROUND(CAST(ABS((b03002_010cm/1.645)/CAST(NULLIF(b03002_010c,0) as numeric))*100 as numeric),1) AS b03002_010c_cv,
ROUND(CAST(ABS((b03002_010pm/1.645)/CAST(NULLIF(b03002_010p,0) as numeric))*100 as numeric),1) AS b03002_010p_cv,
ROUND(CAST(ABS((e1.b03002_011m/1.645)/CAST(NULLIF(e1.b03002_011e,0) as numeric))*100 as numeric),1) AS b03002_011e1_cv,
ROUND(CAST(ABS((e2.b03002_011m/1.645)/CAST(NULLIF(e2.b03002_011e,0) as numeric))*100 as numeric),1) AS b03002_011e2_cv,
ROUND(CAST(ABS((b03002_011cm/1.645)/CAST(NULLIF(b03002_011c,0) as numeric))*100 as numeric),1) AS b03002_011c_cv,
ROUND(CAST(ABS((b03002_011pm/1.645)/CAST(NULLIF(b03002_011p,0) as numeric))*100 as numeric),1) AS b03002_011p_cv,
ROUND(CAST(ABS((e1.b03002_012m/1.645)/CAST(NULLIF(e1.b03002_012e,0) as numeric))*100 as numeric),1) AS b03002_012e1_cv,
ROUND(CAST(ABS((e2.b03002_012m/1.645)/CAST(NULLIF(e2.b03002_012e,0) as numeric))*100 as numeric),1) AS b03002_012e2_cv,
ROUND(CAST(ABS((b03002_012cm/1.645)/CAST(NULLIF(b03002_012c,0) as numeric))*100 as numeric),1) AS b03002_012c_cv,
ROUND(CAST(ABS((b03002_012pm/1.645)/CAST(NULLIF(b03002_012p,0) as numeric))*100 as numeric),1) AS b03002_012p_cv,
ROUND(CAST(ABS((e1.b03002_013m/1.645)/CAST(NULLIF(e1.b03002_013e,0) as numeric))*100 as numeric),1) AS b03002_013e1_cv,
ROUND(CAST(ABS((e2.b03002_013m/1.645)/CAST(NULLIF(e2.b03002_013e,0) as numeric))*100 as numeric),1) AS b03002_013e2_cv,
ROUND(CAST(ABS((b03002_013cm/1.645)/CAST(NULLIF(b03002_013c,0) as numeric))*100 as numeric),1) AS b03002_013c_cv,
ROUND(CAST(ABS((b03002_013pm/1.645)/CAST(NULLIF(b03002_013p,0) as numeric))*100 as numeric),1) AS b03002_013p_cv,
ROUND(CAST(ABS((e1.b03002_014m/1.645)/CAST(NULLIF(e1.b03002_014e,0) as numeric))*100 as numeric),1) AS b03002_014e1_cv,
ROUND(CAST(ABS((e2.b03002_014m/1.645)/CAST(NULLIF(e2.b03002_014e,0) as numeric))*100 as numeric),1) AS b03002_014e2_cv,
ROUND(CAST(ABS((b03002_014cm/1.645)/CAST(NULLIF(b03002_014c,0) as numeric))*100 as numeric),1) AS b03002_014c_cv,
ROUND(CAST(ABS((b03002_014pm/1.645)/CAST(NULLIF(b03002_014p,0) as numeric))*100 as numeric),1) AS b03002_014p_cv,
ROUND(CAST(ABS((e1.b03002_015m/1.645)/CAST(NULLIF(e1.b03002_015e,0) as numeric))*100 as numeric),1) AS b03002_015e1_cv,
ROUND(CAST(ABS((e2.b03002_015m/1.645)/CAST(NULLIF(e2.b03002_015e,0) as numeric))*100 as numeric),1) AS b03002_015e2_cv,
ROUND(CAST(ABS((b03002_015cm/1.645)/CAST(NULLIF(b03002_015c,0) as numeric))*100 as numeric),1) AS b03002_015c_cv,
ROUND(CAST(ABS((b03002_015pm/1.645)/CAST(NULLIF(b03002_015p,0) as numeric))*100 as numeric),1) AS b03002_015p_cv,
ROUND(CAST(ABS((e1.b03002_016m/1.645)/CAST(NULLIF(e1.b03002_016e,0) as numeric))*100 as numeric),1) AS b03002_016e1_cv,
ROUND(CAST(ABS((e2.b03002_016m/1.645)/CAST(NULLIF(e2.b03002_016e,0) as numeric))*100 as numeric),1) AS b03002_016e2_cv,
ROUND(CAST(ABS((b03002_016cm/1.645)/CAST(NULLIF(b03002_016c,0) as numeric))*100 as numeric),1) AS b03002_016c_cv,
ROUND(CAST(ABS((b03002_016pm/1.645)/CAST(NULLIF(b03002_016p,0) as numeric))*100 as numeric),1) AS b03002_016p_cv,
ROUND(CAST(ABS((e1.b03002_017m/1.645)/CAST(NULLIF(e1.b03002_017e,0) as numeric))*100 as numeric),1) AS b03002_017e1_cv,
ROUND(CAST(ABS((e2.b03002_017m/1.645)/CAST(NULLIF(e2.b03002_017e,0) as numeric))*100 as numeric),1) AS b03002_017e2_cv,
ROUND(CAST(ABS((b03002_017cm/1.645)/CAST(NULLIF(b03002_017c,0) as numeric))*100 as numeric),1) AS b03002_017c_cv,
ROUND(CAST(ABS((b03002_017pm/1.645)/CAST(NULLIF(b03002_017p,0) as numeric))*100 as numeric),1) AS b03002_017p_cv,
ROUND(CAST(ABS((e1.b03002_018m/1.645)/CAST(NULLIF(e1.b03002_018e,0) as numeric))*100 as numeric),1) AS b03002_018e1_cv,
ROUND(CAST(ABS((e2.b03002_018m/1.645)/CAST(NULLIF(e2.b03002_018e,0) as numeric))*100 as numeric),1) AS b03002_018e2_cv,
ROUND(CAST(ABS((b03002_018cm/1.645)/CAST(NULLIF(b03002_018c,0) as numeric))*100 as numeric),1) AS b03002_018c_cv,
ROUND(CAST(ABS((b03002_018pm/1.645)/CAST(NULLIF(b03002_018p,0) as numeric))*100 as numeric),1) AS b03002_018p_cv,
ROUND(CAST(ABS((e1.b03002_019m/1.645)/CAST(NULLIF(e1.b03002_019e,0) as numeric))*100 as numeric),1) AS b03002_019e1_cv,
ROUND(CAST(ABS((e2.b03002_019m/1.645)/CAST(NULLIF(e2.b03002_019e,0) as numeric))*100 as numeric),1) AS b03002_019e2_cv,
ROUND(CAST(ABS((b03002_019cm/1.645)/CAST(NULLIF(b03002_019c,0) as numeric))*100 as numeric),1) AS b03002_019c_cv,
ROUND(CAST(ABS((b03002_019pm/1.645)/CAST(NULLIF(b03002_019p,0) as numeric))*100 as numeric),1) AS b03002_019p_cv,
ROUND(CAST(ABS((e1.b03002_020m/1.645)/CAST(NULLIF(e1.b03002_020e,0) as numeric))*100 as numeric),1) AS b03002_020e1_cv,
ROUND(CAST(ABS((e2.b03002_020m/1.645)/CAST(NULLIF(e2.b03002_020e,0) as numeric))*100 as numeric),1) AS b03002_020e2_cv,
ROUND(CAST(ABS((b03002_020cm/1.645)/CAST(NULLIF(b03002_020c,0) as numeric))*100 as numeric),1) AS b03002_020c_cv,
ROUND(CAST(ABS((b03002_020pm/1.645)/CAST(NULLIF(b03002_020p,0) as numeric))*100 as numeric),1) AS b03002_020p_cv,
ROUND(CAST(ABS((e1.b03002_021m/1.645)/CAST(NULLIF(e1.b03002_021e,0) as numeric))*100 as numeric),1) AS b03002_021e1_cv,
ROUND(CAST(ABS((e2.b03002_021m/1.645)/CAST(NULLIF(e2.b03002_021e,0) as numeric))*100 as numeric),1) AS b03002_021e2_cv,
ROUND(CAST(ABS((b03002_021cm/1.645)/CAST(NULLIF(b03002_021c,0) as numeric))*100 as numeric),1) AS b03002_021c_cv,
ROUND(CAST(ABS((b03002_021pm/1.645)/CAST(NULLIF(b03002_021p,0) as numeric))*100 as numeric),1) AS b03002_021p_cv
FROM acs_b03002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b03002 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b03002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b05002_cvs;
    CREATE TABLE acs_b05002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b05002_001m/1.645)/CAST(NULLIF(e1.b05002_001e,0) as numeric))*100 as numeric),1) AS b05002_001e1_cv,
ROUND(CAST(ABS((e2.b05002_001m/1.645)/CAST(NULLIF(e2.b05002_001e,0) as numeric))*100 as numeric),1) AS b05002_001e2_cv,
ROUND(CAST(ABS((b05002_001cm/1.645)/CAST(NULLIF(b05002_001c,0) as numeric))*100 as numeric),1) AS b05002_001c_cv,
ROUND(CAST(ABS((b05002_001pm/1.645)/CAST(NULLIF(b05002_001p,0) as numeric))*100 as numeric),1) AS b05002_001p_cv,
ROUND(CAST(ABS((e1.b05002_002m/1.645)/CAST(NULLIF(e1.b05002_002e,0) as numeric))*100 as numeric),1) AS b05002_002e1_cv,
ROUND(CAST(ABS((e2.b05002_002m/1.645)/CAST(NULLIF(e2.b05002_002e,0) as numeric))*100 as numeric),1) AS b05002_002e2_cv,
ROUND(CAST(ABS((b05002_002cm/1.645)/CAST(NULLIF(b05002_002c,0) as numeric))*100 as numeric),1) AS b05002_002c_cv,
ROUND(CAST(ABS((b05002_002pm/1.645)/CAST(NULLIF(b05002_002p,0) as numeric))*100 as numeric),1) AS b05002_002p_cv,
ROUND(CAST(ABS((e1.b05002_003m/1.645)/CAST(NULLIF(e1.b05002_003e,0) as numeric))*100 as numeric),1) AS b05002_003e1_cv,
ROUND(CAST(ABS((e2.b05002_003m/1.645)/CAST(NULLIF(e2.b05002_003e,0) as numeric))*100 as numeric),1) AS b05002_003e2_cv,
ROUND(CAST(ABS((b05002_003cm/1.645)/CAST(NULLIF(b05002_003c,0) as numeric))*100 as numeric),1) AS b05002_003c_cv,
ROUND(CAST(ABS((b05002_003pm/1.645)/CAST(NULLIF(b05002_003p,0) as numeric))*100 as numeric),1) AS b05002_003p_cv,
ROUND(CAST(ABS((e1.b05002_004m/1.645)/CAST(NULLIF(e1.b05002_004e,0) as numeric))*100 as numeric),1) AS b05002_004e1_cv,
ROUND(CAST(ABS((e2.b05002_004m/1.645)/CAST(NULLIF(e2.b05002_004e,0) as numeric))*100 as numeric),1) AS b05002_004e2_cv,
ROUND(CAST(ABS((b05002_004cm/1.645)/CAST(NULLIF(b05002_004c,0) as numeric))*100 as numeric),1) AS b05002_004c_cv,
ROUND(CAST(ABS((b05002_004pm/1.645)/CAST(NULLIF(b05002_004p,0) as numeric))*100 as numeric),1) AS b05002_004p_cv,
ROUND(CAST(ABS((e1.b05002_005m/1.645)/CAST(NULLIF(e1.b05002_005e,0) as numeric))*100 as numeric),1) AS b05002_005e1_cv,
ROUND(CAST(ABS((e2.b05002_005m/1.645)/CAST(NULLIF(e2.b05002_005e,0) as numeric))*100 as numeric),1) AS b05002_005e2_cv,
ROUND(CAST(ABS((b05002_005cm/1.645)/CAST(NULLIF(b05002_005c,0) as numeric))*100 as numeric),1) AS b05002_005c_cv,
ROUND(CAST(ABS((b05002_005pm/1.645)/CAST(NULLIF(b05002_005p,0) as numeric))*100 as numeric),1) AS b05002_005p_cv,
ROUND(CAST(ABS((e1.b05002_006m/1.645)/CAST(NULLIF(e1.b05002_006e,0) as numeric))*100 as numeric),1) AS b05002_006e1_cv,
ROUND(CAST(ABS((e2.b05002_006m/1.645)/CAST(NULLIF(e2.b05002_006e,0) as numeric))*100 as numeric),1) AS b05002_006e2_cv,
ROUND(CAST(ABS((b05002_006cm/1.645)/CAST(NULLIF(b05002_006c,0) as numeric))*100 as numeric),1) AS b05002_006c_cv,
ROUND(CAST(ABS((b05002_006pm/1.645)/CAST(NULLIF(b05002_006p,0) as numeric))*100 as numeric),1) AS b05002_006p_cv,
ROUND(CAST(ABS((e1.b05002_007m/1.645)/CAST(NULLIF(e1.b05002_007e,0) as numeric))*100 as numeric),1) AS b05002_007e1_cv,
ROUND(CAST(ABS((e2.b05002_007m/1.645)/CAST(NULLIF(e2.b05002_007e,0) as numeric))*100 as numeric),1) AS b05002_007e2_cv,
ROUND(CAST(ABS((b05002_007cm/1.645)/CAST(NULLIF(b05002_007c,0) as numeric))*100 as numeric),1) AS b05002_007c_cv,
ROUND(CAST(ABS((b05002_007pm/1.645)/CAST(NULLIF(b05002_007p,0) as numeric))*100 as numeric),1) AS b05002_007p_cv,
ROUND(CAST(ABS((e1.b05002_008m/1.645)/CAST(NULLIF(e1.b05002_008e,0) as numeric))*100 as numeric),1) AS b05002_008e1_cv,
ROUND(CAST(ABS((e2.b05002_008m/1.645)/CAST(NULLIF(e2.b05002_008e,0) as numeric))*100 as numeric),1) AS b05002_008e2_cv,
ROUND(CAST(ABS((b05002_008cm/1.645)/CAST(NULLIF(b05002_008c,0) as numeric))*100 as numeric),1) AS b05002_008c_cv,
ROUND(CAST(ABS((b05002_008pm/1.645)/CAST(NULLIF(b05002_008p,0) as numeric))*100 as numeric),1) AS b05002_008p_cv,
ROUND(CAST(ABS((e1.b05002_009m/1.645)/CAST(NULLIF(e1.b05002_009e,0) as numeric))*100 as numeric),1) AS b05002_009e1_cv,
ROUND(CAST(ABS((e2.b05002_009m/1.645)/CAST(NULLIF(e2.b05002_009e,0) as numeric))*100 as numeric),1) AS b05002_009e2_cv,
ROUND(CAST(ABS((b05002_009cm/1.645)/CAST(NULLIF(b05002_009c,0) as numeric))*100 as numeric),1) AS b05002_009c_cv,
ROUND(CAST(ABS((b05002_009pm/1.645)/CAST(NULLIF(b05002_009p,0) as numeric))*100 as numeric),1) AS b05002_009p_cv,
ROUND(CAST(ABS((e1.b05002_010m/1.645)/CAST(NULLIF(e1.b05002_010e,0) as numeric))*100 as numeric),1) AS b05002_010e1_cv,
ROUND(CAST(ABS((e2.b05002_010m/1.645)/CAST(NULLIF(e2.b05002_010e,0) as numeric))*100 as numeric),1) AS b05002_010e2_cv,
ROUND(CAST(ABS((b05002_010cm/1.645)/CAST(NULLIF(b05002_010c,0) as numeric))*100 as numeric),1) AS b05002_010c_cv,
ROUND(CAST(ABS((b05002_010pm/1.645)/CAST(NULLIF(b05002_010p,0) as numeric))*100 as numeric),1) AS b05002_010p_cv,
ROUND(CAST(ABS((e1.b05002_011m/1.645)/CAST(NULLIF(e1.b05002_011e,0) as numeric))*100 as numeric),1) AS b05002_011e1_cv,
ROUND(CAST(ABS((e2.b05002_011m/1.645)/CAST(NULLIF(e2.b05002_011e,0) as numeric))*100 as numeric),1) AS b05002_011e2_cv,
ROUND(CAST(ABS((b05002_011cm/1.645)/CAST(NULLIF(b05002_011c,0) as numeric))*100 as numeric),1) AS b05002_011c_cv,
ROUND(CAST(ABS((b05002_011pm/1.645)/CAST(NULLIF(b05002_011p,0) as numeric))*100 as numeric),1) AS b05002_011p_cv,
ROUND(CAST(ABS((e1.b05002_012m/1.645)/CAST(NULLIF(e1.b05002_012e,0) as numeric))*100 as numeric),1) AS b05002_012e1_cv,
ROUND(CAST(ABS((e2.b05002_012m/1.645)/CAST(NULLIF(e2.b05002_012e,0) as numeric))*100 as numeric),1) AS b05002_012e2_cv,
ROUND(CAST(ABS((b05002_012cm/1.645)/CAST(NULLIF(b05002_012c,0) as numeric))*100 as numeric),1) AS b05002_012c_cv,
ROUND(CAST(ABS((b05002_012pm/1.645)/CAST(NULLIF(b05002_012p,0) as numeric))*100 as numeric),1) AS b05002_012p_cv,
ROUND(CAST(ABS((e1.b05002_013m/1.645)/CAST(NULLIF(e1.b05002_013e,0) as numeric))*100 as numeric),1) AS b05002_013e1_cv,
ROUND(CAST(ABS((e2.b05002_013m/1.645)/CAST(NULLIF(e2.b05002_013e,0) as numeric))*100 as numeric),1) AS b05002_013e2_cv,
ROUND(CAST(ABS((b05002_013cm/1.645)/CAST(NULLIF(b05002_013c,0) as numeric))*100 as numeric),1) AS b05002_013c_cv,
ROUND(CAST(ABS((b05002_013pm/1.645)/CAST(NULLIF(b05002_013p,0) as numeric))*100 as numeric),1) AS b05002_013p_cv,
ROUND(CAST(ABS((e1.b05002_014m/1.645)/CAST(NULLIF(e1.b05002_014e,0) as numeric))*100 as numeric),1) AS b05002_014e1_cv,
ROUND(CAST(ABS((e2.b05002_014m/1.645)/CAST(NULLIF(e2.b05002_014e,0) as numeric))*100 as numeric),1) AS b05002_014e2_cv,
ROUND(CAST(ABS((b05002_014cm/1.645)/CAST(NULLIF(b05002_014c,0) as numeric))*100 as numeric),1) AS b05002_014c_cv,
ROUND(CAST(ABS((b05002_014pm/1.645)/CAST(NULLIF(b05002_014p,0) as numeric))*100 as numeric),1) AS b05002_014p_cv,
ROUND(CAST(ABS((e1.b05002_021m/1.645)/CAST(NULLIF(e1.b05002_021e,0) as numeric))*100 as numeric),1) AS b05002_021e1_cv,
ROUND(CAST(ABS((e2.b05002_021m/1.645)/CAST(NULLIF(e2.b05002_021e,0) as numeric))*100 as numeric),1) AS b05002_021e2_cv,
ROUND(CAST(ABS((b05002_021cm/1.645)/CAST(NULLIF(b05002_021c,0) as numeric))*100 as numeric),1) AS b05002_021c_cv,
ROUND(CAST(ABS((b05002_021pm/1.645)/CAST(NULLIF(b05002_021p,0) as numeric))*100 as numeric),1) AS b05002_021p_cv
FROM acs_b05002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b05002_mod e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b05002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b07204_cvs;
    CREATE TABLE acs_b07204_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b07204_001m/1.645)/CAST(NULLIF(e1.b07204_001e,0) as numeric))*100 as numeric),1) AS b07204_001e1_cv,
ROUND(CAST(ABS((e2.b07204_001m/1.645)/CAST(NULLIF(e2.b07204_001e,0) as numeric))*100 as numeric),1) AS b07204_001e2_cv,
ROUND(CAST(ABS((b07204_001cm/1.645)/CAST(NULLIF(b07204_001c,0) as numeric))*100 as numeric),1) AS b07204_001c_cv,
ROUND(CAST(ABS((b07204_001pm/1.645)/CAST(NULLIF(b07204_001p,0) as numeric))*100 as numeric),1) AS b07204_001p_cv,
ROUND(CAST(ABS((e1.b07204_002m/1.645)/CAST(NULLIF(e1.b07204_002e,0) as numeric))*100 as numeric),1) AS b07204_002e1_cv,
ROUND(CAST(ABS((e2.b07204_002m/1.645)/CAST(NULLIF(e2.b07204_002e,0) as numeric))*100 as numeric),1) AS b07204_002e2_cv,
ROUND(CAST(ABS((b07204_002cm/1.645)/CAST(NULLIF(b07204_002c,0) as numeric))*100 as numeric),1) AS b07204_002c_cv,
ROUND(CAST(ABS((b07204_002pm/1.645)/CAST(NULLIF(b07204_002p,0) as numeric))*100 as numeric),1) AS b07204_002p_cv,
ROUND(CAST(ABS((e1.b07204_003m/1.645)/CAST(NULLIF(e1.b07204_003e,0) as numeric))*100 as numeric),1) AS b07204_003e1_cv,
ROUND(CAST(ABS((e2.b07204_003m/1.645)/CAST(NULLIF(e2.b07204_003e,0) as numeric))*100 as numeric),1) AS b07204_003e2_cv,
ROUND(CAST(ABS((b07204_003cm/1.645)/CAST(NULLIF(b07204_003c,0) as numeric))*100 as numeric),1) AS b07204_003c_cv,
ROUND(CAST(ABS((b07204_003pm/1.645)/CAST(NULLIF(b07204_003p,0) as numeric))*100 as numeric),1) AS b07204_003p_cv,
ROUND(CAST(ABS((e1.b07204_004m/1.645)/CAST(NULLIF(e1.b07204_004e,0) as numeric))*100 as numeric),1) AS b07204_004e1_cv,
ROUND(CAST(ABS((e2.b07204_004m/1.645)/CAST(NULLIF(e2.b07204_004e,0) as numeric))*100 as numeric),1) AS b07204_004e2_cv,
ROUND(CAST(ABS((b07204_004cm/1.645)/CAST(NULLIF(b07204_004c,0) as numeric))*100 as numeric),1) AS b07204_004c_cv,
ROUND(CAST(ABS((b07204_004pm/1.645)/CAST(NULLIF(b07204_004p,0) as numeric))*100 as numeric),1) AS b07204_004p_cv,
ROUND(CAST(ABS((e1.b07204_005m/1.645)/CAST(NULLIF(e1.b07204_005e,0) as numeric))*100 as numeric),1) AS b07204_005e1_cv,
ROUND(CAST(ABS((e2.b07204_005m/1.645)/CAST(NULLIF(e2.b07204_005e,0) as numeric))*100 as numeric),1) AS b07204_005e2_cv,
ROUND(CAST(ABS((b07204_005cm/1.645)/CAST(NULLIF(b07204_005c,0) as numeric))*100 as numeric),1) AS b07204_005c_cv,
ROUND(CAST(ABS((b07204_005pm/1.645)/CAST(NULLIF(b07204_005p,0) as numeric))*100 as numeric),1) AS b07204_005p_cv,
ROUND(CAST(ABS((e1.b07204_006m/1.645)/CAST(NULLIF(e1.b07204_006e,0) as numeric))*100 as numeric),1) AS b07204_006e1_cv,
ROUND(CAST(ABS((e2.b07204_006m/1.645)/CAST(NULLIF(e2.b07204_006e,0) as numeric))*100 as numeric),1) AS b07204_006e2_cv,
ROUND(CAST(ABS((b07204_006cm/1.645)/CAST(NULLIF(b07204_006c,0) as numeric))*100 as numeric),1) AS b07204_006c_cv,
ROUND(CAST(ABS((b07204_006pm/1.645)/CAST(NULLIF(b07204_006p,0) as numeric))*100 as numeric),1) AS b07204_006p_cv,
ROUND(CAST(ABS((e1.b07204_007m/1.645)/CAST(NULLIF(e1.b07204_007e,0) as numeric))*100 as numeric),1) AS b07204_007e1_cv,
ROUND(CAST(ABS((e2.b07204_007m/1.645)/CAST(NULLIF(e2.b07204_007e,0) as numeric))*100 as numeric),1) AS b07204_007e2_cv,
ROUND(CAST(ABS((b07204_007cm/1.645)/CAST(NULLIF(b07204_007c,0) as numeric))*100 as numeric),1) AS b07204_007c_cv,
ROUND(CAST(ABS((b07204_007pm/1.645)/CAST(NULLIF(b07204_007p,0) as numeric))*100 as numeric),1) AS b07204_007p_cv,
ROUND(CAST(ABS((e1.b07204_008m/1.645)/CAST(NULLIF(e1.b07204_008e,0) as numeric))*100 as numeric),1) AS b07204_008e1_cv,
ROUND(CAST(ABS((e2.b07204_008m/1.645)/CAST(NULLIF(e2.b07204_008e,0) as numeric))*100 as numeric),1) AS b07204_008e2_cv,
ROUND(CAST(ABS((b07204_008cm/1.645)/CAST(NULLIF(b07204_008c,0) as numeric))*100 as numeric),1) AS b07204_008c_cv,
ROUND(CAST(ABS((b07204_008pm/1.645)/CAST(NULLIF(b07204_008p,0) as numeric))*100 as numeric),1) AS b07204_008p_cv,
ROUND(CAST(ABS((e1.b07204_009m/1.645)/CAST(NULLIF(e1.b07204_009e,0) as numeric))*100 as numeric),1) AS b07204_009e1_cv,
ROUND(CAST(ABS((e2.b07204_009m/1.645)/CAST(NULLIF(e2.b07204_009e,0) as numeric))*100 as numeric),1) AS b07204_009e2_cv,
ROUND(CAST(ABS((b07204_009cm/1.645)/CAST(NULLIF(b07204_009c,0) as numeric))*100 as numeric),1) AS b07204_009c_cv,
ROUND(CAST(ABS((b07204_009pm/1.645)/CAST(NULLIF(b07204_009p,0) as numeric))*100 as numeric),1) AS b07204_009p_cv,
ROUND(CAST(ABS((e1.b07204_010m/1.645)/CAST(NULLIF(e1.b07204_010e,0) as numeric))*100 as numeric),1) AS b07204_010e1_cv,
ROUND(CAST(ABS((e2.b07204_010m/1.645)/CAST(NULLIF(e2.b07204_010e,0) as numeric))*100 as numeric),1) AS b07204_010e2_cv,
ROUND(CAST(ABS((b07204_010cm/1.645)/CAST(NULLIF(b07204_010c,0) as numeric))*100 as numeric),1) AS b07204_010c_cv,
ROUND(CAST(ABS((b07204_010pm/1.645)/CAST(NULLIF(b07204_010p,0) as numeric))*100 as numeric),1) AS b07204_010p_cv,
ROUND(CAST(ABS((e1.b07204_011m/1.645)/CAST(NULLIF(e1.b07204_011e,0) as numeric))*100 as numeric),1) AS b07204_011e1_cv,
ROUND(CAST(ABS((e2.b07204_011m/1.645)/CAST(NULLIF(e2.b07204_011e,0) as numeric))*100 as numeric),1) AS b07204_011e2_cv,
ROUND(CAST(ABS((b07204_011cm/1.645)/CAST(NULLIF(b07204_011c,0) as numeric))*100 as numeric),1) AS b07204_011c_cv,
ROUND(CAST(ABS((b07204_011pm/1.645)/CAST(NULLIF(b07204_011p,0) as numeric))*100 as numeric),1) AS b07204_011p_cv,
ROUND(CAST(ABS((e1.b07204_012m/1.645)/CAST(NULLIF(e1.b07204_012e,0) as numeric))*100 as numeric),1) AS b07204_012e1_cv,
ROUND(CAST(ABS((e2.b07204_012m/1.645)/CAST(NULLIF(e2.b07204_012e,0) as numeric))*100 as numeric),1) AS b07204_012e2_cv,
ROUND(CAST(ABS((b07204_012cm/1.645)/CAST(NULLIF(b07204_012c,0) as numeric))*100 as numeric),1) AS b07204_012c_cv,
ROUND(CAST(ABS((b07204_012pm/1.645)/CAST(NULLIF(b07204_012p,0) as numeric))*100 as numeric),1) AS b07204_012p_cv,
ROUND(CAST(ABS((e1.b07204_013m/1.645)/CAST(NULLIF(e1.b07204_013e,0) as numeric))*100 as numeric),1) AS b07204_013e1_cv,
ROUND(CAST(ABS((e2.b07204_013m/1.645)/CAST(NULLIF(e2.b07204_013e,0) as numeric))*100 as numeric),1) AS b07204_013e2_cv,
ROUND(CAST(ABS((b07204_013cm/1.645)/CAST(NULLIF(b07204_013c,0) as numeric))*100 as numeric),1) AS b07204_013c_cv,
ROUND(CAST(ABS((b07204_013pm/1.645)/CAST(NULLIF(b07204_013p,0) as numeric))*100 as numeric),1) AS b07204_013p_cv,
ROUND(CAST(ABS((e1.b07204_014m/1.645)/CAST(NULLIF(e1.b07204_014e,0) as numeric))*100 as numeric),1) AS b07204_014e1_cv,
ROUND(CAST(ABS((e2.b07204_014m/1.645)/CAST(NULLIF(e2.b07204_014e,0) as numeric))*100 as numeric),1) AS b07204_014e2_cv,
ROUND(CAST(ABS((b07204_014cm/1.645)/CAST(NULLIF(b07204_014c,0) as numeric))*100 as numeric),1) AS b07204_014c_cv,
ROUND(CAST(ABS((b07204_014pm/1.645)/CAST(NULLIF(b07204_014p,0) as numeric))*100 as numeric),1) AS b07204_014p_cv,
ROUND(CAST(ABS((e1.b07204_015m/1.645)/CAST(NULLIF(e1.b07204_015e,0) as numeric))*100 as numeric),1) AS b07204_015e1_cv,
ROUND(CAST(ABS((e2.b07204_015m/1.645)/CAST(NULLIF(e2.b07204_015e,0) as numeric))*100 as numeric),1) AS b07204_015e2_cv,
ROUND(CAST(ABS((b07204_015cm/1.645)/CAST(NULLIF(b07204_015c,0) as numeric))*100 as numeric),1) AS b07204_015c_cv,
ROUND(CAST(ABS((b07204_015pm/1.645)/CAST(NULLIF(b07204_015p,0) as numeric))*100 as numeric),1) AS b07204_015p_cv,
ROUND(CAST(ABS((e1.b07204_016m/1.645)/CAST(NULLIF(e1.b07204_016e,0) as numeric))*100 as numeric),1) AS b07204_016e1_cv,
ROUND(CAST(ABS((e2.b07204_016m/1.645)/CAST(NULLIF(e2.b07204_016e,0) as numeric))*100 as numeric),1) AS b07204_016e2_cv,
ROUND(CAST(ABS((b07204_016cm/1.645)/CAST(NULLIF(b07204_016c,0) as numeric))*100 as numeric),1) AS b07204_016c_cv,
ROUND(CAST(ABS((b07204_016pm/1.645)/CAST(NULLIF(b07204_016p,0) as numeric))*100 as numeric),1) AS b07204_016p_cv,
ROUND(CAST(ABS((e1.b07204_017m/1.645)/CAST(NULLIF(e1.b07204_017e,0) as numeric))*100 as numeric),1) AS b07204_017e1_cv,
ROUND(CAST(ABS((e2.b07204_017m/1.645)/CAST(NULLIF(e2.b07204_017e,0) as numeric))*100 as numeric),1) AS b07204_017e2_cv,
ROUND(CAST(ABS((b07204_017cm/1.645)/CAST(NULLIF(b07204_017c,0) as numeric))*100 as numeric),1) AS b07204_017c_cv,
ROUND(CAST(ABS((b07204_017pm/1.645)/CAST(NULLIF(b07204_017p,0) as numeric))*100 as numeric),1) AS b07204_017p_cv,
ROUND(CAST(ABS((e1.b07204_018m/1.645)/CAST(NULLIF(e1.b07204_018e,0) as numeric))*100 as numeric),1) AS b07204_018e1_cv,
ROUND(CAST(ABS((e2.b07204_018m/1.645)/CAST(NULLIF(e2.b07204_018e,0) as numeric))*100 as numeric),1) AS b07204_018e2_cv,
ROUND(CAST(ABS((b07204_018cm/1.645)/CAST(NULLIF(b07204_018c,0) as numeric))*100 as numeric),1) AS b07204_018c_cv,
ROUND(CAST(ABS((b07204_018pm/1.645)/CAST(NULLIF(b07204_018p,0) as numeric))*100 as numeric),1) AS b07204_018p_cv,
ROUND(CAST(ABS((e1.b07204_019m/1.645)/CAST(NULLIF(e1.b07204_019e,0) as numeric))*100 as numeric),1) AS b07204_019e1_cv,
ROUND(CAST(ABS((e2.b07204_019m/1.645)/CAST(NULLIF(e2.b07204_019e,0) as numeric))*100 as numeric),1) AS b07204_019e2_cv,
ROUND(CAST(ABS((b07204_019cm/1.645)/CAST(NULLIF(b07204_019c,0) as numeric))*100 as numeric),1) AS b07204_019c_cv,
ROUND(CAST(ABS((b07204_019pm/1.645)/CAST(NULLIF(b07204_019p,0) as numeric))*100 as numeric),1) AS b07204_019p_cv
FROM acs_b07204_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b07204 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b07204 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b08006_cvs;
    CREATE TABLE acs_b08006_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b08006_001m/1.645)/CAST(NULLIF(e1.b08006_001e,0) as numeric))*100 as numeric),1) AS b08006_001e1_cv,
ROUND(CAST(ABS((e2.b08006_001m/1.645)/CAST(NULLIF(e2.b08006_001e,0) as numeric))*100 as numeric),1) AS b08006_001e2_cv,
ROUND(CAST(ABS((b08006_001cm/1.645)/CAST(NULLIF(b08006_001c,0) as numeric))*100 as numeric),1) AS b08006_001c_cv,
ROUND(CAST(ABS((b08006_001pm/1.645)/CAST(NULLIF(b08006_001p,0) as numeric))*100 as numeric),1) AS b08006_001p_cv,
ROUND(CAST(ABS((e1.b08006_002m/1.645)/CAST(NULLIF(e1.b08006_002e,0) as numeric))*100 as numeric),1) AS b08006_002e1_cv,
ROUND(CAST(ABS((e2.b08006_002m/1.645)/CAST(NULLIF(e2.b08006_002e,0) as numeric))*100 as numeric),1) AS b08006_002e2_cv,
ROUND(CAST(ABS((b08006_002cm/1.645)/CAST(NULLIF(b08006_002c,0) as numeric))*100 as numeric),1) AS b08006_002c_cv,
ROUND(CAST(ABS((b08006_002pm/1.645)/CAST(NULLIF(b08006_002p,0) as numeric))*100 as numeric),1) AS b08006_002p_cv,
ROUND(CAST(ABS((e1.b08006_003m/1.645)/CAST(NULLIF(e1.b08006_003e,0) as numeric))*100 as numeric),1) AS b08006_003e1_cv,
ROUND(CAST(ABS((e2.b08006_003m/1.645)/CAST(NULLIF(e2.b08006_003e,0) as numeric))*100 as numeric),1) AS b08006_003e2_cv,
ROUND(CAST(ABS((b08006_003cm/1.645)/CAST(NULLIF(b08006_003c,0) as numeric))*100 as numeric),1) AS b08006_003c_cv,
ROUND(CAST(ABS((b08006_003pm/1.645)/CAST(NULLIF(b08006_003p,0) as numeric))*100 as numeric),1) AS b08006_003p_cv,
ROUND(CAST(ABS((e1.b08006_004m/1.645)/CAST(NULLIF(e1.b08006_004e,0) as numeric))*100 as numeric),1) AS b08006_004e1_cv,
ROUND(CAST(ABS((e2.b08006_004m/1.645)/CAST(NULLIF(e2.b08006_004e,0) as numeric))*100 as numeric),1) AS b08006_004e2_cv,
ROUND(CAST(ABS((b08006_004cm/1.645)/CAST(NULLIF(b08006_004c,0) as numeric))*100 as numeric),1) AS b08006_004c_cv,
ROUND(CAST(ABS((b08006_004pm/1.645)/CAST(NULLIF(b08006_004p,0) as numeric))*100 as numeric),1) AS b08006_004p_cv,
ROUND(CAST(ABS((e1.b08006_005m/1.645)/CAST(NULLIF(e1.b08006_005e,0) as numeric))*100 as numeric),1) AS b08006_005e1_cv,
ROUND(CAST(ABS((e2.b08006_005m/1.645)/CAST(NULLIF(e2.b08006_005e,0) as numeric))*100 as numeric),1) AS b08006_005e2_cv,
ROUND(CAST(ABS((b08006_005cm/1.645)/CAST(NULLIF(b08006_005c,0) as numeric))*100 as numeric),1) AS b08006_005c_cv,
ROUND(CAST(ABS((b08006_005pm/1.645)/CAST(NULLIF(b08006_005p,0) as numeric))*100 as numeric),1) AS b08006_005p_cv,
ROUND(CAST(ABS((e1.b08006_006m/1.645)/CAST(NULLIF(e1.b08006_006e,0) as numeric))*100 as numeric),1) AS b08006_006e1_cv,
ROUND(CAST(ABS((e2.b08006_006m/1.645)/CAST(NULLIF(e2.b08006_006e,0) as numeric))*100 as numeric),1) AS b08006_006e2_cv,
ROUND(CAST(ABS((b08006_006cm/1.645)/CAST(NULLIF(b08006_006c,0) as numeric))*100 as numeric),1) AS b08006_006c_cv,
ROUND(CAST(ABS((b08006_006pm/1.645)/CAST(NULLIF(b08006_006p,0) as numeric))*100 as numeric),1) AS b08006_006p_cv,
ROUND(CAST(ABS((e1.b08006_007m/1.645)/CAST(NULLIF(e1.b08006_007e,0) as numeric))*100 as numeric),1) AS b08006_007e1_cv,
ROUND(CAST(ABS((e2.b08006_007m/1.645)/CAST(NULLIF(e2.b08006_007e,0) as numeric))*100 as numeric),1) AS b08006_007e2_cv,
ROUND(CAST(ABS((b08006_007cm/1.645)/CAST(NULLIF(b08006_007c,0) as numeric))*100 as numeric),1) AS b08006_007c_cv,
ROUND(CAST(ABS((b08006_007pm/1.645)/CAST(NULLIF(b08006_007p,0) as numeric))*100 as numeric),1) AS b08006_007p_cv,
ROUND(CAST(ABS((e1.b08006_008m/1.645)/CAST(NULLIF(e1.b08006_008e,0) as numeric))*100 as numeric),1) AS b08006_008e1_cv,
ROUND(CAST(ABS((e2.b08006_008m/1.645)/CAST(NULLIF(e2.b08006_008e,0) as numeric))*100 as numeric),1) AS b08006_008e2_cv,
ROUND(CAST(ABS((b08006_008cm/1.645)/CAST(NULLIF(b08006_008c,0) as numeric))*100 as numeric),1) AS b08006_008c_cv,
ROUND(CAST(ABS((b08006_008pm/1.645)/CAST(NULLIF(b08006_008p,0) as numeric))*100 as numeric),1) AS b08006_008p_cv,
ROUND(CAST(ABS((e1.b08006_009m/1.645)/CAST(NULLIF(e1.b08006_009e,0) as numeric))*100 as numeric),1) AS b08006_009e1_cv,
ROUND(CAST(ABS((e2.b08006_009m/1.645)/CAST(NULLIF(e2.b08006_009e,0) as numeric))*100 as numeric),1) AS b08006_009e2_cv,
ROUND(CAST(ABS((b08006_009cm/1.645)/CAST(NULLIF(b08006_009c,0) as numeric))*100 as numeric),1) AS b08006_009c_cv,
ROUND(CAST(ABS((b08006_009pm/1.645)/CAST(NULLIF(b08006_009p,0) as numeric))*100 as numeric),1) AS b08006_009p_cv,
ROUND(CAST(ABS((e1.b08006_010m/1.645)/CAST(NULLIF(e1.b08006_010e,0) as numeric))*100 as numeric),1) AS b08006_010e1_cv,
ROUND(CAST(ABS((e2.b08006_010m/1.645)/CAST(NULLIF(e2.b08006_010e,0) as numeric))*100 as numeric),1) AS b08006_010e2_cv,
ROUND(CAST(ABS((b08006_010cm/1.645)/CAST(NULLIF(b08006_010c,0) as numeric))*100 as numeric),1) AS b08006_010c_cv,
ROUND(CAST(ABS((b08006_010pm/1.645)/CAST(NULLIF(b08006_010p,0) as numeric))*100 as numeric),1) AS b08006_010p_cv,
ROUND(CAST(ABS((e1.b08006_011m/1.645)/CAST(NULLIF(e1.b08006_011e,0) as numeric))*100 as numeric),1) AS b08006_011e1_cv,
ROUND(CAST(ABS((e2.b08006_011m/1.645)/CAST(NULLIF(e2.b08006_011e,0) as numeric))*100 as numeric),1) AS b08006_011e2_cv,
ROUND(CAST(ABS((b08006_011cm/1.645)/CAST(NULLIF(b08006_011c,0) as numeric))*100 as numeric),1) AS b08006_011c_cv,
ROUND(CAST(ABS((b08006_011pm/1.645)/CAST(NULLIF(b08006_011p,0) as numeric))*100 as numeric),1) AS b08006_011p_cv,
ROUND(CAST(ABS((e1.b08006_012m/1.645)/CAST(NULLIF(e1.b08006_012e,0) as numeric))*100 as numeric),1) AS b08006_012e1_cv,
ROUND(CAST(ABS((e2.b08006_012m/1.645)/CAST(NULLIF(e2.b08006_012e,0) as numeric))*100 as numeric),1) AS b08006_012e2_cv,
ROUND(CAST(ABS((b08006_012cm/1.645)/CAST(NULLIF(b08006_012c,0) as numeric))*100 as numeric),1) AS b08006_012c_cv,
ROUND(CAST(ABS((b08006_012pm/1.645)/CAST(NULLIF(b08006_012p,0) as numeric))*100 as numeric),1) AS b08006_012p_cv,
ROUND(CAST(ABS((e1.b08006_013m/1.645)/CAST(NULLIF(e1.b08006_013e,0) as numeric))*100 as numeric),1) AS b08006_013e1_cv,
ROUND(CAST(ABS((e2.b08006_013m/1.645)/CAST(NULLIF(e2.b08006_013e,0) as numeric))*100 as numeric),1) AS b08006_013e2_cv,
ROUND(CAST(ABS((b08006_013cm/1.645)/CAST(NULLIF(b08006_013c,0) as numeric))*100 as numeric),1) AS b08006_013c_cv,
ROUND(CAST(ABS((b08006_013pm/1.645)/CAST(NULLIF(b08006_013p,0) as numeric))*100 as numeric),1) AS b08006_013p_cv,
ROUND(CAST(ABS((e1.b08006_014m/1.645)/CAST(NULLIF(e1.b08006_014e,0) as numeric))*100 as numeric),1) AS b08006_014e1_cv,
ROUND(CAST(ABS((e2.b08006_014m/1.645)/CAST(NULLIF(e2.b08006_014e,0) as numeric))*100 as numeric),1) AS b08006_014e2_cv,
ROUND(CAST(ABS((b08006_014cm/1.645)/CAST(NULLIF(b08006_014c,0) as numeric))*100 as numeric),1) AS b08006_014c_cv,
ROUND(CAST(ABS((b08006_014pm/1.645)/CAST(NULLIF(b08006_014p,0) as numeric))*100 as numeric),1) AS b08006_014p_cv,
ROUND(CAST(ABS((e1.b08006_015m/1.645)/CAST(NULLIF(e1.b08006_015e,0) as numeric))*100 as numeric),1) AS b08006_015e1_cv,
ROUND(CAST(ABS((e2.b08006_015m/1.645)/CAST(NULLIF(e2.b08006_015e,0) as numeric))*100 as numeric),1) AS b08006_015e2_cv,
ROUND(CAST(ABS((b08006_015cm/1.645)/CAST(NULLIF(b08006_015c,0) as numeric))*100 as numeric),1) AS b08006_015c_cv,
ROUND(CAST(ABS((b08006_015pm/1.645)/CAST(NULLIF(b08006_015p,0) as numeric))*100 as numeric),1) AS b08006_015p_cv,
ROUND(CAST(ABS((e1.b08006_016m/1.645)/CAST(NULLIF(e1.b08006_016e,0) as numeric))*100 as numeric),1) AS b08006_016e1_cv,
ROUND(CAST(ABS((e2.b08006_016m/1.645)/CAST(NULLIF(e2.b08006_016e,0) as numeric))*100 as numeric),1) AS b08006_016e2_cv,
ROUND(CAST(ABS((b08006_016cm/1.645)/CAST(NULLIF(b08006_016c,0) as numeric))*100 as numeric),1) AS b08006_016c_cv,
ROUND(CAST(ABS((b08006_016pm/1.645)/CAST(NULLIF(b08006_016p,0) as numeric))*100 as numeric),1) AS b08006_016p_cv,
ROUND(CAST(ABS((e1.b08006_017m/1.645)/CAST(NULLIF(e1.b08006_017e,0) as numeric))*100 as numeric),1) AS b08006_017e1_cv,
ROUND(CAST(ABS((e2.b08006_017m/1.645)/CAST(NULLIF(e2.b08006_017e,0) as numeric))*100 as numeric),1) AS b08006_017e2_cv,
ROUND(CAST(ABS((b08006_017cm/1.645)/CAST(NULLIF(b08006_017c,0) as numeric))*100 as numeric),1) AS b08006_017c_cv,
ROUND(CAST(ABS((b08006_017pm/1.645)/CAST(NULLIF(b08006_017p,0) as numeric))*100 as numeric),1) AS b08006_017p_cv
FROM acs_b08006_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b08006 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b08006 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b09001_cvs;
    CREATE TABLE acs_b09001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b09001_001m/1.645)/CAST(NULLIF(e1.b09001_001e,0) as numeric))*100 as numeric),1) AS b09001_001e1_cv,
ROUND(CAST(ABS((e2.b09001_001m/1.645)/CAST(NULLIF(e2.b09001_001e,0) as numeric))*100 as numeric),1) AS b09001_001e2_cv,
ROUND(CAST(ABS((b09001_001cm/1.645)/CAST(NULLIF(b09001_001c,0) as numeric))*100 as numeric),1) AS b09001_001c_cv,
ROUND(CAST(ABS((b09001_001pm/1.645)/CAST(NULLIF(b09001_001p,0) as numeric))*100 as numeric),1) AS b09001_001p_cv
FROM acs_b09001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b09001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b09001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b09020_cvs;
    CREATE TABLE acs_b09020_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b09020_001m/1.645)/CAST(NULLIF(e1.b09020_001e,0) as numeric))*100 as numeric),1) AS b09020_001e1_cv,
ROUND(CAST(ABS((e2.b09020_001m/1.645)/CAST(NULLIF(e2.b09020_001e,0) as numeric))*100 as numeric),1) AS b09020_001e2_cv,
ROUND(CAST(ABS((b09020_001cm/1.645)/CAST(NULLIF(b09020_001c,0) as numeric))*100 as numeric),1) AS b09020_001c_cv,
ROUND(CAST(ABS((b09020_001pm/1.645)/CAST(NULLIF(b09020_001p,0) as numeric))*100 as numeric),1) AS b09020_001p_cv
FROM acs_b09020_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b09020 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b09020 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b11001_cvs;
    CREATE TABLE acs_b11001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b11001_001m/1.645)/CAST(NULLIF(e1.b11001_001e,0) as numeric))*100 as numeric),1) AS b11001_001e1_cv,
ROUND(CAST(ABS((e2.b11001_001m/1.645)/CAST(NULLIF(e2.b11001_001e,0) as numeric))*100 as numeric),1) AS b11001_001e2_cv,
ROUND(CAST(ABS((b11001_001cm/1.645)/CAST(NULLIF(b11001_001c,0) as numeric))*100 as numeric),1) AS b11001_001c_cv,
ROUND(CAST(ABS((b11001_001pm/1.645)/CAST(NULLIF(b11001_001p,0) as numeric))*100 as numeric),1) AS b11001_001p_cv,
ROUND(CAST(ABS((e1.b11001_002m/1.645)/CAST(NULLIF(e1.b11001_002e,0) as numeric))*100 as numeric),1) AS b11001_002e1_cv,
ROUND(CAST(ABS((e2.b11001_002m/1.645)/CAST(NULLIF(e2.b11001_002e,0) as numeric))*100 as numeric),1) AS b11001_002e2_cv,
ROUND(CAST(ABS((b11001_002cm/1.645)/CAST(NULLIF(b11001_002c,0) as numeric))*100 as numeric),1) AS b11001_002c_cv,
ROUND(CAST(ABS((b11001_002pm/1.645)/CAST(NULLIF(b11001_002p,0) as numeric))*100 as numeric),1) AS b11001_002p_cv,
ROUND(CAST(ABS((e1.b11001_003m/1.645)/CAST(NULLIF(e1.b11001_003e,0) as numeric))*100 as numeric),1) AS b11001_003e1_cv,
ROUND(CAST(ABS((e2.b11001_003m/1.645)/CAST(NULLIF(e2.b11001_003e,0) as numeric))*100 as numeric),1) AS b11001_003e2_cv,
ROUND(CAST(ABS((b11001_003cm/1.645)/CAST(NULLIF(b11001_003c,0) as numeric))*100 as numeric),1) AS b11001_003c_cv,
ROUND(CAST(ABS((b11001_003pm/1.645)/CAST(NULLIF(b11001_003p,0) as numeric))*100 as numeric),1) AS b11001_003p_cv,
ROUND(CAST(ABS((e1.b11001_004m/1.645)/CAST(NULLIF(e1.b11001_004e,0) as numeric))*100 as numeric),1) AS b11001_004e1_cv,
ROUND(CAST(ABS((e2.b11001_004m/1.645)/CAST(NULLIF(e2.b11001_004e,0) as numeric))*100 as numeric),1) AS b11001_004e2_cv,
ROUND(CAST(ABS((b11001_004cm/1.645)/CAST(NULLIF(b11001_004c,0) as numeric))*100 as numeric),1) AS b11001_004c_cv,
ROUND(CAST(ABS((b11001_004pm/1.645)/CAST(NULLIF(b11001_004p,0) as numeric))*100 as numeric),1) AS b11001_004p_cv,
ROUND(CAST(ABS((e1.b11001_005m/1.645)/CAST(NULLIF(e1.b11001_005e,0) as numeric))*100 as numeric),1) AS b11001_005e1_cv,
ROUND(CAST(ABS((e2.b11001_005m/1.645)/CAST(NULLIF(e2.b11001_005e,0) as numeric))*100 as numeric),1) AS b11001_005e2_cv,
ROUND(CAST(ABS((b11001_005cm/1.645)/CAST(NULLIF(b11001_005c,0) as numeric))*100 as numeric),1) AS b11001_005c_cv,
ROUND(CAST(ABS((b11001_005pm/1.645)/CAST(NULLIF(b11001_005p,0) as numeric))*100 as numeric),1) AS b11001_005p_cv,
ROUND(CAST(ABS((e1.b11001_006m/1.645)/CAST(NULLIF(e1.b11001_006e,0) as numeric))*100 as numeric),1) AS b11001_006e1_cv,
ROUND(CAST(ABS((e2.b11001_006m/1.645)/CAST(NULLIF(e2.b11001_006e,0) as numeric))*100 as numeric),1) AS b11001_006e2_cv,
ROUND(CAST(ABS((b11001_006cm/1.645)/CAST(NULLIF(b11001_006c,0) as numeric))*100 as numeric),1) AS b11001_006c_cv,
ROUND(CAST(ABS((b11001_006pm/1.645)/CAST(NULLIF(b11001_006p,0) as numeric))*100 as numeric),1) AS b11001_006p_cv,
ROUND(CAST(ABS((e1.b11001_007m/1.645)/CAST(NULLIF(e1.b11001_007e,0) as numeric))*100 as numeric),1) AS b11001_007e1_cv,
ROUND(CAST(ABS((e2.b11001_007m/1.645)/CAST(NULLIF(e2.b11001_007e,0) as numeric))*100 as numeric),1) AS b11001_007e2_cv,
ROUND(CAST(ABS((b11001_007cm/1.645)/CAST(NULLIF(b11001_007c,0) as numeric))*100 as numeric),1) AS b11001_007c_cv,
ROUND(CAST(ABS((b11001_007pm/1.645)/CAST(NULLIF(b11001_007p,0) as numeric))*100 as numeric),1) AS b11001_007p_cv,
ROUND(CAST(ABS((e1.b11001_008m/1.645)/CAST(NULLIF(e1.b11001_008e,0) as numeric))*100 as numeric),1) AS b11001_008e1_cv,
ROUND(CAST(ABS((e2.b11001_008m/1.645)/CAST(NULLIF(e2.b11001_008e,0) as numeric))*100 as numeric),1) AS b11001_008e2_cv,
ROUND(CAST(ABS((b11001_008cm/1.645)/CAST(NULLIF(b11001_008c,0) as numeric))*100 as numeric),1) AS b11001_008c_cv,
ROUND(CAST(ABS((b11001_008pm/1.645)/CAST(NULLIF(b11001_008p,0) as numeric))*100 as numeric),1) AS b11001_008p_cv,
ROUND(CAST(ABS((e1.b11001_009m/1.645)/CAST(NULLIF(e1.b11001_009e,0) as numeric))*100 as numeric),1) AS b11001_009e1_cv,
ROUND(CAST(ABS((e2.b11001_009m/1.645)/CAST(NULLIF(e2.b11001_009e,0) as numeric))*100 as numeric),1) AS b11001_009e2_cv,
ROUND(CAST(ABS((b11001_009cm/1.645)/CAST(NULLIF(b11001_009c,0) as numeric))*100 as numeric),1) AS b11001_009c_cv,
ROUND(CAST(ABS((b11001_009pm/1.645)/CAST(NULLIF(b11001_009p,0) as numeric))*100 as numeric),1) AS b11001_009p_cv
FROM acs_b11001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b11001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b11001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b13002_cvs;
    CREATE TABLE acs_b13002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b13002_001m/1.645)/CAST(NULLIF(e1.b13002_001e,0) as numeric))*100 as numeric),1) AS b13002_001e1_cv,
ROUND(CAST(ABS((e2.b13002_001m/1.645)/CAST(NULLIF(e2.b13002_001e,0) as numeric))*100 as numeric),1) AS b13002_001e2_cv,
ROUND(CAST(ABS((b13002_001cm/1.645)/CAST(NULLIF(b13002_001c,0) as numeric))*100 as numeric),1) AS b13002_001c_cv,
ROUND(CAST(ABS((b13002_001pm/1.645)/CAST(NULLIF(b13002_001p,0) as numeric))*100 as numeric),1) AS b13002_001p_cv,
ROUND(CAST(ABS((e1.b13002_002m/1.645)/CAST(NULLIF(e1.b13002_002e,0) as numeric))*100 as numeric),1) AS b13002_002e1_cv,
ROUND(CAST(ABS((e2.b13002_002m/1.645)/CAST(NULLIF(e2.b13002_002e,0) as numeric))*100 as numeric),1) AS b13002_002e2_cv,
ROUND(CAST(ABS((b13002_002cm/1.645)/CAST(NULLIF(b13002_002c,0) as numeric))*100 as numeric),1) AS b13002_002c_cv,
ROUND(CAST(ABS((b13002_002pm/1.645)/CAST(NULLIF(b13002_002p,0) as numeric))*100 as numeric),1) AS b13002_002p_cv,
ROUND(CAST(ABS((e1.b13002_003m/1.645)/CAST(NULLIF(e1.b13002_003e,0) as numeric))*100 as numeric),1) AS b13002_003e1_cv,
ROUND(CAST(ABS((e2.b13002_003m/1.645)/CAST(NULLIF(e2.b13002_003e,0) as numeric))*100 as numeric),1) AS b13002_003e2_cv,
ROUND(CAST(ABS((b13002_003cm/1.645)/CAST(NULLIF(b13002_003c,0) as numeric))*100 as numeric),1) AS b13002_003c_cv,
ROUND(CAST(ABS((b13002_003pm/1.645)/CAST(NULLIF(b13002_003p,0) as numeric))*100 as numeric),1) AS b13002_003p_cv,
ROUND(CAST(ABS((e1.b13002_004m/1.645)/CAST(NULLIF(e1.b13002_004e,0) as numeric))*100 as numeric),1) AS b13002_004e1_cv,
ROUND(CAST(ABS((e2.b13002_004m/1.645)/CAST(NULLIF(e2.b13002_004e,0) as numeric))*100 as numeric),1) AS b13002_004e2_cv,
ROUND(CAST(ABS((b13002_004cm/1.645)/CAST(NULLIF(b13002_004c,0) as numeric))*100 as numeric),1) AS b13002_004c_cv,
ROUND(CAST(ABS((b13002_004pm/1.645)/CAST(NULLIF(b13002_004p,0) as numeric))*100 as numeric),1) AS b13002_004p_cv,
ROUND(CAST(ABS((e1.b13002_005m/1.645)/CAST(NULLIF(e1.b13002_005e,0) as numeric))*100 as numeric),1) AS b13002_005e1_cv,
ROUND(CAST(ABS((e2.b13002_005m/1.645)/CAST(NULLIF(e2.b13002_005e,0) as numeric))*100 as numeric),1) AS b13002_005e2_cv,
ROUND(CAST(ABS((b13002_005cm/1.645)/CAST(NULLIF(b13002_005c,0) as numeric))*100 as numeric),1) AS b13002_005c_cv,
ROUND(CAST(ABS((b13002_005pm/1.645)/CAST(NULLIF(b13002_005p,0) as numeric))*100 as numeric),1) AS b13002_005p_cv,
ROUND(CAST(ABS((e1.b13002_006m/1.645)/CAST(NULLIF(e1.b13002_006e,0) as numeric))*100 as numeric),1) AS b13002_006e1_cv,
ROUND(CAST(ABS((e2.b13002_006m/1.645)/CAST(NULLIF(e2.b13002_006e,0) as numeric))*100 as numeric),1) AS b13002_006e2_cv,
ROUND(CAST(ABS((b13002_006cm/1.645)/CAST(NULLIF(b13002_006c,0) as numeric))*100 as numeric),1) AS b13002_006c_cv,
ROUND(CAST(ABS((b13002_006pm/1.645)/CAST(NULLIF(b13002_006p,0) as numeric))*100 as numeric),1) AS b13002_006p_cv,
ROUND(CAST(ABS((e1.b13002_007m/1.645)/CAST(NULLIF(e1.b13002_007e,0) as numeric))*100 as numeric),1) AS b13002_007e1_cv,
ROUND(CAST(ABS((e2.b13002_007m/1.645)/CAST(NULLIF(e2.b13002_007e,0) as numeric))*100 as numeric),1) AS b13002_007e2_cv,
ROUND(CAST(ABS((b13002_007cm/1.645)/CAST(NULLIF(b13002_007c,0) as numeric))*100 as numeric),1) AS b13002_007c_cv,
ROUND(CAST(ABS((b13002_007pm/1.645)/CAST(NULLIF(b13002_007p,0) as numeric))*100 as numeric),1) AS b13002_007p_cv,
ROUND(CAST(ABS((e1.b13002_008m/1.645)/CAST(NULLIF(e1.b13002_008e,0) as numeric))*100 as numeric),1) AS b13002_008e1_cv,
ROUND(CAST(ABS((e2.b13002_008m/1.645)/CAST(NULLIF(e2.b13002_008e,0) as numeric))*100 as numeric),1) AS b13002_008e2_cv,
ROUND(CAST(ABS((b13002_008cm/1.645)/CAST(NULLIF(b13002_008c,0) as numeric))*100 as numeric),1) AS b13002_008c_cv,
ROUND(CAST(ABS((b13002_008pm/1.645)/CAST(NULLIF(b13002_008p,0) as numeric))*100 as numeric),1) AS b13002_008p_cv,
ROUND(CAST(ABS((e1.b13002_009m/1.645)/CAST(NULLIF(e1.b13002_009e,0) as numeric))*100 as numeric),1) AS b13002_009e1_cv,
ROUND(CAST(ABS((e2.b13002_009m/1.645)/CAST(NULLIF(e2.b13002_009e,0) as numeric))*100 as numeric),1) AS b13002_009e2_cv,
ROUND(CAST(ABS((b13002_009cm/1.645)/CAST(NULLIF(b13002_009c,0) as numeric))*100 as numeric),1) AS b13002_009c_cv,
ROUND(CAST(ABS((b13002_009pm/1.645)/CAST(NULLIF(b13002_009p,0) as numeric))*100 as numeric),1) AS b13002_009p_cv,
ROUND(CAST(ABS((e1.b13002_010m/1.645)/CAST(NULLIF(e1.b13002_010e,0) as numeric))*100 as numeric),1) AS b13002_010e1_cv,
ROUND(CAST(ABS((e2.b13002_010m/1.645)/CAST(NULLIF(e2.b13002_010e,0) as numeric))*100 as numeric),1) AS b13002_010e2_cv,
ROUND(CAST(ABS((b13002_010cm/1.645)/CAST(NULLIF(b13002_010c,0) as numeric))*100 as numeric),1) AS b13002_010c_cv,
ROUND(CAST(ABS((b13002_010pm/1.645)/CAST(NULLIF(b13002_010p,0) as numeric))*100 as numeric),1) AS b13002_010p_cv,
ROUND(CAST(ABS((e1.b13002_011m/1.645)/CAST(NULLIF(e1.b13002_011e,0) as numeric))*100 as numeric),1) AS b13002_011e1_cv,
ROUND(CAST(ABS((e2.b13002_011m/1.645)/CAST(NULLIF(e2.b13002_011e,0) as numeric))*100 as numeric),1) AS b13002_011e2_cv,
ROUND(CAST(ABS((b13002_011cm/1.645)/CAST(NULLIF(b13002_011c,0) as numeric))*100 as numeric),1) AS b13002_011c_cv,
ROUND(CAST(ABS((b13002_011pm/1.645)/CAST(NULLIF(b13002_011p,0) as numeric))*100 as numeric),1) AS b13002_011p_cv,
ROUND(CAST(ABS((e1.b13002_012m/1.645)/CAST(NULLIF(e1.b13002_012e,0) as numeric))*100 as numeric),1) AS b13002_012e1_cv,
ROUND(CAST(ABS((e2.b13002_012m/1.645)/CAST(NULLIF(e2.b13002_012e,0) as numeric))*100 as numeric),1) AS b13002_012e2_cv,
ROUND(CAST(ABS((b13002_012cm/1.645)/CAST(NULLIF(b13002_012c,0) as numeric))*100 as numeric),1) AS b13002_012c_cv,
ROUND(CAST(ABS((b13002_012pm/1.645)/CAST(NULLIF(b13002_012p,0) as numeric))*100 as numeric),1) AS b13002_012p_cv,
ROUND(CAST(ABS((e1.b13002_013m/1.645)/CAST(NULLIF(e1.b13002_013e,0) as numeric))*100 as numeric),1) AS b13002_013e1_cv,
ROUND(CAST(ABS((e2.b13002_013m/1.645)/CAST(NULLIF(e2.b13002_013e,0) as numeric))*100 as numeric),1) AS b13002_013e2_cv,
ROUND(CAST(ABS((b13002_013cm/1.645)/CAST(NULLIF(b13002_013c,0) as numeric))*100 as numeric),1) AS b13002_013c_cv,
ROUND(CAST(ABS((b13002_013pm/1.645)/CAST(NULLIF(b13002_013p,0) as numeric))*100 as numeric),1) AS b13002_013p_cv,
ROUND(CAST(ABS((e1.b13002_014m/1.645)/CAST(NULLIF(e1.b13002_014e,0) as numeric))*100 as numeric),1) AS b13002_014e1_cv,
ROUND(CAST(ABS((e2.b13002_014m/1.645)/CAST(NULLIF(e2.b13002_014e,0) as numeric))*100 as numeric),1) AS b13002_014e2_cv,
ROUND(CAST(ABS((b13002_014cm/1.645)/CAST(NULLIF(b13002_014c,0) as numeric))*100 as numeric),1) AS b13002_014c_cv,
ROUND(CAST(ABS((b13002_014pm/1.645)/CAST(NULLIF(b13002_014p,0) as numeric))*100 as numeric),1) AS b13002_014p_cv,
ROUND(CAST(ABS((e1.b13002_015m/1.645)/CAST(NULLIF(e1.b13002_015e,0) as numeric))*100 as numeric),1) AS b13002_015e1_cv,
ROUND(CAST(ABS((e2.b13002_015m/1.645)/CAST(NULLIF(e2.b13002_015e,0) as numeric))*100 as numeric),1) AS b13002_015e2_cv,
ROUND(CAST(ABS((b13002_015cm/1.645)/CAST(NULLIF(b13002_015c,0) as numeric))*100 as numeric),1) AS b13002_015c_cv,
ROUND(CAST(ABS((b13002_015pm/1.645)/CAST(NULLIF(b13002_015p,0) as numeric))*100 as numeric),1) AS b13002_015p_cv,
ROUND(CAST(ABS((e1.b13002_016m/1.645)/CAST(NULLIF(e1.b13002_016e,0) as numeric))*100 as numeric),1) AS b13002_016e1_cv,
ROUND(CAST(ABS((e2.b13002_016m/1.645)/CAST(NULLIF(e2.b13002_016e,0) as numeric))*100 as numeric),1) AS b13002_016e2_cv,
ROUND(CAST(ABS((b13002_016cm/1.645)/CAST(NULLIF(b13002_016c,0) as numeric))*100 as numeric),1) AS b13002_016c_cv,
ROUND(CAST(ABS((b13002_016pm/1.645)/CAST(NULLIF(b13002_016p,0) as numeric))*100 as numeric),1) AS b13002_016p_cv,
ROUND(CAST(ABS((e1.b13002_017m/1.645)/CAST(NULLIF(e1.b13002_017e,0) as numeric))*100 as numeric),1) AS b13002_017e1_cv,
ROUND(CAST(ABS((e2.b13002_017m/1.645)/CAST(NULLIF(e2.b13002_017e,0) as numeric))*100 as numeric),1) AS b13002_017e2_cv,
ROUND(CAST(ABS((b13002_017cm/1.645)/CAST(NULLIF(b13002_017c,0) as numeric))*100 as numeric),1) AS b13002_017c_cv,
ROUND(CAST(ABS((b13002_017pm/1.645)/CAST(NULLIF(b13002_017p,0) as numeric))*100 as numeric),1) AS b13002_017p_cv,
ROUND(CAST(ABS((e1.b13002_018m/1.645)/CAST(NULLIF(e1.b13002_018e,0) as numeric))*100 as numeric),1) AS b13002_018e1_cv,
ROUND(CAST(ABS((e2.b13002_018m/1.645)/CAST(NULLIF(e2.b13002_018e,0) as numeric))*100 as numeric),1) AS b13002_018e2_cv,
ROUND(CAST(ABS((b13002_018cm/1.645)/CAST(NULLIF(b13002_018c,0) as numeric))*100 as numeric),1) AS b13002_018c_cv,
ROUND(CAST(ABS((b13002_018pm/1.645)/CAST(NULLIF(b13002_018p,0) as numeric))*100 as numeric),1) AS b13002_018p_cv,
ROUND(CAST(ABS((e1.b13002_019m/1.645)/CAST(NULLIF(e1.b13002_019e,0) as numeric))*100 as numeric),1) AS b13002_019e1_cv,
ROUND(CAST(ABS((e2.b13002_019m/1.645)/CAST(NULLIF(e2.b13002_019e,0) as numeric))*100 as numeric),1) AS b13002_019e2_cv,
ROUND(CAST(ABS((b13002_019cm/1.645)/CAST(NULLIF(b13002_019c,0) as numeric))*100 as numeric),1) AS b13002_019c_cv,
ROUND(CAST(ABS((b13002_019pm/1.645)/CAST(NULLIF(b13002_019p,0) as numeric))*100 as numeric),1) AS b13002_019p_cv
FROM acs_b13002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b13002 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b13002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b14001_cvs;
    CREATE TABLE acs_b14001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b14001_001m/1.645)/CAST(NULLIF(e1.b14001_001e,0) as numeric))*100 as numeric),1) AS b14001_001e1_cv,
ROUND(CAST(ABS((e2.b14001_001m/1.645)/CAST(NULLIF(e2.b14001_001e,0) as numeric))*100 as numeric),1) AS b14001_001e2_cv,
ROUND(CAST(ABS((b14001_001cm/1.645)/CAST(NULLIF(b14001_001c,0) as numeric))*100 as numeric),1) AS b14001_001c_cv,
ROUND(CAST(ABS((b14001_001pm/1.645)/CAST(NULLIF(b14001_001p,0) as numeric))*100 as numeric),1) AS b14001_001p_cv,
ROUND(CAST(ABS((e1.b14001_002m/1.645)/CAST(NULLIF(e1.b14001_002e,0) as numeric))*100 as numeric),1) AS b14001_002e1_cv,
ROUND(CAST(ABS((e2.b14001_002m/1.645)/CAST(NULLIF(e2.b14001_002e,0) as numeric))*100 as numeric),1) AS b14001_002e2_cv,
ROUND(CAST(ABS((b14001_002cm/1.645)/CAST(NULLIF(b14001_002c,0) as numeric))*100 as numeric),1) AS b14001_002c_cv,
ROUND(CAST(ABS((b14001_002pm/1.645)/CAST(NULLIF(b14001_002p,0) as numeric))*100 as numeric),1) AS b14001_002p_cv,
ROUND(CAST(ABS((e1.b14001_003m/1.645)/CAST(NULLIF(e1.b14001_003e,0) as numeric))*100 as numeric),1) AS b14001_003e1_cv,
ROUND(CAST(ABS((e2.b14001_003m/1.645)/CAST(NULLIF(e2.b14001_003e,0) as numeric))*100 as numeric),1) AS b14001_003e2_cv,
ROUND(CAST(ABS((b14001_003cm/1.645)/CAST(NULLIF(b14001_003c,0) as numeric))*100 as numeric),1) AS b14001_003c_cv,
ROUND(CAST(ABS((b14001_003pm/1.645)/CAST(NULLIF(b14001_003p,0) as numeric))*100 as numeric),1) AS b14001_003p_cv,
ROUND(CAST(ABS((e1.b14001_004m/1.645)/CAST(NULLIF(e1.b14001_004e,0) as numeric))*100 as numeric),1) AS b14001_004e1_cv,
ROUND(CAST(ABS((e2.b14001_004m/1.645)/CAST(NULLIF(e2.b14001_004e,0) as numeric))*100 as numeric),1) AS b14001_004e2_cv,
ROUND(CAST(ABS((b14001_004cm/1.645)/CAST(NULLIF(b14001_004c,0) as numeric))*100 as numeric),1) AS b14001_004c_cv,
ROUND(CAST(ABS((b14001_004pm/1.645)/CAST(NULLIF(b14001_004p,0) as numeric))*100 as numeric),1) AS b14001_004p_cv,
ROUND(CAST(ABS((e1.b14001_005m/1.645)/CAST(NULLIF(e1.b14001_005e,0) as numeric))*100 as numeric),1) AS b14001_005e1_cv,
ROUND(CAST(ABS((e2.b14001_005m/1.645)/CAST(NULLIF(e2.b14001_005e,0) as numeric))*100 as numeric),1) AS b14001_005e2_cv,
ROUND(CAST(ABS((b14001_005cm/1.645)/CAST(NULLIF(b14001_005c,0) as numeric))*100 as numeric),1) AS b14001_005c_cv,
ROUND(CAST(ABS((b14001_005pm/1.645)/CAST(NULLIF(b14001_005p,0) as numeric))*100 as numeric),1) AS b14001_005p_cv,
ROUND(CAST(ABS((e1.b14001_006m/1.645)/CAST(NULLIF(e1.b14001_006e,0) as numeric))*100 as numeric),1) AS b14001_006e1_cv,
ROUND(CAST(ABS((e2.b14001_006m/1.645)/CAST(NULLIF(e2.b14001_006e,0) as numeric))*100 as numeric),1) AS b14001_006e2_cv,
ROUND(CAST(ABS((b14001_006cm/1.645)/CAST(NULLIF(b14001_006c,0) as numeric))*100 as numeric),1) AS b14001_006c_cv,
ROUND(CAST(ABS((b14001_006pm/1.645)/CAST(NULLIF(b14001_006p,0) as numeric))*100 as numeric),1) AS b14001_006p_cv,
ROUND(CAST(ABS((e1.b14001_007m/1.645)/CAST(NULLIF(e1.b14001_007e,0) as numeric))*100 as numeric),1) AS b14001_007e1_cv,
ROUND(CAST(ABS((e2.b14001_007m/1.645)/CAST(NULLIF(e2.b14001_007e,0) as numeric))*100 as numeric),1) AS b14001_007e2_cv,
ROUND(CAST(ABS((b14001_007cm/1.645)/CAST(NULLIF(b14001_007c,0) as numeric))*100 as numeric),1) AS b14001_007c_cv,
ROUND(CAST(ABS((b14001_007pm/1.645)/CAST(NULLIF(b14001_007p,0) as numeric))*100 as numeric),1) AS b14001_007p_cv,
ROUND(CAST(ABS((e1.b14001_008m/1.645)/CAST(NULLIF(e1.b14001_008e,0) as numeric))*100 as numeric),1) AS b14001_008e1_cv,
ROUND(CAST(ABS((e2.b14001_008m/1.645)/CAST(NULLIF(e2.b14001_008e,0) as numeric))*100 as numeric),1) AS b14001_008e2_cv,
ROUND(CAST(ABS((b14001_008cm/1.645)/CAST(NULLIF(b14001_008c,0) as numeric))*100 as numeric),1) AS b14001_008c_cv,
ROUND(CAST(ABS((b14001_008pm/1.645)/CAST(NULLIF(b14001_008p,0) as numeric))*100 as numeric),1) AS b14001_008p_cv,
ROUND(CAST(ABS((e1.b14001_009m/1.645)/CAST(NULLIF(e1.b14001_009e,0) as numeric))*100 as numeric),1) AS b14001_009e1_cv,
ROUND(CAST(ABS((e2.b14001_009m/1.645)/CAST(NULLIF(e2.b14001_009e,0) as numeric))*100 as numeric),1) AS b14001_009e2_cv,
ROUND(CAST(ABS((b14001_009cm/1.645)/CAST(NULLIF(b14001_009c,0) as numeric))*100 as numeric),1) AS b14001_009c_cv,
ROUND(CAST(ABS((b14001_009pm/1.645)/CAST(NULLIF(b14001_009p,0) as numeric))*100 as numeric),1) AS b14001_009p_cv,
ROUND(CAST(ABS((e1.b14001_010m/1.645)/CAST(NULLIF(e1.b14001_010e,0) as numeric))*100 as numeric),1) AS b14001_010e1_cv,
ROUND(CAST(ABS((e2.b14001_010m/1.645)/CAST(NULLIF(e2.b14001_010e,0) as numeric))*100 as numeric),1) AS b14001_010e2_cv,
ROUND(CAST(ABS((b14001_010cm/1.645)/CAST(NULLIF(b14001_010c,0) as numeric))*100 as numeric),1) AS b14001_010c_cv,
ROUND(CAST(ABS((b14001_010pm/1.645)/CAST(NULLIF(b14001_010p,0) as numeric))*100 as numeric),1) AS b14001_010p_cv
FROM acs_b14001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b14001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b14001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b15002_cvs;
    CREATE TABLE acs_b15002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b15002_001m/1.645)/CAST(NULLIF(e1.b15002_001e,0) as numeric))*100 as numeric),1) AS b15002_001e1_cv,
ROUND(CAST(ABS((e2.b15002_001m/1.645)/CAST(NULLIF(e2.b15002_001e,0) as numeric))*100 as numeric),1) AS b15002_001e2_cv,
ROUND(CAST(ABS((b15002_001cm/1.645)/CAST(NULLIF(b15002_001c,0) as numeric))*100 as numeric),1) AS b15002_001c_cv,
ROUND(CAST(ABS((b15002_001pm/1.645)/CAST(NULLIF(b15002_001p,0) as numeric))*100 as numeric),1) AS b15002_001p_cv,
ROUND(CAST(ABS((e1.b15002_002m/1.645)/CAST(NULLIF(e1.b15002_002e,0) as numeric))*100 as numeric),1) AS b15002_002e1_cv,
ROUND(CAST(ABS((e2.b15002_002m/1.645)/CAST(NULLIF(e2.b15002_002e,0) as numeric))*100 as numeric),1) AS b15002_002e2_cv,
ROUND(CAST(ABS((b15002_002cm/1.645)/CAST(NULLIF(b15002_002c,0) as numeric))*100 as numeric),1) AS b15002_002c_cv,
ROUND(CAST(ABS((b15002_002pm/1.645)/CAST(NULLIF(b15002_002p,0) as numeric))*100 as numeric),1) AS b15002_002p_cv,
ROUND(CAST(ABS((e1.b15002_003m/1.645)/CAST(NULLIF(e1.b15002_003e,0) as numeric))*100 as numeric),1) AS b15002_003e1_cv,
ROUND(CAST(ABS((e2.b15002_003m/1.645)/CAST(NULLIF(e2.b15002_003e,0) as numeric))*100 as numeric),1) AS b15002_003e2_cv,
ROUND(CAST(ABS((b15002_003cm/1.645)/CAST(NULLIF(b15002_003c,0) as numeric))*100 as numeric),1) AS b15002_003c_cv,
ROUND(CAST(ABS((b15002_003pm/1.645)/CAST(NULLIF(b15002_003p,0) as numeric))*100 as numeric),1) AS b15002_003p_cv,
ROUND(CAST(ABS((e1.b15002_004m/1.645)/CAST(NULLIF(e1.b15002_004e,0) as numeric))*100 as numeric),1) AS b15002_004e1_cv,
ROUND(CAST(ABS((e2.b15002_004m/1.645)/CAST(NULLIF(e2.b15002_004e,0) as numeric))*100 as numeric),1) AS b15002_004e2_cv,
ROUND(CAST(ABS((b15002_004cm/1.645)/CAST(NULLIF(b15002_004c,0) as numeric))*100 as numeric),1) AS b15002_004c_cv,
ROUND(CAST(ABS((b15002_004pm/1.645)/CAST(NULLIF(b15002_004p,0) as numeric))*100 as numeric),1) AS b15002_004p_cv,
ROUND(CAST(ABS((e1.b15002_005m/1.645)/CAST(NULLIF(e1.b15002_005e,0) as numeric))*100 as numeric),1) AS b15002_005e1_cv,
ROUND(CAST(ABS((e2.b15002_005m/1.645)/CAST(NULLIF(e2.b15002_005e,0) as numeric))*100 as numeric),1) AS b15002_005e2_cv,
ROUND(CAST(ABS((b15002_005cm/1.645)/CAST(NULLIF(b15002_005c,0) as numeric))*100 as numeric),1) AS b15002_005c_cv,
ROUND(CAST(ABS((b15002_005pm/1.645)/CAST(NULLIF(b15002_005p,0) as numeric))*100 as numeric),1) AS b15002_005p_cv,
ROUND(CAST(ABS((e1.b15002_006m/1.645)/CAST(NULLIF(e1.b15002_006e,0) as numeric))*100 as numeric),1) AS b15002_006e1_cv,
ROUND(CAST(ABS((e2.b15002_006m/1.645)/CAST(NULLIF(e2.b15002_006e,0) as numeric))*100 as numeric),1) AS b15002_006e2_cv,
ROUND(CAST(ABS((b15002_006cm/1.645)/CAST(NULLIF(b15002_006c,0) as numeric))*100 as numeric),1) AS b15002_006c_cv,
ROUND(CAST(ABS((b15002_006pm/1.645)/CAST(NULLIF(b15002_006p,0) as numeric))*100 as numeric),1) AS b15002_006p_cv,
ROUND(CAST(ABS((e1.b15002_007m/1.645)/CAST(NULLIF(e1.b15002_007e,0) as numeric))*100 as numeric),1) AS b15002_007e1_cv,
ROUND(CAST(ABS((e2.b15002_007m/1.645)/CAST(NULLIF(e2.b15002_007e,0) as numeric))*100 as numeric),1) AS b15002_007e2_cv,
ROUND(CAST(ABS((b15002_007cm/1.645)/CAST(NULLIF(b15002_007c,0) as numeric))*100 as numeric),1) AS b15002_007c_cv,
ROUND(CAST(ABS((b15002_007pm/1.645)/CAST(NULLIF(b15002_007p,0) as numeric))*100 as numeric),1) AS b15002_007p_cv,
ROUND(CAST(ABS((e1.b15002_008m/1.645)/CAST(NULLIF(e1.b15002_008e,0) as numeric))*100 as numeric),1) AS b15002_008e1_cv,
ROUND(CAST(ABS((e2.b15002_008m/1.645)/CAST(NULLIF(e2.b15002_008e,0) as numeric))*100 as numeric),1) AS b15002_008e2_cv,
ROUND(CAST(ABS((b15002_008cm/1.645)/CAST(NULLIF(b15002_008c,0) as numeric))*100 as numeric),1) AS b15002_008c_cv,
ROUND(CAST(ABS((b15002_008pm/1.645)/CAST(NULLIF(b15002_008p,0) as numeric))*100 as numeric),1) AS b15002_008p_cv,
ROUND(CAST(ABS((e1.b15002_009m/1.645)/CAST(NULLIF(e1.b15002_009e,0) as numeric))*100 as numeric),1) AS b15002_009e1_cv,
ROUND(CAST(ABS((e2.b15002_009m/1.645)/CAST(NULLIF(e2.b15002_009e,0) as numeric))*100 as numeric),1) AS b15002_009e2_cv,
ROUND(CAST(ABS((b15002_009cm/1.645)/CAST(NULLIF(b15002_009c,0) as numeric))*100 as numeric),1) AS b15002_009c_cv,
ROUND(CAST(ABS((b15002_009pm/1.645)/CAST(NULLIF(b15002_009p,0) as numeric))*100 as numeric),1) AS b15002_009p_cv,
ROUND(CAST(ABS((e1.b15002_010m/1.645)/CAST(NULLIF(e1.b15002_010e,0) as numeric))*100 as numeric),1) AS b15002_010e1_cv,
ROUND(CAST(ABS((e2.b15002_010m/1.645)/CAST(NULLIF(e2.b15002_010e,0) as numeric))*100 as numeric),1) AS b15002_010e2_cv,
ROUND(CAST(ABS((b15002_010cm/1.645)/CAST(NULLIF(b15002_010c,0) as numeric))*100 as numeric),1) AS b15002_010c_cv,
ROUND(CAST(ABS((b15002_010pm/1.645)/CAST(NULLIF(b15002_010p,0) as numeric))*100 as numeric),1) AS b15002_010p_cv,
ROUND(CAST(ABS((e1.b15002_011m/1.645)/CAST(NULLIF(e1.b15002_011e,0) as numeric))*100 as numeric),1) AS b15002_011e1_cv,
ROUND(CAST(ABS((e2.b15002_011m/1.645)/CAST(NULLIF(e2.b15002_011e,0) as numeric))*100 as numeric),1) AS b15002_011e2_cv,
ROUND(CAST(ABS((b15002_011cm/1.645)/CAST(NULLIF(b15002_011c,0) as numeric))*100 as numeric),1) AS b15002_011c_cv,
ROUND(CAST(ABS((b15002_011pm/1.645)/CAST(NULLIF(b15002_011p,0) as numeric))*100 as numeric),1) AS b15002_011p_cv,
ROUND(CAST(ABS((e1.b15002_012m/1.645)/CAST(NULLIF(e1.b15002_012e,0) as numeric))*100 as numeric),1) AS b15002_012e1_cv,
ROUND(CAST(ABS((e2.b15002_012m/1.645)/CAST(NULLIF(e2.b15002_012e,0) as numeric))*100 as numeric),1) AS b15002_012e2_cv,
ROUND(CAST(ABS((b15002_012cm/1.645)/CAST(NULLIF(b15002_012c,0) as numeric))*100 as numeric),1) AS b15002_012c_cv,
ROUND(CAST(ABS((b15002_012pm/1.645)/CAST(NULLIF(b15002_012p,0) as numeric))*100 as numeric),1) AS b15002_012p_cv,
ROUND(CAST(ABS((e1.b15002_013m/1.645)/CAST(NULLIF(e1.b15002_013e,0) as numeric))*100 as numeric),1) AS b15002_013e1_cv,
ROUND(CAST(ABS((e2.b15002_013m/1.645)/CAST(NULLIF(e2.b15002_013e,0) as numeric))*100 as numeric),1) AS b15002_013e2_cv,
ROUND(CAST(ABS((b15002_013cm/1.645)/CAST(NULLIF(b15002_013c,0) as numeric))*100 as numeric),1) AS b15002_013c_cv,
ROUND(CAST(ABS((b15002_013pm/1.645)/CAST(NULLIF(b15002_013p,0) as numeric))*100 as numeric),1) AS b15002_013p_cv,
ROUND(CAST(ABS((e1.b15002_014m/1.645)/CAST(NULLIF(e1.b15002_014e,0) as numeric))*100 as numeric),1) AS b15002_014e1_cv,
ROUND(CAST(ABS((e2.b15002_014m/1.645)/CAST(NULLIF(e2.b15002_014e,0) as numeric))*100 as numeric),1) AS b15002_014e2_cv,
ROUND(CAST(ABS((b15002_014cm/1.645)/CAST(NULLIF(b15002_014c,0) as numeric))*100 as numeric),1) AS b15002_014c_cv,
ROUND(CAST(ABS((b15002_014pm/1.645)/CAST(NULLIF(b15002_014p,0) as numeric))*100 as numeric),1) AS b15002_014p_cv,
ROUND(CAST(ABS((e1.b15002_015m/1.645)/CAST(NULLIF(e1.b15002_015e,0) as numeric))*100 as numeric),1) AS b15002_015e1_cv,
ROUND(CAST(ABS((e2.b15002_015m/1.645)/CAST(NULLIF(e2.b15002_015e,0) as numeric))*100 as numeric),1) AS b15002_015e2_cv,
ROUND(CAST(ABS((b15002_015cm/1.645)/CAST(NULLIF(b15002_015c,0) as numeric))*100 as numeric),1) AS b15002_015c_cv,
ROUND(CAST(ABS((b15002_015pm/1.645)/CAST(NULLIF(b15002_015p,0) as numeric))*100 as numeric),1) AS b15002_015p_cv,
ROUND(CAST(ABS((e1.b15002_016m/1.645)/CAST(NULLIF(e1.b15002_016e,0) as numeric))*100 as numeric),1) AS b15002_016e1_cv,
ROUND(CAST(ABS((e2.b15002_016m/1.645)/CAST(NULLIF(e2.b15002_016e,0) as numeric))*100 as numeric),1) AS b15002_016e2_cv,
ROUND(CAST(ABS((b15002_016cm/1.645)/CAST(NULLIF(b15002_016c,0) as numeric))*100 as numeric),1) AS b15002_016c_cv,
ROUND(CAST(ABS((b15002_016pm/1.645)/CAST(NULLIF(b15002_016p,0) as numeric))*100 as numeric),1) AS b15002_016p_cv,
ROUND(CAST(ABS((e1.b15002_017m/1.645)/CAST(NULLIF(e1.b15002_017e,0) as numeric))*100 as numeric),1) AS b15002_017e1_cv,
ROUND(CAST(ABS((e2.b15002_017m/1.645)/CAST(NULLIF(e2.b15002_017e,0) as numeric))*100 as numeric),1) AS b15002_017e2_cv,
ROUND(CAST(ABS((b15002_017cm/1.645)/CAST(NULLIF(b15002_017c,0) as numeric))*100 as numeric),1) AS b15002_017c_cv,
ROUND(CAST(ABS((b15002_017pm/1.645)/CAST(NULLIF(b15002_017p,0) as numeric))*100 as numeric),1) AS b15002_017p_cv,
ROUND(CAST(ABS((e1.b15002_018m/1.645)/CAST(NULLIF(e1.b15002_018e,0) as numeric))*100 as numeric),1) AS b15002_018e1_cv,
ROUND(CAST(ABS((e2.b15002_018m/1.645)/CAST(NULLIF(e2.b15002_018e,0) as numeric))*100 as numeric),1) AS b15002_018e2_cv,
ROUND(CAST(ABS((b15002_018cm/1.645)/CAST(NULLIF(b15002_018c,0) as numeric))*100 as numeric),1) AS b15002_018c_cv,
ROUND(CAST(ABS((b15002_018pm/1.645)/CAST(NULLIF(b15002_018p,0) as numeric))*100 as numeric),1) AS b15002_018p_cv,
ROUND(CAST(ABS((e1.b15002_019m/1.645)/CAST(NULLIF(e1.b15002_019e,0) as numeric))*100 as numeric),1) AS b15002_019e1_cv,
ROUND(CAST(ABS((e2.b15002_019m/1.645)/CAST(NULLIF(e2.b15002_019e,0) as numeric))*100 as numeric),1) AS b15002_019e2_cv,
ROUND(CAST(ABS((b15002_019cm/1.645)/CAST(NULLIF(b15002_019c,0) as numeric))*100 as numeric),1) AS b15002_019c_cv,
ROUND(CAST(ABS((b15002_019pm/1.645)/CAST(NULLIF(b15002_019p,0) as numeric))*100 as numeric),1) AS b15002_019p_cv,
ROUND(CAST(ABS((e1.b15002_020m/1.645)/CAST(NULLIF(e1.b15002_020e,0) as numeric))*100 as numeric),1) AS b15002_020e1_cv,
ROUND(CAST(ABS((e2.b15002_020m/1.645)/CAST(NULLIF(e2.b15002_020e,0) as numeric))*100 as numeric),1) AS b15002_020e2_cv,
ROUND(CAST(ABS((b15002_020cm/1.645)/CAST(NULLIF(b15002_020c,0) as numeric))*100 as numeric),1) AS b15002_020c_cv,
ROUND(CAST(ABS((b15002_020pm/1.645)/CAST(NULLIF(b15002_020p,0) as numeric))*100 as numeric),1) AS b15002_020p_cv,
ROUND(CAST(ABS((e1.b15002_021m/1.645)/CAST(NULLIF(e1.b15002_021e,0) as numeric))*100 as numeric),1) AS b15002_021e1_cv,
ROUND(CAST(ABS((e2.b15002_021m/1.645)/CAST(NULLIF(e2.b15002_021e,0) as numeric))*100 as numeric),1) AS b15002_021e2_cv,
ROUND(CAST(ABS((b15002_021cm/1.645)/CAST(NULLIF(b15002_021c,0) as numeric))*100 as numeric),1) AS b15002_021c_cv,
ROUND(CAST(ABS((b15002_021pm/1.645)/CAST(NULLIF(b15002_021p,0) as numeric))*100 as numeric),1) AS b15002_021p_cv,
ROUND(CAST(ABS((e1.b15002_022m/1.645)/CAST(NULLIF(e1.b15002_022e,0) as numeric))*100 as numeric),1) AS b15002_022e1_cv,
ROUND(CAST(ABS((e2.b15002_022m/1.645)/CAST(NULLIF(e2.b15002_022e,0) as numeric))*100 as numeric),1) AS b15002_022e2_cv,
ROUND(CAST(ABS((b15002_022cm/1.645)/CAST(NULLIF(b15002_022c,0) as numeric))*100 as numeric),1) AS b15002_022c_cv,
ROUND(CAST(ABS((b15002_022pm/1.645)/CAST(NULLIF(b15002_022p,0) as numeric))*100 as numeric),1) AS b15002_022p_cv,
ROUND(CAST(ABS((e1.b15002_023m/1.645)/CAST(NULLIF(e1.b15002_023e,0) as numeric))*100 as numeric),1) AS b15002_023e1_cv,
ROUND(CAST(ABS((e2.b15002_023m/1.645)/CAST(NULLIF(e2.b15002_023e,0) as numeric))*100 as numeric),1) AS b15002_023e2_cv,
ROUND(CAST(ABS((b15002_023cm/1.645)/CAST(NULLIF(b15002_023c,0) as numeric))*100 as numeric),1) AS b15002_023c_cv,
ROUND(CAST(ABS((b15002_023pm/1.645)/CAST(NULLIF(b15002_023p,0) as numeric))*100 as numeric),1) AS b15002_023p_cv,
ROUND(CAST(ABS((e1.b15002_024m/1.645)/CAST(NULLIF(e1.b15002_024e,0) as numeric))*100 as numeric),1) AS b15002_024e1_cv,
ROUND(CAST(ABS((e2.b15002_024m/1.645)/CAST(NULLIF(e2.b15002_024e,0) as numeric))*100 as numeric),1) AS b15002_024e2_cv,
ROUND(CAST(ABS((b15002_024cm/1.645)/CAST(NULLIF(b15002_024c,0) as numeric))*100 as numeric),1) AS b15002_024c_cv,
ROUND(CAST(ABS((b15002_024pm/1.645)/CAST(NULLIF(b15002_024p,0) as numeric))*100 as numeric),1) AS b15002_024p_cv,
ROUND(CAST(ABS((e1.b15002_025m/1.645)/CAST(NULLIF(e1.b15002_025e,0) as numeric))*100 as numeric),1) AS b15002_025e1_cv,
ROUND(CAST(ABS((e2.b15002_025m/1.645)/CAST(NULLIF(e2.b15002_025e,0) as numeric))*100 as numeric),1) AS b15002_025e2_cv,
ROUND(CAST(ABS((b15002_025cm/1.645)/CAST(NULLIF(b15002_025c,0) as numeric))*100 as numeric),1) AS b15002_025c_cv,
ROUND(CAST(ABS((b15002_025pm/1.645)/CAST(NULLIF(b15002_025p,0) as numeric))*100 as numeric),1) AS b15002_025p_cv,
ROUND(CAST(ABS((e1.b15002_026m/1.645)/CAST(NULLIF(e1.b15002_026e,0) as numeric))*100 as numeric),1) AS b15002_026e1_cv,
ROUND(CAST(ABS((e2.b15002_026m/1.645)/CAST(NULLIF(e2.b15002_026e,0) as numeric))*100 as numeric),1) AS b15002_026e2_cv,
ROUND(CAST(ABS((b15002_026cm/1.645)/CAST(NULLIF(b15002_026c,0) as numeric))*100 as numeric),1) AS b15002_026c_cv,
ROUND(CAST(ABS((b15002_026pm/1.645)/CAST(NULLIF(b15002_026p,0) as numeric))*100 as numeric),1) AS b15002_026p_cv,
ROUND(CAST(ABS((e1.b15002_027m/1.645)/CAST(NULLIF(e1.b15002_027e,0) as numeric))*100 as numeric),1) AS b15002_027e1_cv,
ROUND(CAST(ABS((e2.b15002_027m/1.645)/CAST(NULLIF(e2.b15002_027e,0) as numeric))*100 as numeric),1) AS b15002_027e2_cv,
ROUND(CAST(ABS((b15002_027cm/1.645)/CAST(NULLIF(b15002_027c,0) as numeric))*100 as numeric),1) AS b15002_027c_cv,
ROUND(CAST(ABS((b15002_027pm/1.645)/CAST(NULLIF(b15002_027p,0) as numeric))*100 as numeric),1) AS b15002_027p_cv,
ROUND(CAST(ABS((e1.b15002_028m/1.645)/CAST(NULLIF(e1.b15002_028e,0) as numeric))*100 as numeric),1) AS b15002_028e1_cv,
ROUND(CAST(ABS((e2.b15002_028m/1.645)/CAST(NULLIF(e2.b15002_028e,0) as numeric))*100 as numeric),1) AS b15002_028e2_cv,
ROUND(CAST(ABS((b15002_028cm/1.645)/CAST(NULLIF(b15002_028c,0) as numeric))*100 as numeric),1) AS b15002_028c_cv,
ROUND(CAST(ABS((b15002_028pm/1.645)/CAST(NULLIF(b15002_028p,0) as numeric))*100 as numeric),1) AS b15002_028p_cv,
ROUND(CAST(ABS((e1.b15002_029m/1.645)/CAST(NULLIF(e1.b15002_029e,0) as numeric))*100 as numeric),1) AS b15002_029e1_cv,
ROUND(CAST(ABS((e2.b15002_029m/1.645)/CAST(NULLIF(e2.b15002_029e,0) as numeric))*100 as numeric),1) AS b15002_029e2_cv,
ROUND(CAST(ABS((b15002_029cm/1.645)/CAST(NULLIF(b15002_029c,0) as numeric))*100 as numeric),1) AS b15002_029c_cv,
ROUND(CAST(ABS((b15002_029pm/1.645)/CAST(NULLIF(b15002_029p,0) as numeric))*100 as numeric),1) AS b15002_029p_cv,
ROUND(CAST(ABS((e1.b15002_030m/1.645)/CAST(NULLIF(e1.b15002_030e,0) as numeric))*100 as numeric),1) AS b15002_030e1_cv,
ROUND(CAST(ABS((e2.b15002_030m/1.645)/CAST(NULLIF(e2.b15002_030e,0) as numeric))*100 as numeric),1) AS b15002_030e2_cv,
ROUND(CAST(ABS((b15002_030cm/1.645)/CAST(NULLIF(b15002_030c,0) as numeric))*100 as numeric),1) AS b15002_030c_cv,
ROUND(CAST(ABS((b15002_030pm/1.645)/CAST(NULLIF(b15002_030p,0) as numeric))*100 as numeric),1) AS b15002_030p_cv,
ROUND(CAST(ABS((e1.b15002_031m/1.645)/CAST(NULLIF(e1.b15002_031e,0) as numeric))*100 as numeric),1) AS b15002_031e1_cv,
ROUND(CAST(ABS((e2.b15002_031m/1.645)/CAST(NULLIF(e2.b15002_031e,0) as numeric))*100 as numeric),1) AS b15002_031e2_cv,
ROUND(CAST(ABS((b15002_031cm/1.645)/CAST(NULLIF(b15002_031c,0) as numeric))*100 as numeric),1) AS b15002_031c_cv,
ROUND(CAST(ABS((b15002_031pm/1.645)/CAST(NULLIF(b15002_031p,0) as numeric))*100 as numeric),1) AS b15002_031p_cv,
ROUND(CAST(ABS((e1.b15002_032m/1.645)/CAST(NULLIF(e1.b15002_032e,0) as numeric))*100 as numeric),1) AS b15002_032e1_cv,
ROUND(CAST(ABS((e2.b15002_032m/1.645)/CAST(NULLIF(e2.b15002_032e,0) as numeric))*100 as numeric),1) AS b15002_032e2_cv,
ROUND(CAST(ABS((b15002_032cm/1.645)/CAST(NULLIF(b15002_032c,0) as numeric))*100 as numeric),1) AS b15002_032c_cv,
ROUND(CAST(ABS((b15002_032pm/1.645)/CAST(NULLIF(b15002_032p,0) as numeric))*100 as numeric),1) AS b15002_032p_cv,
ROUND(CAST(ABS((e1.b15002_033m/1.645)/CAST(NULLIF(e1.b15002_033e,0) as numeric))*100 as numeric),1) AS b15002_033e1_cv,
ROUND(CAST(ABS((e2.b15002_033m/1.645)/CAST(NULLIF(e2.b15002_033e,0) as numeric))*100 as numeric),1) AS b15002_033e2_cv,
ROUND(CAST(ABS((b15002_033cm/1.645)/CAST(NULLIF(b15002_033c,0) as numeric))*100 as numeric),1) AS b15002_033c_cv,
ROUND(CAST(ABS((b15002_033pm/1.645)/CAST(NULLIF(b15002_033p,0) as numeric))*100 as numeric),1) AS b15002_033p_cv,
ROUND(CAST(ABS((e1.b15002_034m/1.645)/CAST(NULLIF(e1.b15002_034e,0) as numeric))*100 as numeric),1) AS b15002_034e1_cv,
ROUND(CAST(ABS((e2.b15002_034m/1.645)/CAST(NULLIF(e2.b15002_034e,0) as numeric))*100 as numeric),1) AS b15002_034e2_cv,
ROUND(CAST(ABS((b15002_034cm/1.645)/CAST(NULLIF(b15002_034c,0) as numeric))*100 as numeric),1) AS b15002_034c_cv,
ROUND(CAST(ABS((b15002_034pm/1.645)/CAST(NULLIF(b15002_034p,0) as numeric))*100 as numeric),1) AS b15002_034p_cv,
ROUND(CAST(ABS((e1.b15002_035m/1.645)/CAST(NULLIF(e1.b15002_035e,0) as numeric))*100 as numeric),1) AS b15002_035e1_cv,
ROUND(CAST(ABS((e2.b15002_035m/1.645)/CAST(NULLIF(e2.b15002_035e,0) as numeric))*100 as numeric),1) AS b15002_035e2_cv,
ROUND(CAST(ABS((b15002_035cm/1.645)/CAST(NULLIF(b15002_035c,0) as numeric))*100 as numeric),1) AS b15002_035c_cv,
ROUND(CAST(ABS((b15002_035pm/1.645)/CAST(NULLIF(b15002_035p,0) as numeric))*100 as numeric),1) AS b15002_035p_cv
FROM acs_b15002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b15002 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b15002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_c17002_cvs;
    CREATE TABLE acs_c17002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.c17002_001m/1.645)/CAST(NULLIF(e1.c17002_001e,0) as numeric))*100 as numeric),1) AS c17002_001e1_cv,
ROUND(CAST(ABS((e2.c17002_001m/1.645)/CAST(NULLIF(e2.c17002_001e,0) as numeric))*100 as numeric),1) AS c17002_001e2_cv,
ROUND(CAST(ABS((c17002_001cm/1.645)/CAST(NULLIF(c17002_001c,0) as numeric))*100 as numeric),1) AS c17002_001c_cv,
ROUND(CAST(ABS((c17002_001pm/1.645)/CAST(NULLIF(c17002_001p,0) as numeric))*100 as numeric),1) AS c17002_001p_cv,
ROUND(CAST(ABS((e1.c17002_002m/1.645)/CAST(NULLIF(e1.c17002_002e,0) as numeric))*100 as numeric),1) AS c17002_002e1_cv,
ROUND(CAST(ABS((e2.c17002_002m/1.645)/CAST(NULLIF(e2.c17002_002e,0) as numeric))*100 as numeric),1) AS c17002_002e2_cv,
ROUND(CAST(ABS((c17002_002cm/1.645)/CAST(NULLIF(c17002_002c,0) as numeric))*100 as numeric),1) AS c17002_002c_cv,
ROUND(CAST(ABS((c17002_002pm/1.645)/CAST(NULLIF(c17002_002p,0) as numeric))*100 as numeric),1) AS c17002_002p_cv,
ROUND(CAST(ABS((e1.c17002_003m/1.645)/CAST(NULLIF(e1.c17002_003e,0) as numeric))*100 as numeric),1) AS c17002_003e1_cv,
ROUND(CAST(ABS((e2.c17002_003m/1.645)/CAST(NULLIF(e2.c17002_003e,0) as numeric))*100 as numeric),1) AS c17002_003e2_cv,
ROUND(CAST(ABS((c17002_003cm/1.645)/CAST(NULLIF(c17002_003c,0) as numeric))*100 as numeric),1) AS c17002_003c_cv,
ROUND(CAST(ABS((c17002_003pm/1.645)/CAST(NULLIF(c17002_003p,0) as numeric))*100 as numeric),1) AS c17002_003p_cv,
ROUND(CAST(ABS((e1.c17002_004m/1.645)/CAST(NULLIF(e1.c17002_004e,0) as numeric))*100 as numeric),1) AS c17002_004e1_cv,
ROUND(CAST(ABS((e2.c17002_004m/1.645)/CAST(NULLIF(e2.c17002_004e,0) as numeric))*100 as numeric),1) AS c17002_004e2_cv,
ROUND(CAST(ABS((c17002_004cm/1.645)/CAST(NULLIF(c17002_004c,0) as numeric))*100 as numeric),1) AS c17002_004c_cv,
ROUND(CAST(ABS((c17002_004pm/1.645)/CAST(NULLIF(c17002_004p,0) as numeric))*100 as numeric),1) AS c17002_004p_cv,
ROUND(CAST(ABS((e1.c17002_005m/1.645)/CAST(NULLIF(e1.c17002_005e,0) as numeric))*100 as numeric),1) AS c17002_005e1_cv,
ROUND(CAST(ABS((e2.c17002_005m/1.645)/CAST(NULLIF(e2.c17002_005e,0) as numeric))*100 as numeric),1) AS c17002_005e2_cv,
ROUND(CAST(ABS((c17002_005cm/1.645)/CAST(NULLIF(c17002_005c,0) as numeric))*100 as numeric),1) AS c17002_005c_cv,
ROUND(CAST(ABS((c17002_005pm/1.645)/CAST(NULLIF(c17002_005p,0) as numeric))*100 as numeric),1) AS c17002_005p_cv,
ROUND(CAST(ABS((e1.c17002_006m/1.645)/CAST(NULLIF(e1.c17002_006e,0) as numeric))*100 as numeric),1) AS c17002_006e1_cv,
ROUND(CAST(ABS((e2.c17002_006m/1.645)/CAST(NULLIF(e2.c17002_006e,0) as numeric))*100 as numeric),1) AS c17002_006e2_cv,
ROUND(CAST(ABS((c17002_006cm/1.645)/CAST(NULLIF(c17002_006c,0) as numeric))*100 as numeric),1) AS c17002_006c_cv,
ROUND(CAST(ABS((c17002_006pm/1.645)/CAST(NULLIF(c17002_006p,0) as numeric))*100 as numeric),1) AS c17002_006p_cv,
ROUND(CAST(ABS((e1.c17002_007m/1.645)/CAST(NULLIF(e1.c17002_007e,0) as numeric))*100 as numeric),1) AS c17002_007e1_cv,
ROUND(CAST(ABS((e2.c17002_007m/1.645)/CAST(NULLIF(e2.c17002_007e,0) as numeric))*100 as numeric),1) AS c17002_007e2_cv,
ROUND(CAST(ABS((c17002_007cm/1.645)/CAST(NULLIF(c17002_007c,0) as numeric))*100 as numeric),1) AS c17002_007c_cv,
ROUND(CAST(ABS((c17002_007pm/1.645)/CAST(NULLIF(c17002_007p,0) as numeric))*100 as numeric),1) AS c17002_007p_cv,
ROUND(CAST(ABS((e1.c17002_008m/1.645)/CAST(NULLIF(e1.c17002_008e,0) as numeric))*100 as numeric),1) AS c17002_008e1_cv,
ROUND(CAST(ABS((e2.c17002_008m/1.645)/CAST(NULLIF(e2.c17002_008e,0) as numeric))*100 as numeric),1) AS c17002_008e2_cv,
ROUND(CAST(ABS((c17002_008cm/1.645)/CAST(NULLIF(c17002_008c,0) as numeric))*100 as numeric),1) AS c17002_008c_cv,
ROUND(CAST(ABS((c17002_008pm/1.645)/CAST(NULLIF(c17002_008p,0) as numeric))*100 as numeric),1) AS c17002_008p_cv
FROM acs_c17002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_c17002 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_c17002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b19001_cvs;
    CREATE TABLE acs_b19001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b19001_001m/1.645)/CAST(NULLIF(e1.b19001_001e,0) as numeric))*100 as numeric),1) AS b19001_001e1_cv,
ROUND(CAST(ABS((e2.b19001_001m/1.645)/CAST(NULLIF(e2.b19001_001e,0) as numeric))*100 as numeric),1) AS b19001_001e2_cv,
ROUND(CAST(ABS((b19001_001cm/1.645)/CAST(NULLIF(b19001_001c,0) as numeric))*100 as numeric),1) AS b19001_001c_cv,
ROUND(CAST(ABS((b19001_001pm/1.645)/CAST(NULLIF(b19001_001p,0) as numeric))*100 as numeric),1) AS b19001_001p_cv,
ROUND(CAST(ABS((e1.b19001_002m/1.645)/CAST(NULLIF(e1.b19001_002e,0) as numeric))*100 as numeric),1) AS b19001_002e1_cv,
ROUND(CAST(ABS((e2.b19001_002m/1.645)/CAST(NULLIF(e2.b19001_002e,0) as numeric))*100 as numeric),1) AS b19001_002e2_cv,
ROUND(CAST(ABS((b19001_002cm/1.645)/CAST(NULLIF(b19001_002c,0) as numeric))*100 as numeric),1) AS b19001_002c_cv,
ROUND(CAST(ABS((b19001_002pm/1.645)/CAST(NULLIF(b19001_002p,0) as numeric))*100 as numeric),1) AS b19001_002p_cv,
ROUND(CAST(ABS((e1.b19001_003m/1.645)/CAST(NULLIF(e1.b19001_003e,0) as numeric))*100 as numeric),1) AS b19001_003e1_cv,
ROUND(CAST(ABS((e2.b19001_003m/1.645)/CAST(NULLIF(e2.b19001_003e,0) as numeric))*100 as numeric),1) AS b19001_003e2_cv,
ROUND(CAST(ABS((b19001_003cm/1.645)/CAST(NULLIF(b19001_003c,0) as numeric))*100 as numeric),1) AS b19001_003c_cv,
ROUND(CAST(ABS((b19001_003pm/1.645)/CAST(NULLIF(b19001_003p,0) as numeric))*100 as numeric),1) AS b19001_003p_cv,
ROUND(CAST(ABS((e1.b19001_004m/1.645)/CAST(NULLIF(e1.b19001_004e,0) as numeric))*100 as numeric),1) AS b19001_004e1_cv,
ROUND(CAST(ABS((e2.b19001_004m/1.645)/CAST(NULLIF(e2.b19001_004e,0) as numeric))*100 as numeric),1) AS b19001_004e2_cv,
ROUND(CAST(ABS((b19001_004cm/1.645)/CAST(NULLIF(b19001_004c,0) as numeric))*100 as numeric),1) AS b19001_004c_cv,
ROUND(CAST(ABS((b19001_004pm/1.645)/CAST(NULLIF(b19001_004p,0) as numeric))*100 as numeric),1) AS b19001_004p_cv,
ROUND(CAST(ABS((e1.b19001_005m/1.645)/CAST(NULLIF(e1.b19001_005e,0) as numeric))*100 as numeric),1) AS b19001_005e1_cv,
ROUND(CAST(ABS((e2.b19001_005m/1.645)/CAST(NULLIF(e2.b19001_005e,0) as numeric))*100 as numeric),1) AS b19001_005e2_cv,
ROUND(CAST(ABS((b19001_005cm/1.645)/CAST(NULLIF(b19001_005c,0) as numeric))*100 as numeric),1) AS b19001_005c_cv,
ROUND(CAST(ABS((b19001_005pm/1.645)/CAST(NULLIF(b19001_005p,0) as numeric))*100 as numeric),1) AS b19001_005p_cv,
ROUND(CAST(ABS((e1.b19001_006m/1.645)/CAST(NULLIF(e1.b19001_006e,0) as numeric))*100 as numeric),1) AS b19001_006e1_cv,
ROUND(CAST(ABS((e2.b19001_006m/1.645)/CAST(NULLIF(e2.b19001_006e,0) as numeric))*100 as numeric),1) AS b19001_006e2_cv,
ROUND(CAST(ABS((b19001_006cm/1.645)/CAST(NULLIF(b19001_006c,0) as numeric))*100 as numeric),1) AS b19001_006c_cv,
ROUND(CAST(ABS((b19001_006pm/1.645)/CAST(NULLIF(b19001_006p,0) as numeric))*100 as numeric),1) AS b19001_006p_cv,
ROUND(CAST(ABS((e1.b19001_007m/1.645)/CAST(NULLIF(e1.b19001_007e,0) as numeric))*100 as numeric),1) AS b19001_007e1_cv,
ROUND(CAST(ABS((e2.b19001_007m/1.645)/CAST(NULLIF(e2.b19001_007e,0) as numeric))*100 as numeric),1) AS b19001_007e2_cv,
ROUND(CAST(ABS((b19001_007cm/1.645)/CAST(NULLIF(b19001_007c,0) as numeric))*100 as numeric),1) AS b19001_007c_cv,
ROUND(CAST(ABS((b19001_007pm/1.645)/CAST(NULLIF(b19001_007p,0) as numeric))*100 as numeric),1) AS b19001_007p_cv,
ROUND(CAST(ABS((e1.b19001_008m/1.645)/CAST(NULLIF(e1.b19001_008e,0) as numeric))*100 as numeric),1) AS b19001_008e1_cv,
ROUND(CAST(ABS((e2.b19001_008m/1.645)/CAST(NULLIF(e2.b19001_008e,0) as numeric))*100 as numeric),1) AS b19001_008e2_cv,
ROUND(CAST(ABS((b19001_008cm/1.645)/CAST(NULLIF(b19001_008c,0) as numeric))*100 as numeric),1) AS b19001_008c_cv,
ROUND(CAST(ABS((b19001_008pm/1.645)/CAST(NULLIF(b19001_008p,0) as numeric))*100 as numeric),1) AS b19001_008p_cv,
ROUND(CAST(ABS((e1.b19001_009m/1.645)/CAST(NULLIF(e1.b19001_009e,0) as numeric))*100 as numeric),1) AS b19001_009e1_cv,
ROUND(CAST(ABS((e2.b19001_009m/1.645)/CAST(NULLIF(e2.b19001_009e,0) as numeric))*100 as numeric),1) AS b19001_009e2_cv,
ROUND(CAST(ABS((b19001_009cm/1.645)/CAST(NULLIF(b19001_009c,0) as numeric))*100 as numeric),1) AS b19001_009c_cv,
ROUND(CAST(ABS((b19001_009pm/1.645)/CAST(NULLIF(b19001_009p,0) as numeric))*100 as numeric),1) AS b19001_009p_cv,
ROUND(CAST(ABS((e1.b19001_010m/1.645)/CAST(NULLIF(e1.b19001_010e,0) as numeric))*100 as numeric),1) AS b19001_010e1_cv,
ROUND(CAST(ABS((e2.b19001_010m/1.645)/CAST(NULLIF(e2.b19001_010e,0) as numeric))*100 as numeric),1) AS b19001_010e2_cv,
ROUND(CAST(ABS((b19001_010cm/1.645)/CAST(NULLIF(b19001_010c,0) as numeric))*100 as numeric),1) AS b19001_010c_cv,
ROUND(CAST(ABS((b19001_010pm/1.645)/CAST(NULLIF(b19001_010p,0) as numeric))*100 as numeric),1) AS b19001_010p_cv,
ROUND(CAST(ABS((e1.b19001_011m/1.645)/CAST(NULLIF(e1.b19001_011e,0) as numeric))*100 as numeric),1) AS b19001_011e1_cv,
ROUND(CAST(ABS((e2.b19001_011m/1.645)/CAST(NULLIF(e2.b19001_011e,0) as numeric))*100 as numeric),1) AS b19001_011e2_cv,
ROUND(CAST(ABS((b19001_011cm/1.645)/CAST(NULLIF(b19001_011c,0) as numeric))*100 as numeric),1) AS b19001_011c_cv,
ROUND(CAST(ABS((b19001_011pm/1.645)/CAST(NULLIF(b19001_011p,0) as numeric))*100 as numeric),1) AS b19001_011p_cv,
ROUND(CAST(ABS((e1.b19001_012m/1.645)/CAST(NULLIF(e1.b19001_012e,0) as numeric))*100 as numeric),1) AS b19001_012e1_cv,
ROUND(CAST(ABS((e2.b19001_012m/1.645)/CAST(NULLIF(e2.b19001_012e,0) as numeric))*100 as numeric),1) AS b19001_012e2_cv,
ROUND(CAST(ABS((b19001_012cm/1.645)/CAST(NULLIF(b19001_012c,0) as numeric))*100 as numeric),1) AS b19001_012c_cv,
ROUND(CAST(ABS((b19001_012pm/1.645)/CAST(NULLIF(b19001_012p,0) as numeric))*100 as numeric),1) AS b19001_012p_cv,
ROUND(CAST(ABS((e1.b19001_013m/1.645)/CAST(NULLIF(e1.b19001_013e,0) as numeric))*100 as numeric),1) AS b19001_013e1_cv,
ROUND(CAST(ABS((e2.b19001_013m/1.645)/CAST(NULLIF(e2.b19001_013e,0) as numeric))*100 as numeric),1) AS b19001_013e2_cv,
ROUND(CAST(ABS((b19001_013cm/1.645)/CAST(NULLIF(b19001_013c,0) as numeric))*100 as numeric),1) AS b19001_013c_cv,
ROUND(CAST(ABS((b19001_013pm/1.645)/CAST(NULLIF(b19001_013p,0) as numeric))*100 as numeric),1) AS b19001_013p_cv,
ROUND(CAST(ABS((e1.b19001_014m/1.645)/CAST(NULLIF(e1.b19001_014e,0) as numeric))*100 as numeric),1) AS b19001_014e1_cv,
ROUND(CAST(ABS((e2.b19001_014m/1.645)/CAST(NULLIF(e2.b19001_014e,0) as numeric))*100 as numeric),1) AS b19001_014e2_cv,
ROUND(CAST(ABS((b19001_014cm/1.645)/CAST(NULLIF(b19001_014c,0) as numeric))*100 as numeric),1) AS b19001_014c_cv,
ROUND(CAST(ABS((b19001_014pm/1.645)/CAST(NULLIF(b19001_014p,0) as numeric))*100 as numeric),1) AS b19001_014p_cv,
ROUND(CAST(ABS((e1.b19001_015m/1.645)/CAST(NULLIF(e1.b19001_015e,0) as numeric))*100 as numeric),1) AS b19001_015e1_cv,
ROUND(CAST(ABS((e2.b19001_015m/1.645)/CAST(NULLIF(e2.b19001_015e,0) as numeric))*100 as numeric),1) AS b19001_015e2_cv,
ROUND(CAST(ABS((b19001_015cm/1.645)/CAST(NULLIF(b19001_015c,0) as numeric))*100 as numeric),1) AS b19001_015c_cv,
ROUND(CAST(ABS((b19001_015pm/1.645)/CAST(NULLIF(b19001_015p,0) as numeric))*100 as numeric),1) AS b19001_015p_cv,
ROUND(CAST(ABS((e1.b19001_016m/1.645)/CAST(NULLIF(e1.b19001_016e,0) as numeric))*100 as numeric),1) AS b19001_016e1_cv,
ROUND(CAST(ABS((e2.b19001_016m/1.645)/CAST(NULLIF(e2.b19001_016e,0) as numeric))*100 as numeric),1) AS b19001_016e2_cv,
ROUND(CAST(ABS((b19001_016cm/1.645)/CAST(NULLIF(b19001_016c,0) as numeric))*100 as numeric),1) AS b19001_016c_cv,
ROUND(CAST(ABS((b19001_016pm/1.645)/CAST(NULLIF(b19001_016p,0) as numeric))*100 as numeric),1) AS b19001_016p_cv,
ROUND(CAST(ABS((e1.b19001_017m/1.645)/CAST(NULLIF(e1.b19001_017e,0) as numeric))*100 as numeric),1) AS b19001_017e1_cv,
ROUND(CAST(ABS((e2.b19001_017m/1.645)/CAST(NULLIF(e2.b19001_017e,0) as numeric))*100 as numeric),1) AS b19001_017e2_cv,
ROUND(CAST(ABS((b19001_017cm/1.645)/CAST(NULLIF(b19001_017c,0) as numeric))*100 as numeric),1) AS b19001_017c_cv,
ROUND(CAST(ABS((b19001_017pm/1.645)/CAST(NULLIF(b19001_017p,0) as numeric))*100 as numeric),1) AS b19001_017p_cv
FROM acs_b19001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b19001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b19001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b19013_cvs;
    CREATE TABLE acs_b19013_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b19013_001m/1.645)/CAST(NULLIF(e1.b19013_001e,0) as numeric))*100 as numeric),1) AS b19013_001e1_cv,
ROUND(CAST(ABS((e2.b19013_001m/1.645)/CAST(NULLIF(e2.b19013_001e,0) as numeric))*100 as numeric),1) AS b19013_001e2_cv,
ROUND(CAST(ABS((b19013_001cm/1.645)/CAST(NULLIF(b19013_001c,0) as numeric))*100 as numeric),1) AS b19013_001c_cv,
ROUND(CAST(ABS((b19013_001pm/1.645)/CAST(NULLIF(b19013_001p,0) as numeric))*100 as numeric),1) AS b19013_001p_cv
FROM acs_b19013_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b19013_mod e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b19013 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b19083_cvs;
    CREATE TABLE acs_b19083_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b19083_001m/1.645)/CAST(NULLIF(e1.b19083_001e,0) as numeric))*100 as numeric),1) AS b19083_001e1_cv,
ROUND(CAST(ABS((e2.b19083_001m/1.645)/CAST(NULLIF(e2.b19083_001e,0) as numeric))*100 as numeric),1) AS b19083_001e2_cv,
ROUND(CAST(ABS((b19083_001cm/1.645)/CAST(NULLIF(b19083_001c,0) as numeric))*100 as numeric),1) AS b19083_001c_cv,
ROUND(CAST(ABS((b19083_001pm/1.645)/CAST(NULLIF(b19083_001p,0) as numeric))*100 as numeric),1) AS b19083_001p_cv
FROM acs_b19083_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b19083 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b19083 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b23025_cvs;
    CREATE TABLE acs_b23025_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b23025_001m/1.645)/CAST(NULLIF(e1.b23025_001e,0) as numeric))*100 as numeric),1) AS b23025_001e1_cv,
ROUND(CAST(ABS((e2.b23025_001m/1.645)/CAST(NULLIF(e2.b23025_001e,0) as numeric))*100 as numeric),1) AS b23025_001e2_cv,
ROUND(CAST(ABS((b23025_001cm/1.645)/CAST(NULLIF(b23025_001c,0) as numeric))*100 as numeric),1) AS b23025_001c_cv,
ROUND(CAST(ABS((b23025_001pm/1.645)/CAST(NULLIF(b23025_001p,0) as numeric))*100 as numeric),1) AS b23025_001p_cv,
ROUND(CAST(ABS((e1.b23025_002m/1.645)/CAST(NULLIF(e1.b23025_002e,0) as numeric))*100 as numeric),1) AS b23025_002e1_cv,
ROUND(CAST(ABS((e2.b23025_002m/1.645)/CAST(NULLIF(e2.b23025_002e,0) as numeric))*100 as numeric),1) AS b23025_002e2_cv,
ROUND(CAST(ABS((b23025_002cm/1.645)/CAST(NULLIF(b23025_002c,0) as numeric))*100 as numeric),1) AS b23025_002c_cv,
ROUND(CAST(ABS((b23025_002pm/1.645)/CAST(NULLIF(b23025_002p,0) as numeric))*100 as numeric),1) AS b23025_002p_cv,
ROUND(CAST(ABS((e1.b23025_003m/1.645)/CAST(NULLIF(e1.b23025_003e,0) as numeric))*100 as numeric),1) AS b23025_003e1_cv,
ROUND(CAST(ABS((e2.b23025_003m/1.645)/CAST(NULLIF(e2.b23025_003e,0) as numeric))*100 as numeric),1) AS b23025_003e2_cv,
ROUND(CAST(ABS((b23025_003cm/1.645)/CAST(NULLIF(b23025_003c,0) as numeric))*100 as numeric),1) AS b23025_003c_cv,
ROUND(CAST(ABS((b23025_003pm/1.645)/CAST(NULLIF(b23025_003p,0) as numeric))*100 as numeric),1) AS b23025_003p_cv,
ROUND(CAST(ABS((e1.b23025_004m/1.645)/CAST(NULLIF(e1.b23025_004e,0) as numeric))*100 as numeric),1) AS b23025_004e1_cv,
ROUND(CAST(ABS((e2.b23025_004m/1.645)/CAST(NULLIF(e2.b23025_004e,0) as numeric))*100 as numeric),1) AS b23025_004e2_cv,
ROUND(CAST(ABS((b23025_004cm/1.645)/CAST(NULLIF(b23025_004c,0) as numeric))*100 as numeric),1) AS b23025_004c_cv,
ROUND(CAST(ABS((b23025_004pm/1.645)/CAST(NULLIF(b23025_004p,0) as numeric))*100 as numeric),1) AS b23025_004p_cv,
ROUND(CAST(ABS((e1.b23025_005m/1.645)/CAST(NULLIF(e1.b23025_005e,0) as numeric))*100 as numeric),1) AS b23025_005e1_cv,
ROUND(CAST(ABS((e2.b23025_005m/1.645)/CAST(NULLIF(e2.b23025_005e,0) as numeric))*100 as numeric),1) AS b23025_005e2_cv,
ROUND(CAST(ABS((b23025_005cm/1.645)/CAST(NULLIF(b23025_005c,0) as numeric))*100 as numeric),1) AS b23025_005c_cv,
ROUND(CAST(ABS((b23025_005pm/1.645)/CAST(NULLIF(b23025_005p,0) as numeric))*100 as numeric),1) AS b23025_005p_cv,
ROUND(CAST(ABS((e1.b23025_006m/1.645)/CAST(NULLIF(e1.b23025_006e,0) as numeric))*100 as numeric),1) AS b23025_006e1_cv,
ROUND(CAST(ABS((e2.b23025_006m/1.645)/CAST(NULLIF(e2.b23025_006e,0) as numeric))*100 as numeric),1) AS b23025_006e2_cv,
ROUND(CAST(ABS((b23025_006cm/1.645)/CAST(NULLIF(b23025_006c,0) as numeric))*100 as numeric),1) AS b23025_006c_cv,
ROUND(CAST(ABS((b23025_006pm/1.645)/CAST(NULLIF(b23025_006p,0) as numeric))*100 as numeric),1) AS b23025_006p_cv,
ROUND(CAST(ABS((e1.b23025_007m/1.645)/CAST(NULLIF(e1.b23025_007e,0) as numeric))*100 as numeric),1) AS b23025_007e1_cv,
ROUND(CAST(ABS((e2.b23025_007m/1.645)/CAST(NULLIF(e2.b23025_007e,0) as numeric))*100 as numeric),1) AS b23025_007e2_cv,
ROUND(CAST(ABS((b23025_007cm/1.645)/CAST(NULLIF(b23025_007c,0) as numeric))*100 as numeric),1) AS b23025_007c_cv,
ROUND(CAST(ABS((b23025_007pm/1.645)/CAST(NULLIF(b23025_007p,0) as numeric))*100 as numeric),1) AS b23025_007p_cv
FROM acs_b23025_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b23025 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b23025 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_c24030_cvs;
    CREATE TABLE acs_c24030_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.c24030_001m/1.645)/CAST(NULLIF(e1.c24030_001e,0) as numeric))*100 as numeric),1) AS c24030_001e1_cv,
ROUND(CAST(ABS((e2.c24030_001m/1.645)/CAST(NULLIF(e2.c24030_001e,0) as numeric))*100 as numeric),1) AS c24030_001e2_cv,
ROUND(CAST(ABS((c24030_001cm/1.645)/CAST(NULLIF(c24030_001c,0) as numeric))*100 as numeric),1) AS c24030_001c_cv,
ROUND(CAST(ABS((c24030_001pm/1.645)/CAST(NULLIF(c24030_001p,0) as numeric))*100 as numeric),1) AS c24030_001p_cv,
ROUND(CAST(ABS((e1.c24030_002m/1.645)/CAST(NULLIF(e1.c24030_002e,0) as numeric))*100 as numeric),1) AS c24030_002e1_cv,
ROUND(CAST(ABS((e2.c24030_002m/1.645)/CAST(NULLIF(e2.c24030_002e,0) as numeric))*100 as numeric),1) AS c24030_002e2_cv,
ROUND(CAST(ABS((c24030_002cm/1.645)/CAST(NULLIF(c24030_002c,0) as numeric))*100 as numeric),1) AS c24030_002c_cv,
ROUND(CAST(ABS((c24030_002pm/1.645)/CAST(NULLIF(c24030_002p,0) as numeric))*100 as numeric),1) AS c24030_002p_cv,
ROUND(CAST(ABS((e1.c24030_003m/1.645)/CAST(NULLIF(e1.c24030_003e,0) as numeric))*100 as numeric),1) AS c24030_003e1_cv,
ROUND(CAST(ABS((e2.c24030_003m/1.645)/CAST(NULLIF(e2.c24030_003e,0) as numeric))*100 as numeric),1) AS c24030_003e2_cv,
ROUND(CAST(ABS((c24030_003cm/1.645)/CAST(NULLIF(c24030_003c,0) as numeric))*100 as numeric),1) AS c24030_003c_cv,
ROUND(CAST(ABS((c24030_003pm/1.645)/CAST(NULLIF(c24030_003p,0) as numeric))*100 as numeric),1) AS c24030_003p_cv,
ROUND(CAST(ABS((e1.c24030_006m/1.645)/CAST(NULLIF(e1.c24030_006e,0) as numeric))*100 as numeric),1) AS c24030_006e1_cv,
ROUND(CAST(ABS((e2.c24030_006m/1.645)/CAST(NULLIF(e2.c24030_006e,0) as numeric))*100 as numeric),1) AS c24030_006e2_cv,
ROUND(CAST(ABS((c24030_006cm/1.645)/CAST(NULLIF(c24030_006c,0) as numeric))*100 as numeric),1) AS c24030_006c_cv,
ROUND(CAST(ABS((c24030_006pm/1.645)/CAST(NULLIF(c24030_006p,0) as numeric))*100 as numeric),1) AS c24030_006p_cv,
ROUND(CAST(ABS((e1.c24030_007m/1.645)/CAST(NULLIF(e1.c24030_007e,0) as numeric))*100 as numeric),1) AS c24030_007e1_cv,
ROUND(CAST(ABS((e2.c24030_007m/1.645)/CAST(NULLIF(e2.c24030_007e,0) as numeric))*100 as numeric),1) AS c24030_007e2_cv,
ROUND(CAST(ABS((c24030_007cm/1.645)/CAST(NULLIF(c24030_007c,0) as numeric))*100 as numeric),1) AS c24030_007c_cv,
ROUND(CAST(ABS((c24030_007pm/1.645)/CAST(NULLIF(c24030_007p,0) as numeric))*100 as numeric),1) AS c24030_007p_cv,
ROUND(CAST(ABS((e1.c24030_008m/1.645)/CAST(NULLIF(e1.c24030_008e,0) as numeric))*100 as numeric),1) AS c24030_008e1_cv,
ROUND(CAST(ABS((e2.c24030_008m/1.645)/CAST(NULLIF(e2.c24030_008e,0) as numeric))*100 as numeric),1) AS c24030_008e2_cv,
ROUND(CAST(ABS((c24030_008cm/1.645)/CAST(NULLIF(c24030_008c,0) as numeric))*100 as numeric),1) AS c24030_008c_cv,
ROUND(CAST(ABS((c24030_008pm/1.645)/CAST(NULLIF(c24030_008p,0) as numeric))*100 as numeric),1) AS c24030_008p_cv,
ROUND(CAST(ABS((e1.c24030_009m/1.645)/CAST(NULLIF(e1.c24030_009e,0) as numeric))*100 as numeric),1) AS c24030_009e1_cv,
ROUND(CAST(ABS((e2.c24030_009m/1.645)/CAST(NULLIF(e2.c24030_009e,0) as numeric))*100 as numeric),1) AS c24030_009e2_cv,
ROUND(CAST(ABS((c24030_009cm/1.645)/CAST(NULLIF(c24030_009c,0) as numeric))*100 as numeric),1) AS c24030_009c_cv,
ROUND(CAST(ABS((c24030_009pm/1.645)/CAST(NULLIF(c24030_009p,0) as numeric))*100 as numeric),1) AS c24030_009p_cv,
ROUND(CAST(ABS((e1.c24030_010m/1.645)/CAST(NULLIF(e1.c24030_010e,0) as numeric))*100 as numeric),1) AS c24030_010e1_cv,
ROUND(CAST(ABS((e2.c24030_010m/1.645)/CAST(NULLIF(e2.c24030_010e,0) as numeric))*100 as numeric),1) AS c24030_010e2_cv,
ROUND(CAST(ABS((c24030_010cm/1.645)/CAST(NULLIF(c24030_010c,0) as numeric))*100 as numeric),1) AS c24030_010c_cv,
ROUND(CAST(ABS((c24030_010pm/1.645)/CAST(NULLIF(c24030_010p,0) as numeric))*100 as numeric),1) AS c24030_010p_cv,
ROUND(CAST(ABS((e1.c24030_013m/1.645)/CAST(NULLIF(e1.c24030_013e,0) as numeric))*100 as numeric),1) AS c24030_013e1_cv,
ROUND(CAST(ABS((e2.c24030_013m/1.645)/CAST(NULLIF(e2.c24030_013e,0) as numeric))*100 as numeric),1) AS c24030_013e2_cv,
ROUND(CAST(ABS((c24030_013cm/1.645)/CAST(NULLIF(c24030_013c,0) as numeric))*100 as numeric),1) AS c24030_013c_cv,
ROUND(CAST(ABS((c24030_013pm/1.645)/CAST(NULLIF(c24030_013p,0) as numeric))*100 as numeric),1) AS c24030_013p_cv,
ROUND(CAST(ABS((e1.c24030_014m/1.645)/CAST(NULLIF(e1.c24030_014e,0) as numeric))*100 as numeric),1) AS c24030_014e1_cv,
ROUND(CAST(ABS((e2.c24030_014m/1.645)/CAST(NULLIF(e2.c24030_014e,0) as numeric))*100 as numeric),1) AS c24030_014e2_cv,
ROUND(CAST(ABS((c24030_014cm/1.645)/CAST(NULLIF(c24030_014c,0) as numeric))*100 as numeric),1) AS c24030_014c_cv,
ROUND(CAST(ABS((c24030_014pm/1.645)/CAST(NULLIF(c24030_014p,0) as numeric))*100 as numeric),1) AS c24030_014p_cv,
ROUND(CAST(ABS((e1.c24030_017m/1.645)/CAST(NULLIF(e1.c24030_017e,0) as numeric))*100 as numeric),1) AS c24030_017e1_cv,
ROUND(CAST(ABS((e2.c24030_017m/1.645)/CAST(NULLIF(e2.c24030_017e,0) as numeric))*100 as numeric),1) AS c24030_017e2_cv,
ROUND(CAST(ABS((c24030_017cm/1.645)/CAST(NULLIF(c24030_017c,0) as numeric))*100 as numeric),1) AS c24030_017c_cv,
ROUND(CAST(ABS((c24030_017pm/1.645)/CAST(NULLIF(c24030_017p,0) as numeric))*100 as numeric),1) AS c24030_017p_cv,
ROUND(CAST(ABS((e1.c24030_021m/1.645)/CAST(NULLIF(e1.c24030_021e,0) as numeric))*100 as numeric),1) AS c24030_021e1_cv,
ROUND(CAST(ABS((e2.c24030_021m/1.645)/CAST(NULLIF(e2.c24030_021e,0) as numeric))*100 as numeric),1) AS c24030_021e2_cv,
ROUND(CAST(ABS((c24030_021cm/1.645)/CAST(NULLIF(c24030_021c,0) as numeric))*100 as numeric),1) AS c24030_021c_cv,
ROUND(CAST(ABS((c24030_021pm/1.645)/CAST(NULLIF(c24030_021p,0) as numeric))*100 as numeric),1) AS c24030_021p_cv,
ROUND(CAST(ABS((e1.c24030_024m/1.645)/CAST(NULLIF(e1.c24030_024e,0) as numeric))*100 as numeric),1) AS c24030_024e1_cv,
ROUND(CAST(ABS((e2.c24030_024m/1.645)/CAST(NULLIF(e2.c24030_024e,0) as numeric))*100 as numeric),1) AS c24030_024e2_cv,
ROUND(CAST(ABS((c24030_024cm/1.645)/CAST(NULLIF(c24030_024c,0) as numeric))*100 as numeric),1) AS c24030_024c_cv,
ROUND(CAST(ABS((c24030_024pm/1.645)/CAST(NULLIF(c24030_024p,0) as numeric))*100 as numeric),1) AS c24030_024p_cv,
ROUND(CAST(ABS((e1.c24030_027m/1.645)/CAST(NULLIF(e1.c24030_027e,0) as numeric))*100 as numeric),1) AS c24030_027e1_cv,
ROUND(CAST(ABS((e2.c24030_027m/1.645)/CAST(NULLIF(e2.c24030_027e,0) as numeric))*100 as numeric),1) AS c24030_027e2_cv,
ROUND(CAST(ABS((c24030_027cm/1.645)/CAST(NULLIF(c24030_027c,0) as numeric))*100 as numeric),1) AS c24030_027c_cv,
ROUND(CAST(ABS((c24030_027pm/1.645)/CAST(NULLIF(c24030_027p,0) as numeric))*100 as numeric),1) AS c24030_027p_cv,
ROUND(CAST(ABS((e1.c24030_028m/1.645)/CAST(NULLIF(e1.c24030_028e,0) as numeric))*100 as numeric),1) AS c24030_028e1_cv,
ROUND(CAST(ABS((e2.c24030_028m/1.645)/CAST(NULLIF(e2.c24030_028e,0) as numeric))*100 as numeric),1) AS c24030_028e2_cv,
ROUND(CAST(ABS((c24030_028cm/1.645)/CAST(NULLIF(c24030_028c,0) as numeric))*100 as numeric),1) AS c24030_028c_cv,
ROUND(CAST(ABS((c24030_028pm/1.645)/CAST(NULLIF(c24030_028p,0) as numeric))*100 as numeric),1) AS c24030_028p_cv,
ROUND(CAST(ABS((e1.c24030_029m/1.645)/CAST(NULLIF(e1.c24030_029e,0) as numeric))*100 as numeric),1) AS c24030_029e1_cv,
ROUND(CAST(ABS((e2.c24030_029m/1.645)/CAST(NULLIF(e2.c24030_029e,0) as numeric))*100 as numeric),1) AS c24030_029e2_cv,
ROUND(CAST(ABS((c24030_029cm/1.645)/CAST(NULLIF(c24030_029c,0) as numeric))*100 as numeric),1) AS c24030_029c_cv,
ROUND(CAST(ABS((c24030_029pm/1.645)/CAST(NULLIF(c24030_029p,0) as numeric))*100 as numeric),1) AS c24030_029p_cv,
ROUND(CAST(ABS((e1.c24030_030m/1.645)/CAST(NULLIF(e1.c24030_030e,0) as numeric))*100 as numeric),1) AS c24030_030e1_cv,
ROUND(CAST(ABS((e2.c24030_030m/1.645)/CAST(NULLIF(e2.c24030_030e,0) as numeric))*100 as numeric),1) AS c24030_030e2_cv,
ROUND(CAST(ABS((c24030_030cm/1.645)/CAST(NULLIF(c24030_030c,0) as numeric))*100 as numeric),1) AS c24030_030c_cv,
ROUND(CAST(ABS((c24030_030pm/1.645)/CAST(NULLIF(c24030_030p,0) as numeric))*100 as numeric),1) AS c24030_030p_cv,
ROUND(CAST(ABS((e1.c24030_033m/1.645)/CAST(NULLIF(e1.c24030_033e,0) as numeric))*100 as numeric),1) AS c24030_033e1_cv,
ROUND(CAST(ABS((e2.c24030_033m/1.645)/CAST(NULLIF(e2.c24030_033e,0) as numeric))*100 as numeric),1) AS c24030_033e2_cv,
ROUND(CAST(ABS((c24030_033cm/1.645)/CAST(NULLIF(c24030_033c,0) as numeric))*100 as numeric),1) AS c24030_033c_cv,
ROUND(CAST(ABS((c24030_033pm/1.645)/CAST(NULLIF(c24030_033p,0) as numeric))*100 as numeric),1) AS c24030_033p_cv,
ROUND(CAST(ABS((e1.c24030_034m/1.645)/CAST(NULLIF(e1.c24030_034e,0) as numeric))*100 as numeric),1) AS c24030_034e1_cv,
ROUND(CAST(ABS((e2.c24030_034m/1.645)/CAST(NULLIF(e2.c24030_034e,0) as numeric))*100 as numeric),1) AS c24030_034e2_cv,
ROUND(CAST(ABS((c24030_034cm/1.645)/CAST(NULLIF(c24030_034c,0) as numeric))*100 as numeric),1) AS c24030_034c_cv,
ROUND(CAST(ABS((c24030_034pm/1.645)/CAST(NULLIF(c24030_034p,0) as numeric))*100 as numeric),1) AS c24030_034p_cv,
ROUND(CAST(ABS((e1.c24030_035m/1.645)/CAST(NULLIF(e1.c24030_035e,0) as numeric))*100 as numeric),1) AS c24030_035e1_cv,
ROUND(CAST(ABS((e2.c24030_035m/1.645)/CAST(NULLIF(e2.c24030_035e,0) as numeric))*100 as numeric),1) AS c24030_035e2_cv,
ROUND(CAST(ABS((c24030_035cm/1.645)/CAST(NULLIF(c24030_035c,0) as numeric))*100 as numeric),1) AS c24030_035c_cv,
ROUND(CAST(ABS((c24030_035pm/1.645)/CAST(NULLIF(c24030_035p,0) as numeric))*100 as numeric),1) AS c24030_035p_cv,
ROUND(CAST(ABS((e1.c24030_036m/1.645)/CAST(NULLIF(e1.c24030_036e,0) as numeric))*100 as numeric),1) AS c24030_036e1_cv,
ROUND(CAST(ABS((e2.c24030_036m/1.645)/CAST(NULLIF(e2.c24030_036e,0) as numeric))*100 as numeric),1) AS c24030_036e2_cv,
ROUND(CAST(ABS((c24030_036cm/1.645)/CAST(NULLIF(c24030_036c,0) as numeric))*100 as numeric),1) AS c24030_036c_cv,
ROUND(CAST(ABS((c24030_036pm/1.645)/CAST(NULLIF(c24030_036p,0) as numeric))*100 as numeric),1) AS c24030_036p_cv,
ROUND(CAST(ABS((e1.c24030_037m/1.645)/CAST(NULLIF(e1.c24030_037e,0) as numeric))*100 as numeric),1) AS c24030_037e1_cv,
ROUND(CAST(ABS((e2.c24030_037m/1.645)/CAST(NULLIF(e2.c24030_037e,0) as numeric))*100 as numeric),1) AS c24030_037e2_cv,
ROUND(CAST(ABS((c24030_037cm/1.645)/CAST(NULLIF(c24030_037c,0) as numeric))*100 as numeric),1) AS c24030_037c_cv,
ROUND(CAST(ABS((c24030_037pm/1.645)/CAST(NULLIF(c24030_037p,0) as numeric))*100 as numeric),1) AS c24030_037p_cv,
ROUND(CAST(ABS((e1.c24030_040m/1.645)/CAST(NULLIF(e1.c24030_040e,0) as numeric))*100 as numeric),1) AS c24030_040e1_cv,
ROUND(CAST(ABS((e2.c24030_040m/1.645)/CAST(NULLIF(e2.c24030_040e,0) as numeric))*100 as numeric),1) AS c24030_040e2_cv,
ROUND(CAST(ABS((c24030_040cm/1.645)/CAST(NULLIF(c24030_040c,0) as numeric))*100 as numeric),1) AS c24030_040c_cv,
ROUND(CAST(ABS((c24030_040pm/1.645)/CAST(NULLIF(c24030_040p,0) as numeric))*100 as numeric),1) AS c24030_040p_cv,
ROUND(CAST(ABS((e1.c24030_041m/1.645)/CAST(NULLIF(e1.c24030_041e,0) as numeric))*100 as numeric),1) AS c24030_041e1_cv,
ROUND(CAST(ABS((e2.c24030_041m/1.645)/CAST(NULLIF(e2.c24030_041e,0) as numeric))*100 as numeric),1) AS c24030_041e2_cv,
ROUND(CAST(ABS((c24030_041cm/1.645)/CAST(NULLIF(c24030_041c,0) as numeric))*100 as numeric),1) AS c24030_041c_cv,
ROUND(CAST(ABS((c24030_041pm/1.645)/CAST(NULLIF(c24030_041p,0) as numeric))*100 as numeric),1) AS c24030_041p_cv,
ROUND(CAST(ABS((e1.c24030_044m/1.645)/CAST(NULLIF(e1.c24030_044e,0) as numeric))*100 as numeric),1) AS c24030_044e1_cv,
ROUND(CAST(ABS((e2.c24030_044m/1.645)/CAST(NULLIF(e2.c24030_044e,0) as numeric))*100 as numeric),1) AS c24030_044e2_cv,
ROUND(CAST(ABS((c24030_044cm/1.645)/CAST(NULLIF(c24030_044c,0) as numeric))*100 as numeric),1) AS c24030_044c_cv,
ROUND(CAST(ABS((c24030_044pm/1.645)/CAST(NULLIF(c24030_044p,0) as numeric))*100 as numeric),1) AS c24030_044p_cv,
ROUND(CAST(ABS((e1.c24030_048m/1.645)/CAST(NULLIF(e1.c24030_048e,0) as numeric))*100 as numeric),1) AS c24030_048e1_cv,
ROUND(CAST(ABS((e2.c24030_048m/1.645)/CAST(NULLIF(e2.c24030_048e,0) as numeric))*100 as numeric),1) AS c24030_048e2_cv,
ROUND(CAST(ABS((c24030_048cm/1.645)/CAST(NULLIF(c24030_048c,0) as numeric))*100 as numeric),1) AS c24030_048c_cv,
ROUND(CAST(ABS((c24030_048pm/1.645)/CAST(NULLIF(c24030_048p,0) as numeric))*100 as numeric),1) AS c24030_048p_cv,
ROUND(CAST(ABS((e1.c24030_051m/1.645)/CAST(NULLIF(e1.c24030_051e,0) as numeric))*100 as numeric),1) AS c24030_051e1_cv,
ROUND(CAST(ABS((e2.c24030_051m/1.645)/CAST(NULLIF(e2.c24030_051e,0) as numeric))*100 as numeric),1) AS c24030_051e2_cv,
ROUND(CAST(ABS((c24030_051cm/1.645)/CAST(NULLIF(c24030_051c,0) as numeric))*100 as numeric),1) AS c24030_051c_cv,
ROUND(CAST(ABS((c24030_051pm/1.645)/CAST(NULLIF(c24030_051p,0) as numeric))*100 as numeric),1) AS c24030_051p_cv,
ROUND(CAST(ABS((e1.c24030_054m/1.645)/CAST(NULLIF(e1.c24030_054e,0) as numeric))*100 as numeric),1) AS c24030_054e1_cv,
ROUND(CAST(ABS((e2.c24030_054m/1.645)/CAST(NULLIF(e2.c24030_054e,0) as numeric))*100 as numeric),1) AS c24030_054e2_cv,
ROUND(CAST(ABS((c24030_054cm/1.645)/CAST(NULLIF(c24030_054c,0) as numeric))*100 as numeric),1) AS c24030_054c_cv,
ROUND(CAST(ABS((c24030_054pm/1.645)/CAST(NULLIF(c24030_054p,0) as numeric))*100 as numeric),1) AS c24030_054p_cv,
ROUND(CAST(ABS((e1.c24030_055m/1.645)/CAST(NULLIF(e1.c24030_055e,0) as numeric))*100 as numeric),1) AS c24030_055e1_cv,
ROUND(CAST(ABS((e2.c24030_055m/1.645)/CAST(NULLIF(e2.c24030_055e,0) as numeric))*100 as numeric),1) AS c24030_055e2_cv,
ROUND(CAST(ABS((c24030_055cm/1.645)/CAST(NULLIF(c24030_055c,0) as numeric))*100 as numeric),1) AS c24030_055c_cv,
ROUND(CAST(ABS((c24030_055pm/1.645)/CAST(NULLIF(c24030_055p,0) as numeric))*100 as numeric),1) AS c24030_055p_cv
FROM acs_c24030_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_c24030 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_c24030 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25002_cvs;
    CREATE TABLE acs_b25002_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25002_001m/1.645)/CAST(NULLIF(e1.b25002_001e,0) as numeric))*100 as numeric),1) AS b25002_001e1_cv,
ROUND(CAST(ABS((e2.b25002_001m/1.645)/CAST(NULLIF(e2.b25002_001e,0) as numeric))*100 as numeric),1) AS b25002_001e2_cv,
ROUND(CAST(ABS((b25002_001cm/1.645)/CAST(NULLIF(b25002_001c,0) as numeric))*100 as numeric),1) AS b25002_001c_cv,
ROUND(CAST(ABS((b25002_001pm/1.645)/CAST(NULLIF(b25002_001p,0) as numeric))*100 as numeric),1) AS b25002_001p_cv,
ROUND(CAST(ABS((e1.b25002_002m/1.645)/CAST(NULLIF(e1.b25002_002e,0) as numeric))*100 as numeric),1) AS b25002_002e1_cv,
ROUND(CAST(ABS((e2.b25002_002m/1.645)/CAST(NULLIF(e2.b25002_002e,0) as numeric))*100 as numeric),1) AS b25002_002e2_cv,
ROUND(CAST(ABS((b25002_002cm/1.645)/CAST(NULLIF(b25002_002c,0) as numeric))*100 as numeric),1) AS b25002_002c_cv,
ROUND(CAST(ABS((b25002_002pm/1.645)/CAST(NULLIF(b25002_002p,0) as numeric))*100 as numeric),1) AS b25002_002p_cv,
ROUND(CAST(ABS((e1.b25002_003m/1.645)/CAST(NULLIF(e1.b25002_003e,0) as numeric))*100 as numeric),1) AS b25002_003e1_cv,
ROUND(CAST(ABS((e2.b25002_003m/1.645)/CAST(NULLIF(e2.b25002_003e,0) as numeric))*100 as numeric),1) AS b25002_003e2_cv,
ROUND(CAST(ABS((b25002_003cm/1.645)/CAST(NULLIF(b25002_003c,0) as numeric))*100 as numeric),1) AS b25002_003c_cv,
ROUND(CAST(ABS((b25002_003pm/1.645)/CAST(NULLIF(b25002_003p,0) as numeric))*100 as numeric),1) AS b25002_003p_cv
FROM acs_b25002_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25002 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25002 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25003_cvs;
    CREATE TABLE acs_b25003_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25003_001m/1.645)/CAST(NULLIF(e1.b25003_001e,0) as numeric))*100 as numeric),1) AS b25003_001e1_cv,
ROUND(CAST(ABS((e2.b25003_001m/1.645)/CAST(NULLIF(e2.b25003_001e,0) as numeric))*100 as numeric),1) AS b25003_001e2_cv,
ROUND(CAST(ABS((b25003_001cm/1.645)/CAST(NULLIF(b25003_001c,0) as numeric))*100 as numeric),1) AS b25003_001c_cv,
ROUND(CAST(ABS((b25003_001pm/1.645)/CAST(NULLIF(b25003_001p,0) as numeric))*100 as numeric),1) AS b25003_001p_cv,
ROUND(CAST(ABS((e1.b25003_002m/1.645)/CAST(NULLIF(e1.b25003_002e,0) as numeric))*100 as numeric),1) AS b25003_002e1_cv,
ROUND(CAST(ABS((e2.b25003_002m/1.645)/CAST(NULLIF(e2.b25003_002e,0) as numeric))*100 as numeric),1) AS b25003_002e2_cv,
ROUND(CAST(ABS((b25003_002cm/1.645)/CAST(NULLIF(b25003_002c,0) as numeric))*100 as numeric),1) AS b25003_002c_cv,
ROUND(CAST(ABS((b25003_002pm/1.645)/CAST(NULLIF(b25003_002p,0) as numeric))*100 as numeric),1) AS b25003_002p_cv,
ROUND(CAST(ABS((e1.b25003_003m/1.645)/CAST(NULLIF(e1.b25003_003e,0) as numeric))*100 as numeric),1) AS b25003_003e1_cv,
ROUND(CAST(ABS((e2.b25003_003m/1.645)/CAST(NULLIF(e2.b25003_003e,0) as numeric))*100 as numeric),1) AS b25003_003e2_cv,
ROUND(CAST(ABS((b25003_003cm/1.645)/CAST(NULLIF(b25003_003c,0) as numeric))*100 as numeric),1) AS b25003_003c_cv,
ROUND(CAST(ABS((b25003_003pm/1.645)/CAST(NULLIF(b25003_003p,0) as numeric))*100 as numeric),1) AS b25003_003p_cv
FROM acs_b25003_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25003 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25003 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25010_cvs;
    CREATE TABLE acs_b25010_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25010_001m/1.645)/CAST(NULLIF(e1.b25010_001e,0) as numeric))*100 as numeric),1) AS b25010_001e1_cv,
ROUND(CAST(ABS((e2.b25010_001m/1.645)/CAST(NULLIF(e2.b25010_001e,0) as numeric))*100 as numeric),1) AS b25010_001e2_cv,
ROUND(CAST(ABS((b25010_001cm/1.645)/CAST(NULLIF(b25010_001c,0) as numeric))*100 as numeric),1) AS b25010_001c_cv,
ROUND(CAST(ABS((b25010_001pm/1.645)/CAST(NULLIF(b25010_001p,0) as numeric))*100 as numeric),1) AS b25010_001p_cv,
ROUND(CAST(ABS((e1.b25010_002m/1.645)/CAST(NULLIF(e1.b25010_002e,0) as numeric))*100 as numeric),1) AS b25010_002e1_cv,
ROUND(CAST(ABS((e2.b25010_002m/1.645)/CAST(NULLIF(e2.b25010_002e,0) as numeric))*100 as numeric),1) AS b25010_002e2_cv,
ROUND(CAST(ABS((b25010_002cm/1.645)/CAST(NULLIF(b25010_002c,0) as numeric))*100 as numeric),1) AS b25010_002c_cv,
ROUND(CAST(ABS((b25010_002pm/1.645)/CAST(NULLIF(b25010_002p,0) as numeric))*100 as numeric),1) AS b25010_002p_cv,
ROUND(CAST(ABS((e1.b25010_003m/1.645)/CAST(NULLIF(e1.b25010_003e,0) as numeric))*100 as numeric),1) AS b25010_003e1_cv,
ROUND(CAST(ABS((e2.b25010_003m/1.645)/CAST(NULLIF(e2.b25010_003e,0) as numeric))*100 as numeric),1) AS b25010_003e2_cv,
ROUND(CAST(ABS((b25010_003cm/1.645)/CAST(NULLIF(b25010_003c,0) as numeric))*100 as numeric),1) AS b25010_003c_cv,
ROUND(CAST(ABS((b25010_003pm/1.645)/CAST(NULLIF(b25010_003p,0) as numeric))*100 as numeric),1) AS b25010_003p_cv
FROM acs_b25010_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25010 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25010 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25063_cvs;
    CREATE TABLE acs_b25063_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25063_001m/1.645)/CAST(NULLIF(e1.b25063_001e,0) as numeric))*100 as numeric),1) AS b25063_001e1_cv,
ROUND(CAST(ABS((e2.b25063_001m/1.645)/CAST(NULLIF(e2.b25063_001e,0) as numeric))*100 as numeric),1) AS b25063_001e2_cv,
ROUND(CAST(ABS((b25063_001cm/1.645)/CAST(NULLIF(b25063_001c,0) as numeric))*100 as numeric),1) AS b25063_001c_cv,
ROUND(CAST(ABS((b25063_001pm/1.645)/CAST(NULLIF(b25063_001p,0) as numeric))*100 as numeric),1) AS b25063_001p_cv,
ROUND(CAST(ABS((e1.b25063_002m/1.645)/CAST(NULLIF(e1.b25063_002e,0) as numeric))*100 as numeric),1) AS b25063_002e1_cv,
ROUND(CAST(ABS((e2.b25063_002m/1.645)/CAST(NULLIF(e2.b25063_002e,0) as numeric))*100 as numeric),1) AS b25063_002e2_cv,
ROUND(CAST(ABS((b25063_002cm/1.645)/CAST(NULLIF(b25063_002c,0) as numeric))*100 as numeric),1) AS b25063_002c_cv,
ROUND(CAST(ABS((b25063_002pm/1.645)/CAST(NULLIF(b25063_002p,0) as numeric))*100 as numeric),1) AS b25063_002p_cv,
ROUND(CAST(ABS((e1.b25063_003m/1.645)/CAST(NULLIF(e1.b25063_003e,0) as numeric))*100 as numeric),1) AS b25063_003e1_cv,
ROUND(CAST(ABS((e2.b25063_003m/1.645)/CAST(NULLIF(e2.b25063_003e,0) as numeric))*100 as numeric),1) AS b25063_003e2_cv,
ROUND(CAST(ABS((b25063_003cm/1.645)/CAST(NULLIF(b25063_003c,0) as numeric))*100 as numeric),1) AS b25063_003c_cv,
ROUND(CAST(ABS((b25063_003pm/1.645)/CAST(NULLIF(b25063_003p,0) as numeric))*100 as numeric),1) AS b25063_003p_cv,
ROUND(CAST(ABS((e1.b25063_004m/1.645)/CAST(NULLIF(e1.b25063_004e,0) as numeric))*100 as numeric),1) AS b25063_004e1_cv,
ROUND(CAST(ABS((e2.b25063_004m/1.645)/CAST(NULLIF(e2.b25063_004e,0) as numeric))*100 as numeric),1) AS b25063_004e2_cv,
ROUND(CAST(ABS((b25063_004cm/1.645)/CAST(NULLIF(b25063_004c,0) as numeric))*100 as numeric),1) AS b25063_004c_cv,
ROUND(CAST(ABS((b25063_004pm/1.645)/CAST(NULLIF(b25063_004p,0) as numeric))*100 as numeric),1) AS b25063_004p_cv,
ROUND(CAST(ABS((e1.b25063_005m/1.645)/CAST(NULLIF(e1.b25063_005e,0) as numeric))*100 as numeric),1) AS b25063_005e1_cv,
ROUND(CAST(ABS((e2.b25063_005m/1.645)/CAST(NULLIF(e2.b25063_005e,0) as numeric))*100 as numeric),1) AS b25063_005e2_cv,
ROUND(CAST(ABS((b25063_005cm/1.645)/CAST(NULLIF(b25063_005c,0) as numeric))*100 as numeric),1) AS b25063_005c_cv,
ROUND(CAST(ABS((b25063_005pm/1.645)/CAST(NULLIF(b25063_005p,0) as numeric))*100 as numeric),1) AS b25063_005p_cv,
ROUND(CAST(ABS((e1.b25063_006m/1.645)/CAST(NULLIF(e1.b25063_006e,0) as numeric))*100 as numeric),1) AS b25063_006e1_cv,
ROUND(CAST(ABS((e2.b25063_006m/1.645)/CAST(NULLIF(e2.b25063_006e,0) as numeric))*100 as numeric),1) AS b25063_006e2_cv,
ROUND(CAST(ABS((b25063_006cm/1.645)/CAST(NULLIF(b25063_006c,0) as numeric))*100 as numeric),1) AS b25063_006c_cv,
ROUND(CAST(ABS((b25063_006pm/1.645)/CAST(NULLIF(b25063_006p,0) as numeric))*100 as numeric),1) AS b25063_006p_cv,
ROUND(CAST(ABS((e1.b25063_007m/1.645)/CAST(NULLIF(e1.b25063_007e,0) as numeric))*100 as numeric),1) AS b25063_007e1_cv,
ROUND(CAST(ABS((e2.b25063_007m/1.645)/CAST(NULLIF(e2.b25063_007e,0) as numeric))*100 as numeric),1) AS b25063_007e2_cv,
ROUND(CAST(ABS((b25063_007cm/1.645)/CAST(NULLIF(b25063_007c,0) as numeric))*100 as numeric),1) AS b25063_007c_cv,
ROUND(CAST(ABS((b25063_007pm/1.645)/CAST(NULLIF(b25063_007p,0) as numeric))*100 as numeric),1) AS b25063_007p_cv,
ROUND(CAST(ABS((e1.b25063_008m/1.645)/CAST(NULLIF(e1.b25063_008e,0) as numeric))*100 as numeric),1) AS b25063_008e1_cv,
ROUND(CAST(ABS((e2.b25063_008m/1.645)/CAST(NULLIF(e2.b25063_008e,0) as numeric))*100 as numeric),1) AS b25063_008e2_cv,
ROUND(CAST(ABS((b25063_008cm/1.645)/CAST(NULLIF(b25063_008c,0) as numeric))*100 as numeric),1) AS b25063_008c_cv,
ROUND(CAST(ABS((b25063_008pm/1.645)/CAST(NULLIF(b25063_008p,0) as numeric))*100 as numeric),1) AS b25063_008p_cv,
ROUND(CAST(ABS((e1.b25063_009m/1.645)/CAST(NULLIF(e1.b25063_009e,0) as numeric))*100 as numeric),1) AS b25063_009e1_cv,
ROUND(CAST(ABS((e2.b25063_009m/1.645)/CAST(NULLIF(e2.b25063_009e,0) as numeric))*100 as numeric),1) AS b25063_009e2_cv,
ROUND(CAST(ABS((b25063_009cm/1.645)/CAST(NULLIF(b25063_009c,0) as numeric))*100 as numeric),1) AS b25063_009c_cv,
ROUND(CAST(ABS((b25063_009pm/1.645)/CAST(NULLIF(b25063_009p,0) as numeric))*100 as numeric),1) AS b25063_009p_cv,
ROUND(CAST(ABS((e1.b25063_010m/1.645)/CAST(NULLIF(e1.b25063_010e,0) as numeric))*100 as numeric),1) AS b25063_010e1_cv,
ROUND(CAST(ABS((e2.b25063_010m/1.645)/CAST(NULLIF(e2.b25063_010e,0) as numeric))*100 as numeric),1) AS b25063_010e2_cv,
ROUND(CAST(ABS((b25063_010cm/1.645)/CAST(NULLIF(b25063_010c,0) as numeric))*100 as numeric),1) AS b25063_010c_cv,
ROUND(CAST(ABS((b25063_010pm/1.645)/CAST(NULLIF(b25063_010p,0) as numeric))*100 as numeric),1) AS b25063_010p_cv,
ROUND(CAST(ABS((e1.b25063_011m/1.645)/CAST(NULLIF(e1.b25063_011e,0) as numeric))*100 as numeric),1) AS b25063_011e1_cv,
ROUND(CAST(ABS((e2.b25063_011m/1.645)/CAST(NULLIF(e2.b25063_011e,0) as numeric))*100 as numeric),1) AS b25063_011e2_cv,
ROUND(CAST(ABS((b25063_011cm/1.645)/CAST(NULLIF(b25063_011c,0) as numeric))*100 as numeric),1) AS b25063_011c_cv,
ROUND(CAST(ABS((b25063_011pm/1.645)/CAST(NULLIF(b25063_011p,0) as numeric))*100 as numeric),1) AS b25063_011p_cv,
ROUND(CAST(ABS((e1.b25063_012m/1.645)/CAST(NULLIF(e1.b25063_012e,0) as numeric))*100 as numeric),1) AS b25063_012e1_cv,
ROUND(CAST(ABS((e2.b25063_012m/1.645)/CAST(NULLIF(e2.b25063_012e,0) as numeric))*100 as numeric),1) AS b25063_012e2_cv,
ROUND(CAST(ABS((b25063_012cm/1.645)/CAST(NULLIF(b25063_012c,0) as numeric))*100 as numeric),1) AS b25063_012c_cv,
ROUND(CAST(ABS((b25063_012pm/1.645)/CAST(NULLIF(b25063_012p,0) as numeric))*100 as numeric),1) AS b25063_012p_cv,
ROUND(CAST(ABS((e1.b25063_013m/1.645)/CAST(NULLIF(e1.b25063_013e,0) as numeric))*100 as numeric),1) AS b25063_013e1_cv,
ROUND(CAST(ABS((e2.b25063_013m/1.645)/CAST(NULLIF(e2.b25063_013e,0) as numeric))*100 as numeric),1) AS b25063_013e2_cv,
ROUND(CAST(ABS((b25063_013cm/1.645)/CAST(NULLIF(b25063_013c,0) as numeric))*100 as numeric),1) AS b25063_013c_cv,
ROUND(CAST(ABS((b25063_013pm/1.645)/CAST(NULLIF(b25063_013p,0) as numeric))*100 as numeric),1) AS b25063_013p_cv,
ROUND(CAST(ABS((e1.b25063_014m/1.645)/CAST(NULLIF(e1.b25063_014e,0) as numeric))*100 as numeric),1) AS b25063_014e1_cv,
ROUND(CAST(ABS((e2.b25063_014m/1.645)/CAST(NULLIF(e2.b25063_014e,0) as numeric))*100 as numeric),1) AS b25063_014e2_cv,
ROUND(CAST(ABS((b25063_014cm/1.645)/CAST(NULLIF(b25063_014c,0) as numeric))*100 as numeric),1) AS b25063_014c_cv,
ROUND(CAST(ABS((b25063_014pm/1.645)/CAST(NULLIF(b25063_014p,0) as numeric))*100 as numeric),1) AS b25063_014p_cv,
ROUND(CAST(ABS((e1.b25063_015m/1.645)/CAST(NULLIF(e1.b25063_015e,0) as numeric))*100 as numeric),1) AS b25063_015e1_cv,
ROUND(CAST(ABS((e2.b25063_015m/1.645)/CAST(NULLIF(e2.b25063_015e,0) as numeric))*100 as numeric),1) AS b25063_015e2_cv,
ROUND(CAST(ABS((b25063_015cm/1.645)/CAST(NULLIF(b25063_015c,0) as numeric))*100 as numeric),1) AS b25063_015c_cv,
ROUND(CAST(ABS((b25063_015pm/1.645)/CAST(NULLIF(b25063_015p,0) as numeric))*100 as numeric),1) AS b25063_015p_cv,
ROUND(CAST(ABS((e1.b25063_016m/1.645)/CAST(NULLIF(e1.b25063_016e,0) as numeric))*100 as numeric),1) AS b25063_016e1_cv,
ROUND(CAST(ABS((e2.b25063_016m/1.645)/CAST(NULLIF(e2.b25063_016e,0) as numeric))*100 as numeric),1) AS b25063_016e2_cv,
ROUND(CAST(ABS((b25063_016cm/1.645)/CAST(NULLIF(b25063_016c,0) as numeric))*100 as numeric),1) AS b25063_016c_cv,
ROUND(CAST(ABS((b25063_016pm/1.645)/CAST(NULLIF(b25063_016p,0) as numeric))*100 as numeric),1) AS b25063_016p_cv,
ROUND(CAST(ABS((e1.b25063_017m/1.645)/CAST(NULLIF(e1.b25063_017e,0) as numeric))*100 as numeric),1) AS b25063_017e1_cv,
ROUND(CAST(ABS((e2.b25063_017m/1.645)/CAST(NULLIF(e2.b25063_017e,0) as numeric))*100 as numeric),1) AS b25063_017e2_cv,
ROUND(CAST(ABS((b25063_017cm/1.645)/CAST(NULLIF(b25063_017c,0) as numeric))*100 as numeric),1) AS b25063_017c_cv,
ROUND(CAST(ABS((b25063_017pm/1.645)/CAST(NULLIF(b25063_017p,0) as numeric))*100 as numeric),1) AS b25063_017p_cv,
ROUND(CAST(ABS((e1.b25063_018m/1.645)/CAST(NULLIF(e1.b25063_018e,0) as numeric))*100 as numeric),1) AS b25063_018e1_cv,
ROUND(CAST(ABS((e2.b25063_018m/1.645)/CAST(NULLIF(e2.b25063_018e,0) as numeric))*100 as numeric),1) AS b25063_018e2_cv,
ROUND(CAST(ABS((b25063_018cm/1.645)/CAST(NULLIF(b25063_018c,0) as numeric))*100 as numeric),1) AS b25063_018c_cv,
ROUND(CAST(ABS((b25063_018pm/1.645)/CAST(NULLIF(b25063_018p,0) as numeric))*100 as numeric),1) AS b25063_018p_cv,
ROUND(CAST(ABS((e1.b25063_019m/1.645)/CAST(NULLIF(e1.b25063_019e,0) as numeric))*100 as numeric),1) AS b25063_019e1_cv,
ROUND(CAST(ABS((e2.b25063_019m/1.645)/CAST(NULLIF(e2.b25063_019e,0) as numeric))*100 as numeric),1) AS b25063_019e2_cv,
ROUND(CAST(ABS((b25063_019cm/1.645)/CAST(NULLIF(b25063_019c,0) as numeric))*100 as numeric),1) AS b25063_019c_cv,
ROUND(CAST(ABS((b25063_019pm/1.645)/CAST(NULLIF(b25063_019p,0) as numeric))*100 as numeric),1) AS b25063_019p_cv,
ROUND(CAST(ABS((e1.b25063_020m/1.645)/CAST(NULLIF(e1.b25063_020e,0) as numeric))*100 as numeric),1) AS b25063_020e1_cv,
ROUND(CAST(ABS((e2.b25063_020m/1.645)/CAST(NULLIF(e2.b25063_020e,0) as numeric))*100 as numeric),1) AS b25063_020e2_cv,
ROUND(CAST(ABS((b25063_020cm/1.645)/CAST(NULLIF(b25063_020c,0) as numeric))*100 as numeric),1) AS b25063_020c_cv,
ROUND(CAST(ABS((b25063_020pm/1.645)/CAST(NULLIF(b25063_020p,0) as numeric))*100 as numeric),1) AS b25063_020p_cv,
ROUND(CAST(ABS((e1.b25063_021m/1.645)/CAST(NULLIF(e1.b25063_021e,0) as numeric))*100 as numeric),1) AS b25063_021e1_cv,
ROUND(CAST(ABS((e2.b25063_021m/1.645)/CAST(NULLIF(e2.b25063_021e,0) as numeric))*100 as numeric),1) AS b25063_021e2_cv,
ROUND(CAST(ABS((b25063_021cm/1.645)/CAST(NULLIF(b25063_021c,0) as numeric))*100 as numeric),1) AS b25063_021c_cv,
ROUND(CAST(ABS((b25063_021pm/1.645)/CAST(NULLIF(b25063_021p,0) as numeric))*100 as numeric),1) AS b25063_021p_cv,
ROUND(CAST(ABS((e1.b25063_022m/1.645)/CAST(NULLIF(e1.b25063_022e,0) as numeric))*100 as numeric),1) AS b25063_022e1_cv,
ROUND(CAST(ABS((e2.b25063_022m/1.645)/CAST(NULLIF(e2.b25063_022e,0) as numeric))*100 as numeric),1) AS b25063_022e2_cv,
ROUND(CAST(ABS((b25063_022cm/1.645)/CAST(NULLIF(b25063_022c,0) as numeric))*100 as numeric),1) AS b25063_022c_cv,
ROUND(CAST(ABS((b25063_022pm/1.645)/CAST(NULLIF(b25063_022p,0) as numeric))*100 as numeric),1) AS b25063_022p_cv,
ROUND(CAST(ABS((e1.b25063_023m/1.645)/CAST(NULLIF(e1.b25063_023e,0) as numeric))*100 as numeric),1) AS b25063_023e1_cv,
ROUND(CAST(ABS((e2.b25063_023m/1.645)/CAST(NULLIF(e2.b25063_023e,0) as numeric))*100 as numeric),1) AS b25063_023e2_cv,
ROUND(CAST(ABS((b25063_023cm/1.645)/CAST(NULLIF(b25063_023c,0) as numeric))*100 as numeric),1) AS b25063_023c_cv,
ROUND(CAST(ABS((b25063_023pm/1.645)/CAST(NULLIF(b25063_023p,0) as numeric))*100 as numeric),1) AS b25063_023p_cv,
ROUND(CAST(ABS((e1.b25063_024m/1.645)/CAST(NULLIF(e1.b25063_024e,0) as numeric))*100 as numeric),1) AS b25063_024e1_cv,
ROUND(CAST(ABS((e2.b25063_024m/1.645)/CAST(NULLIF(e2.b25063_024e,0) as numeric))*100 as numeric),1) AS b25063_024e2_cv,
ROUND(CAST(ABS((b25063_024cm/1.645)/CAST(NULLIF(b25063_024c,0) as numeric))*100 as numeric),1) AS b25063_024c_cv,
ROUND(CAST(ABS((b25063_024pm/1.645)/CAST(NULLIF(b25063_024p,0) as numeric))*100 as numeric),1) AS b25063_024p_cv
FROM acs_b25063_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25063 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25063_mod e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25064_cvs;
    CREATE TABLE acs_b25064_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25064_001m/1.645)/CAST(NULLIF(e1.b25064_001e,0) as numeric))*100 as numeric),1) AS b25064_001e1_cv,
ROUND(CAST(ABS((e2.b25064_001m/1.645)/CAST(NULLIF(e2.b25064_001e,0) as numeric))*100 as numeric),1) AS b25064_001e2_cv,
ROUND(CAST(ABS((b25064_001cm/1.645)/CAST(NULLIF(b25064_001c,0) as numeric))*100 as numeric),1) AS b25064_001c_cv,
ROUND(CAST(ABS((b25064_001pm/1.645)/CAST(NULLIF(b25064_001p,0) as numeric))*100 as numeric),1) AS b25064_001p_cv
FROM acs_b25064_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25064_mod e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25064 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25070_cvs;
    CREATE TABLE acs_b25070_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25070_001m/1.645)/CAST(NULLIF(e1.b25070_001e,0) as numeric))*100 as numeric),1) AS b25070_001e1_cv,
ROUND(CAST(ABS((e2.b25070_001m/1.645)/CAST(NULLIF(e2.b25070_001e,0) as numeric))*100 as numeric),1) AS b25070_001e2_cv,
ROUND(CAST(ABS((b25070_001cm/1.645)/CAST(NULLIF(b25070_001c,0) as numeric))*100 as numeric),1) AS b25070_001c_cv,
ROUND(CAST(ABS((b25070_001pm/1.645)/CAST(NULLIF(b25070_001p,0) as numeric))*100 as numeric),1) AS b25070_001p_cv,
ROUND(CAST(ABS((e1.b25070_002m/1.645)/CAST(NULLIF(e1.b25070_002e,0) as numeric))*100 as numeric),1) AS b25070_002e1_cv,
ROUND(CAST(ABS((e2.b25070_002m/1.645)/CAST(NULLIF(e2.b25070_002e,0) as numeric))*100 as numeric),1) AS b25070_002e2_cv,
ROUND(CAST(ABS((b25070_002cm/1.645)/CAST(NULLIF(b25070_002c,0) as numeric))*100 as numeric),1) AS b25070_002c_cv,
ROUND(CAST(ABS((b25070_002pm/1.645)/CAST(NULLIF(b25070_002p,0) as numeric))*100 as numeric),1) AS b25070_002p_cv,
ROUND(CAST(ABS((e1.b25070_003m/1.645)/CAST(NULLIF(e1.b25070_003e,0) as numeric))*100 as numeric),1) AS b25070_003e1_cv,
ROUND(CAST(ABS((e2.b25070_003m/1.645)/CAST(NULLIF(e2.b25070_003e,0) as numeric))*100 as numeric),1) AS b25070_003e2_cv,
ROUND(CAST(ABS((b25070_003cm/1.645)/CAST(NULLIF(b25070_003c,0) as numeric))*100 as numeric),1) AS b25070_003c_cv,
ROUND(CAST(ABS((b25070_003pm/1.645)/CAST(NULLIF(b25070_003p,0) as numeric))*100 as numeric),1) AS b25070_003p_cv,
ROUND(CAST(ABS((e1.b25070_004m/1.645)/CAST(NULLIF(e1.b25070_004e,0) as numeric))*100 as numeric),1) AS b25070_004e1_cv,
ROUND(CAST(ABS((e2.b25070_004m/1.645)/CAST(NULLIF(e2.b25070_004e,0) as numeric))*100 as numeric),1) AS b25070_004e2_cv,
ROUND(CAST(ABS((b25070_004cm/1.645)/CAST(NULLIF(b25070_004c,0) as numeric))*100 as numeric),1) AS b25070_004c_cv,
ROUND(CAST(ABS((b25070_004pm/1.645)/CAST(NULLIF(b25070_004p,0) as numeric))*100 as numeric),1) AS b25070_004p_cv,
ROUND(CAST(ABS((e1.b25070_005m/1.645)/CAST(NULLIF(e1.b25070_005e,0) as numeric))*100 as numeric),1) AS b25070_005e1_cv,
ROUND(CAST(ABS((e2.b25070_005m/1.645)/CAST(NULLIF(e2.b25070_005e,0) as numeric))*100 as numeric),1) AS b25070_005e2_cv,
ROUND(CAST(ABS((b25070_005cm/1.645)/CAST(NULLIF(b25070_005c,0) as numeric))*100 as numeric),1) AS b25070_005c_cv,
ROUND(CAST(ABS((b25070_005pm/1.645)/CAST(NULLIF(b25070_005p,0) as numeric))*100 as numeric),1) AS b25070_005p_cv,
ROUND(CAST(ABS((e1.b25070_006m/1.645)/CAST(NULLIF(e1.b25070_006e,0) as numeric))*100 as numeric),1) AS b25070_006e1_cv,
ROUND(CAST(ABS((e2.b25070_006m/1.645)/CAST(NULLIF(e2.b25070_006e,0) as numeric))*100 as numeric),1) AS b25070_006e2_cv,
ROUND(CAST(ABS((b25070_006cm/1.645)/CAST(NULLIF(b25070_006c,0) as numeric))*100 as numeric),1) AS b25070_006c_cv,
ROUND(CAST(ABS((b25070_006pm/1.645)/CAST(NULLIF(b25070_006p,0) as numeric))*100 as numeric),1) AS b25070_006p_cv,
ROUND(CAST(ABS((e1.b25070_007m/1.645)/CAST(NULLIF(e1.b25070_007e,0) as numeric))*100 as numeric),1) AS b25070_007e1_cv,
ROUND(CAST(ABS((e2.b25070_007m/1.645)/CAST(NULLIF(e2.b25070_007e,0) as numeric))*100 as numeric),1) AS b25070_007e2_cv,
ROUND(CAST(ABS((b25070_007cm/1.645)/CAST(NULLIF(b25070_007c,0) as numeric))*100 as numeric),1) AS b25070_007c_cv,
ROUND(CAST(ABS((b25070_007pm/1.645)/CAST(NULLIF(b25070_007p,0) as numeric))*100 as numeric),1) AS b25070_007p_cv,
ROUND(CAST(ABS((e1.b25070_008m/1.645)/CAST(NULLIF(e1.b25070_008e,0) as numeric))*100 as numeric),1) AS b25070_008e1_cv,
ROUND(CAST(ABS((e2.b25070_008m/1.645)/CAST(NULLIF(e2.b25070_008e,0) as numeric))*100 as numeric),1) AS b25070_008e2_cv,
ROUND(CAST(ABS((b25070_008cm/1.645)/CAST(NULLIF(b25070_008c,0) as numeric))*100 as numeric),1) AS b25070_008c_cv,
ROUND(CAST(ABS((b25070_008pm/1.645)/CAST(NULLIF(b25070_008p,0) as numeric))*100 as numeric),1) AS b25070_008p_cv,
ROUND(CAST(ABS((e1.b25070_009m/1.645)/CAST(NULLIF(e1.b25070_009e,0) as numeric))*100 as numeric),1) AS b25070_009e1_cv,
ROUND(CAST(ABS((e2.b25070_009m/1.645)/CAST(NULLIF(e2.b25070_009e,0) as numeric))*100 as numeric),1) AS b25070_009e2_cv,
ROUND(CAST(ABS((b25070_009cm/1.645)/CAST(NULLIF(b25070_009c,0) as numeric))*100 as numeric),1) AS b25070_009c_cv,
ROUND(CAST(ABS((b25070_009pm/1.645)/CAST(NULLIF(b25070_009p,0) as numeric))*100 as numeric),1) AS b25070_009p_cv,
ROUND(CAST(ABS((e1.b25070_010m/1.645)/CAST(NULLIF(e1.b25070_010e,0) as numeric))*100 as numeric),1) AS b25070_010e1_cv,
ROUND(CAST(ABS((e2.b25070_010m/1.645)/CAST(NULLIF(e2.b25070_010e,0) as numeric))*100 as numeric),1) AS b25070_010e2_cv,
ROUND(CAST(ABS((b25070_010cm/1.645)/CAST(NULLIF(b25070_010c,0) as numeric))*100 as numeric),1) AS b25070_010c_cv,
ROUND(CAST(ABS((b25070_010pm/1.645)/CAST(NULLIF(b25070_010p,0) as numeric))*100 as numeric),1) AS b25070_010p_cv,
ROUND(CAST(ABS((e1.b25070_011m/1.645)/CAST(NULLIF(e1.b25070_011e,0) as numeric))*100 as numeric),1) AS b25070_011e1_cv,
ROUND(CAST(ABS((e2.b25070_011m/1.645)/CAST(NULLIF(e2.b25070_011e,0) as numeric))*100 as numeric),1) AS b25070_011e2_cv,
ROUND(CAST(ABS((b25070_011cm/1.645)/CAST(NULLIF(b25070_011c,0) as numeric))*100 as numeric),1) AS b25070_011c_cv,
ROUND(CAST(ABS((b25070_011pm/1.645)/CAST(NULLIF(b25070_011p,0) as numeric))*100 as numeric),1) AS b25070_011p_cv
FROM acs_b25070_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25070 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25070 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b25077_cvs;
    CREATE TABLE acs_b25077_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b25077_001m/1.645)/CAST(NULLIF(e1.b25077_001e,0) as numeric))*100 as numeric),1) AS b25077_001e1_cv,
ROUND(CAST(ABS((e2.b25077_001m/1.645)/CAST(NULLIF(e2.b25077_001e,0) as numeric))*100 as numeric),1) AS b25077_001e2_cv,
ROUND(CAST(ABS((b25077_001cm/1.645)/CAST(NULLIF(b25077_001c,0) as numeric))*100 as numeric),1) AS b25077_001c_cv,
ROUND(CAST(ABS((b25077_001pm/1.645)/CAST(NULLIF(b25077_001p,0) as numeric))*100 as numeric),1) AS b25077_001p_cv
FROM acs_b25077_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b25077_mod e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b25077 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

DROP TABLE IF EXISTS acs_b26001_cvs;
    CREATE TABLE acs_b26001_cvs AS
SELECT c.geoid,
ROUND(CAST(ABS((e1.b26001_001m/1.645)/CAST(NULLIF(e1.b26001_001e,0) as numeric))*100 as numeric),1) AS b26001_001e1_cv,
ROUND(CAST(ABS((e2.b26001_001m/1.645)/CAST(NULLIF(e2.b26001_001e,0) as numeric))*100 as numeric),1) AS b26001_001e2_cv,
ROUND(CAST(ABS((b26001_001cm/1.645)/CAST(NULLIF(b26001_001c,0) as numeric))*100 as numeric),1) AS b26001_001c_cv,
ROUND(CAST(ABS((b26001_001pm/1.645)/CAST(NULLIF(b26001_001p,0) as numeric))*100 as numeric),1) AS b26001_001p_cv
FROM acs_b26001_change c
    INNER JOIN acs_geos_join j
    ON c.geoid=j.geo2019
    INNER JOIN acs2014_b26001 e1
    ON j.geo2014=e1.geoid
    INNER JOIN acs2019_b26001 e2
    ON j.geo2019=e2.geoid
    ORDER BY c.geoid;

ALTER TABLE acs_b01001_cvs ADD CONSTRAINT pkey_acs_b01001_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b01002_cvs ADD CONSTRAINT pkey_acs_b01002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b02001_cvs ADD CONSTRAINT pkey_acs_b02001_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b03002_cvs ADD CONSTRAINT pkey_acs_b03002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b05002_cvs ADD CONSTRAINT pkey_acs_b05002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b07204_cvs ADD CONSTRAINT pkey_acs_b07204_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b08006_cvs ADD CONSTRAINT pkey_acs_b08006_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b09001_cvs ADD CONSTRAINT pkey_acs_b09001_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b09020_cvs ADD CONSTRAINT pkey_acs_b09020_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b11001_cvs ADD CONSTRAINT pkey_acs_b11001_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b13002_cvs ADD CONSTRAINT pkey_acs_b13002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b14001_cvs ADD CONSTRAINT pkey_acs_b14001_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b15002_cvs ADD CONSTRAINT pkey_acs_b15002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_c17002_cvs ADD CONSTRAINT pkey_acs_c17002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b19001_cvs ADD CONSTRAINT pkey_acs_b19001_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b19013_cvs ADD CONSTRAINT pkey_acs_b19013_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b19083_cvs ADD CONSTRAINT pkey_acs_b19083_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b23025_cvs ADD CONSTRAINT pkey_acs_b23025_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_c24030_cvs ADD CONSTRAINT pkey_acs_c24030_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25002_cvs ADD CONSTRAINT pkey_acs_b25002_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25003_cvs ADD CONSTRAINT pkey_acs_b25003_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25010_cvs ADD CONSTRAINT pkey_acs_b25010_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25063_cvs ADD CONSTRAINT pkey_acs_b25063_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25064_cvs ADD CONSTRAINT pkey_acs_b25064_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25070_cvs ADD CONSTRAINT pkey_acs_b25070_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b25077_cvs ADD CONSTRAINT pkey_acs_b25077_cvs PRIMARY KEY (geoid);

ALTER TABLE acs_b26001_cvs ADD CONSTRAINT pkey_acs_b26001_cvs PRIMARY KEY (geoid);

END;
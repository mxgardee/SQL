SELECT geo_name,
state_us_abbreviation AS "st",
p0010001 AS "Total",
p0010003 + p0010004 + p0010005 + p0010006 + p0010007
+ p0010008 + p0010009 AS "All Races",
(p0010003 + p0010004 + p0010005 + p0010006 + p0010007
+ p0010008 + p0010009) - p0010001 AS "Difference"
FROM us_counties_2010
ORDER BY "Difference" DESC;
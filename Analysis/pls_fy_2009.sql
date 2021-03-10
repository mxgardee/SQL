SELECT count(*)
FROM pls_fy2014_pupld14a;

SELECT count(*)
FROM pls_fy2009_pupld09a;
SELECT count(salaries)
FROM pls_fy2014_pupld14a;

SELECT count(libname)
FROM pls_fy2014_pupld14a;
SELECT count(DISTINCT libname)
FROM pls_fy2014_pupld14a;

SELECT max(visits), min(visits)
FROM pls_fy2014_pupld14a;

SELECT stabr
FROM pls_fy2014_pupld14a
GROUP BY stabr
ORDER BY stabr;

SELECT stabr, count(*)
FROM pls_fy2014_pupld14a
GROUP BY stabr
ORDER BY count(*) DESC;




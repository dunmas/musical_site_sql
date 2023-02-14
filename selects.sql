SELECT name, cr_year FROM albums
WHERE cr_year = 2018;

SELECT name, MAKE_INTERVAL(secs => duration) FROM tracks 
ORDER BY duration DESC
LIMIT 1

SELECT name FROM tracks
WHERE duration >= 210

SELECT name FROM compilations
WHERE comp_year BETWEEN 2018 AND 2020

SELECT alias FROM performers
WHERE alias NOT LIKE '% %'

SELECT name FROM tracks
WHERE name LIKE '% my %' OR name LIKE 'my %' OR name LIKE '% my'

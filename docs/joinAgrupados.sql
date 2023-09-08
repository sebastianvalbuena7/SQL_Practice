SELECT DISTINCT a.language, c.name
FROM countrylanguage a
INNER JOIN country b
ON a.countrycode = b.code
INNER JOIN continent c
ON b.continent = c.code
WHERE a.isofficial = true;
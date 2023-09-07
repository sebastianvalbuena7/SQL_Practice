SELECT * FROM continent WHERE name like '%America%'
union
SELECT * FROM continent where code in (3, 5)
order by name asc;

-- This is volatil
SELECT a.name as country, b.name as continent
FROM country a, continent b
WHERE a.continent = b.code
order by b.name asc;

-- Use inner join, it's better
SELECT a.name as country, b.name FROM country a
INNER JOIN continent b
on a.continent = b.code;

-- Use full outer join
SELECT a.name as country,
       a.continent as continentCode,
       b.name as continentName
FROM country a
FULL OUTER JOIN continent b
ON a.continent = b.code;


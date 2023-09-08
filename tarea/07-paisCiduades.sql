-- Task 2
SELECT count(*) as total_ciudades,
       b.name as nombre_pais
FROM city a
INNER JOIN country b
ON a.countrycode = b.code
group by b.name
order by count(*) desc
limit 1;
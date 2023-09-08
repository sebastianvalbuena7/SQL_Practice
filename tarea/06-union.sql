SELECT count(*) as Total, b.name
FROM country a
INNER JOIN continent b
ON a.continent = b.code
WHERE b.name not like '%America%'
GROUP BY b.name
union
SELECT count(8) as total, 'America'
from country a
INNER JOIN continent b
ON a.continent = b.code
WHERE b.name like '%America%'
ORDER by Total asc;;
ALTER TABLE country
    ADD primary key (code);

DELETE FROM country WHERE code2 = 'NA';

SELECT * FROM country;

-- Check for the value surfacearea not permit values minus to 0
ALTER TABLE country ADD check (
    surfacearea >= 0
    );

ALTER TABLE country ADD CHECK (
    (continent = 'Asia') or
    (continent = 'South America') or
    (continent = 'North America') or
    (continent = 'Oceania') or
    (continent = 'Antarctica') or
    (continent = 'Africa') or
    (continent = 'Europe')
);

-- Delete check as constraint for add a new check for example
ALTER TABLE country DROP CONSTRAINT country_continent_check1;

SELECT DISTINCT continent FROM country;

SELECT * FROM country WHERE code = 'CRI';

UPDATE country SET continent = 'Central America'
WHERE code = 'CRI';
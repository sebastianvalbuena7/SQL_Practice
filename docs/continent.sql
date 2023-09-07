SELECT distinct continent FROM country
order by continent asc;

CREATE TABLE continent (
    code serial NOT NULL,
    name text NOT NULL
);

ALTER TABLE continent ADD PRIMARY KEY (code);

INSERT INTO continent (name) SELECT DISTINCT continent from country
order by continent asc;

SELECT * FROM continent;

insert into country_bk
SELECT * FROM country;

SELECT
    a.name, a.continent,
    (SELECT b.code from continent b where b.name = a.continent)
FROM country a;

SELECT * FROM country;

UPDATE country a
SET continent = (
SELECT b.code from continent b where b.name = a.continent);

ALTER TABLE country
ALTER COLUMN continent TYPE int4
USING continent::integer;
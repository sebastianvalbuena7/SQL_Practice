-- Index for unique index for more speed
CREATE UNIQUE INDEX "unique_country_name" on country (
    name
);

-- Index for index for more speed (group)
CREATE INDEX "country_continent" on country (
    continent
);


SELECT * FROM country where continent = 'Asia';
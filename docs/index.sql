-- Index for unique index for more speed
CREATE UNIQUE INDEX "unique_country_name" on country (
    name
);

-- Index for index for more speed (group)
CREATE INDEX "country_continent" on country (
    continent
);


SELECT * FROM country where continent = 'Asia';

-- Create unique index
CREATE unique index "unique_name_countrycode_district" on city(
    name, countrycode, district
);

CREATE INDEX "city_district" on city(
    district
);
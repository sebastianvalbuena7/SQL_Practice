ALTER TABLE city
    ADD CONSTRAINT fk_country_code
    FOREIGN KEY (countrycode)
    REFERENCES country(code);

INSERT INTO country
		values('AFG',
		'Afghanistan', 'Asia',
		'Southern Asia',
		652860,
		1919,
		40000000,
		62,
		69000000,
		NULL,
		'Afghanistan',
		'Totalitarian',
		NULL,
		NULL, 'AF');

ALTER TABLE countrylanguage
    ADD CONSTRAINT fk_country_code
    FOREIGN KEY (countrycode)
    REFERENCES country(code);

SELECT * FROM country WHERE code = 'NAM';

INSERT INTO country
		values('NAM',
		'Namibia',
		'Asia',
		'Southern Asia',
		652860,
		1919,
		40000000,
		62,
		70000000,
		NULL,
		'Namibia',
		'Totalitarian',
		NULL,
		NULL,
		'NA');

-- ON DELETE CASCADE DELETE BOTH REGISTER -- WARNING BUT ITS UTIL

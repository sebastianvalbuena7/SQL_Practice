-- Uppercase return
SELECT upper(name) FROM users;

-- Lowercase return
SELECT lower(name) as upper_name, name FROM users;

-- Length return in string
SELECT length(name) as length_name, name FROM users;

-- Concat return
SELECT concat(id,'-',name) FROM users;

-- Use substring and position
SELECT
    name,
    substring(name, 0, position(' ' in name))
FROM users;

-- Task with functions
-- Use substring and position
SELECT
    name,
    substring(name, 0, position(' ' in name)) as first_name,
    substring(name, position(' ' in name)) as last_name
FROM users;

-- Using trim
SELECT
    name,
    substring(name, 0, position(' ' in name)) as first_name,
    trim(substring(name, position(' ' in name))) as last_name
FROM users;
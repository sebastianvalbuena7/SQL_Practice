-- Create Tablas en SQL
-- CREATE TABLE users
-- (
--     name VARCHAR(10) UNIQUE
-- );

-- Insert in tables in SQL
-- INSERT INTO users
--     (name)
-- VALUES
--     ('Natalia');

-- Update registers in SQL
UPDATE users
SET
    name = 'Alita'
WHERE name = 'Melissa';

-- Select all of the table
-- SELECT * FROM users;

-- Limit the select
-- SELECT * FROM users LIMIT 1;

-- Jump the select
-- SELECT * FROM users OFFSET 2;

SELECT * FROM users WHERE name = 'Alita';


-- Use like with character %

-- Using for last character with a
SELECT * FROM users WHERE name LIKE '%a';

-- Using for first character with A
SELECT * FROM users WHERE name LIKE 'A%';

-- Using knowing the length of characters of a column
SELECT * FROM users WHERE name LIKE '_lita';


-- Delete
DELETE FROM users WHERE name LIKE '%a';

-- DROP - Delete Table except the constrains with other tables
-- DROP TABLE users;

-- TRUNCATE - Delete all registers of the table
-- TRUNCATE TABLE users;
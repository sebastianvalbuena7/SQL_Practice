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

-- Using AND
SELECT first_name, last_name, followers FROM users
    WHERE users.followers > 4600 AND users.followers < 4700;

-- Using ASC - DESC with group
SELECT first_name, last_name, followers FROM users
    WHERE users.followers > 4600 AND users.followers < 4700
    ORDER BY followers ASC;

-- Using count
SELECT count(*) FROM users;

-- Using round and avg (average)
SELECT
    count(*) AS total_users,
    min(followers) AS min_followers,
    max(followers) AS max_followers,
    round(avg(followers))
FROM users;

-- Using OR
SELECT first_name, last_name, followers
FROM users
WHERE followers = 4 OR followers = 4999;

-- Using GROUP BY
SELECT COUNT(*), followers FROM users
WHERE followers = 4 or followers = 4999
GROUP BY followers

-- Using having for conditions
SELECT
    count(*),
    country
FROM users
group by country
HAVING count(*) > 8
order by count(*) DESC;

SELECT
    count(*),
    country
FROM users
group by country
HAVING count(*) between 2 AND 3
order by count(*) DESC;

-- Tasks
SELECT
    count(substring(email, position('@' in email) + 1)) AS count_email,
    substring(email, position('@' in email) + 1) AS domain
FROM users
group by substring(email, position('@' in email) + 1)
having count(*) > 2;
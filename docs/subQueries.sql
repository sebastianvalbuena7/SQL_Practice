SELECT count_email FROM (
    SELECT
    count(substring(email, position('@' in email) + 1)) AS count_email,
    substring(email, position('@' in email) + 1) AS domain
FROM users
group by substring(email, position('@' in email) + 1)
having count(*) > 2
) as email_domains;
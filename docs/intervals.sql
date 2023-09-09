SELECT
    max(hire_date),
    max(hire_date) + INTERVAL '1 day' as moreDay,
    max(hire_date) + INTERVAL '1 month' as moreMonth
FROM employees;
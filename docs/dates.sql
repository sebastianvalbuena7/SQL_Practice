SELECT now(),
       CURRENT_DATE,
       CURRENT_TIME,
       date_part('minutes', now()) as minutes,
       date_part('hours', now()) as hours;

SELECT * FROM employees
WHERE hire_date > '1998-02-05'
order by hire_date asc;

SELECT max(hire_date) FROM employees;
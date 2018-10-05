USE employees;

SELECT DISTINCT last_name FROM employees order by last_name DESC limit 10;

SELECT first_name, last_name
FROM employees
WHERE hire_date
BETWEEN cast('1990-01-01' as date)
AND cast('1999-12-31' as date)
AND birth_date
LIKE '%-12-25'
ORDER BY birth_date ASC, last_name ASC limit 5;

SELECT first_name, last_name
FROM employees
WHERE hire_date
BETWEEN cast('1990-01-01' as date)
AND cast('1999-12-31' as date)
AND birth_date
LIKE '%-12-25'
ORDER BY birth_date ASC, last_name ASC limit 5;

